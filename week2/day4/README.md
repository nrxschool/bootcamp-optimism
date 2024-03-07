## Segurança pra que?

![](<images/Pasted image 20240229143239.png>)
![](<images/Pasted image 20240229034016.png>)
![](<images/Pasted image 20240229033933.png>)

- Expressão "Code is Law"
- TVL = Total Value Locked = Valor Total Travado
- Bug existem

## Vulnerabilidades

3 tipos

- High/Critical - Critico
  - Qualquer pessoa pode executar o ataque e tem roubo de fundos.
- Medium - Média
  - Poucas pessoas podem executar o ataque, pode ter roubo, lock de fundos, ganho de acesso entre outros.
- Low/Informational - Baixa
  - Não é H/M, boas práticas e otimizações de gas por exemplo.

## Vetores de Ataque (Attack Vectors)

![](<images/Pasted image 20240229143327.png>)
![](<images/Pasted image 20240222005410.png>)

- Flash Loans
- Reward Manipulation
- Stolen Private Keys
- Access Control
- Replay Attacks
- Function Parameter Validation
- Misconfiguration
- Governance
- DelegateCalls
- Precision Rounding Errors
- Gas Griefing Attack
- Rug Pull
- Logic Error

- Reentrancy
- Front Running
- Access Control
- DOS (https://solodit.xyz/issues/m-04-you-can-deposit-really-small-amount-for-other-users-to-dos-them-code4rena-centrifuge-centrifuge-git)

```js
{
    function participate() public{
        require(balance[msg.sender]==0,'already won one time');
        require(participants[msg.sender] == false, 'already participating');

        participants[msg.sender] = true;

        token.transferFrom(msg.sender,address(this), FEE);

        balance[msg.sender] = FEE:

    }
}

```

- Overflow (https://twitter.com/FelipeNovaesFR1/status/1735714011658727795)

## Boas Praticas

- CEI = Check, Effects, Interaction = Checar, Efeitos, Interação.
- Liste os atores que vão interagir com suas funções externas. Dev/Test/Revisão Sec.
- Use bibliotecas da OpenZeppelin https://docs.openzeppelin.com/contracts/5.x/
- Ou Vectorized https://github.com/Vectorized/solady
- Ser o máximo descentralizado e transparente possivel. (Owners serem Multisig, diminui a chance de Rug Pull)
- Escreva testes!
- Use um analisador estatico de vuln, como Slither e Echidna/Foundry/Medusa pra fuzzing test

```bash
docker run -it -v $(pwd):/share trailofbits/eth-security-toolbox
```

- https://solodit.xyz/ onde ver vuln de outros projetos

## Exemplos

### 1 - Nome de variaveis enganam.

```js
function _update(address from,
				  address to,
				  uint256 value,
				  bool mint) internal virtual {

uint256 fromBalance = _balances[from];
uint256 toBalance = _balances[to];

[.. snip ..]

_balances[from] = fromBalance - value;
_balances[to] = toBalance + value; // VULN

}
```

2 - Sempre leia documentação da função que você está usando

<!-- ![](<images/Pasted image 20240229034736.png>) -->

```js
contract Sign {
   function get_hash_for_signature(string name, string doc) external returns(bytes32) {
       return keccak256(abi.encodePacked(name, doc));
   }
}
```

https://docs.soliditylang.org/en/v0.8.23/abi-spec.html#non-standard-packed-mode

### 3 - Os Atores que vão interagir com seu contrato.

Qual o problema dessa função?

```js
function burn(uint256 amount, address from) public {
	_burn(amount, from);
}
```

HospoWise hack.

## Referencias

Newsletter com notificas de sec
https://newsletter.blockthreat.io/p/blockthreat-week-7-2024

Lista de Hacks
https://de.fi/blog/de-fi-rekt-report-crypto-losses-reach-1-95b-in-2023
https://updraft.cyfrin.io/courses/security/audit/attacks?lesson_format=video
https://www.chainalysis.com/blog/2022-defi-hacks/

Approve(0)
https://docs.google.com/document/d/1YLPtQxZu1UAvO9cZ1O2RPXBbT0mooh4DYKjA_jp-RLM/edit#heading=h.m9fhqynw2xvt
