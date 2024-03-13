# Day 1

## Qual é a função responsável por incrementar o valor armazenado no contrato "Counter"?

- [ ] `setNumber()`
- [x] `increment()`
- [ ] `getNumber()`
- [ ] `setUp()`

## Qual é a finalidade da função `test_Increment()` no contrato "CounterTest"?

- [ ] Definir o valor inicial do contador.
- [ ] Verificar se o contador foi inicializado corretamente.
- [x] Testar se a função de incremento incrementa corretamente o valor do contador.
- [ ] Definir o número para um valor específico.

## Como você chamaria a função `testFuzz_SetNumber(uint8 x)` para definir o valor do contador como 42?

- [ ] `testFuzz_SetNumber(42)`
- [ ] `testFuzz_SetNumber(uint8 x)`
- [x] `testFuzz_SetNumber(42)()`
- [ ] `testFuzz_SetNumber(42) uint8`

# Day 2

## Qual é o objetivo principal do contrato "Token" apresentado?

- [ ] Implementar uma calculadora.
- [x] Criar um token com funcionalidades de transferência e aprovação.
- [ ] Gerenciar uma lista de contatos.
- [ ] Realizar operações matemáticas complexas.

## Qual é a finalidade da função `approve(address _spender, uint256 _value)` no contrato "Token"?

- [ ] Transferir tokens entre dois endereços.
- [x] Aprovar que um endereço específico possa gastar uma quantidade específica de tokens em nome do proprietário.
- [ ] Consultar o saldo de tokens de um endereço.
- [ ] Atualizar o nome e símbolo do token.

## Qual evento é emitido quando ocorre uma transferência bem-sucedida de tokens no contrato "Token"?

- [ ] `Approval`
- [ ] `balanceOf`
- [x] `Transfer`
- [ ] `transferFrom`

# Day 3

## Qual é a finalidade do contrato "ERC721" apresentado?

- [ ] Criar um token fungível.
- [ ] Implementar um sistema de votação descentralizado.
- [x] Criar um padrão para tokens não fungíveis (NFTs).
- [ ] Gerenciar uma lista de contatos.

## Qual é a função que permite verificar o proprietário de um token não fungível (NFT) com base em seu ID?

- [ ] `balanceOf(address owner)`
- [ ] `setApprovalForAll(address operator, bool approved)`
- [x] `ownerOf(uint256 tokenId)`
- [ ] `approve(address to, uint256 tokenId)`

## O que representa o parâmetro `tokenId` na função `ownerOf(uint256 tokenId)` no contrato "ERC721"?

- [ ] O endereço do proprietário do token.
- [ ] O saldo do proprietário.
- [x] O ID do token não fungível.
- [ ] O endereço do operador.

# Day 4

## Qual das seguintes opções descreve um vetor de ataque de segurança em contratos inteligentes?

- [ ] Aumento de Liquidez
- [ ] Atualização de Software
- [ ] Melhorias de Eficiência
- [x] Estouro de Dados

## O que CEI significa em relação às boas práticas de segurança de contratos inteligentes?

- [ ] Compra, Estoque, Inspeção
- [ ] Cheque, Efeito, Interaja
- [ ] Comida, Energia, Interpretação
- [x] Checar, Efeitos, Interação

## Qual das seguintes opções não é uma recomendação para garantir a segurança de contratos inteligentes?

- [ ] Use bibliotecas de contratos inteligentes confiáveis
- [ ] Mantenha os proprietários do contrato como únicos signatários
- [ ] Escreva testes para cobrir todas as funcionalidades do contrato
- [x] Use uma linguagem de programação não segura para contratos inteligentes

# Day 5

## Qual camada da blockchain é responsável pela implementação de aplicativos descentralizados como DeFi, Tokens e NFTs?

- [ ] Layer 0
- [ ] Layer 1
- [x] Layer 2
- [ ] Layer 3

## O que é uma característica dos L2 Rollups, como o Optimism?

- [ ] Implementa contratos inteligentes usando linguagens de programação de alto nível
- [ ] Fornece um framework para desenvolvimento de aplicativos descentralizados
- [x] Usa rollups para otimizar a execução de contratos inteligentes na camada 1
- [ ] Foca na implementação de blockchains personalizadas e independentes

## Qual é o propósito do script `Airdrop.s.sol` mencionado na aula?

- [ ] Para gerar endereços de carteira aleatórios
- [x] Para distribuir tokens para uma lista específica de endereços
- [ ] Para realizar uma troca descentralizada de tokens
- [ ] Para criar um contrato de empréstimo entre pares (peer-to-peer)
