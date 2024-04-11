# Week 1

# Day 1

## Qual das seguintes características é comum às funções de hash mencionadas no texto?

- [ ] Lentas de calcular
- [ ] Praticáveis de inverter
- [x] Suscetíveis a colisões
- [ ] Fixo em tamanho de entrada

## Qual método é usado para gerar um endereço Ethereum a partir de uma semente (seed)?

- [ ] SHA-256
- [x] KECCAK-256
- [ ] Mnemônico
- [ ] Base58

## Como a validação no Proof of Stake (PoS) é realizada?

- [ ] Encontrando um nonce que satisfaça um requisito de dificuldade
- [x] Escolhendo aleatoriamente um validador com base em sua participação na rede
- [ ] Resolvendo quebra-cabeças criptográficos
- [ ] Executando contratos inteligentes para verificar transações

# Day 2

## Qual componente é responsável pela memória de curto prazo em um computador?

- [ ] SSD
- [ ] HD
- [x] RAM
- [ ] CPU

## Qual termo descreve a arquitetura de rede em que um servidor fornece recursos ou serviços a clientes conectados?

- [x] SSD/HD
- [ ] P2P
- [ ] RAM
- [ ] CPU

## Qual ferramenta é frequentemente usada para gerenciar pacotes e dependências em projetos JavaScript?

- [x] NPM
- [ ] Node.js
- [ ] package.json
- [ ] Frameworks

# Day 3

## Pergunta 1: Qual das seguintes características é uma vantagem do algoritmo SHA256 em relação à criptografia de RIPEMD-160?

- [ ] Pro: Tamanho de saída menor
- [ ] Contra: Menor resistência a colisões
- [x] Pro: Alta segurança, resistente a colisões e pré-imagens
- [ ] Contra: Maior eficiência de implementação

## Pergunta 2: Qual é uma desvantagem comum compartilhada pelo Keccak256 (SHA-3_256) e pelo BLAKE2b?

- [ ] Pro: Resistente contra ataques de criptografia quântica
- [ ] Contra: Baixa segurança
- [x] Contra: Maior complexidade de implementação
- [ ] Pro: Amplamente reconhecido e adotado como padrão

## Pergunta 3: Qual é uma das vantagens do algoritmo EdDSA (curve25519) em relação ao ECDSA (secp256k1)?

- [ ] Pro: Menor velocidade de execução
- [ ] Contra: Menos resistência a ataques de canal lateral
- [ ] Pro: Dependência da qualidade da geração de números aleatórios
- [x] Pro: Alta performance e segurança, com resistência a uma gama de ataques criptográficos

# Day 4

## Pergunta 1: Qual das seguintes ferramentas para interação com Blockchain é destacada por sua leveza, modularidade e suporte para promessas e async/await nativamente?

- [ ] Web3.js
- [x] Ethers.js
- [ ] Viem

## Pergunta 2: Qual é uma das desvantagens do uso da ferramenta Truffle para o desenvolvimento de smart contracts?

- [ ] Suporte para testes automatizados e migrações
- [ ] Rápido e eficiente para testes e compilações
- [ ] Modular e extensível
- [x] Pode ser pesado e lento para alguns projetos

## Pergunta 3: Qual ferramenta é conhecida por oferecer uma solução completa para autenticação e gestão de carteira (wallet), além de ser fácil de instalar e usar, com boa documentação?

- [x] RainbowKit
- [ ] Wagmi
- [ ] Brownie

# Day 5

## Qual é o objetivo principal do contrato "Flipper" apresentado?

- [ ] Armazenar valores inteiros.
- [x] Alternar entre os valores `true` e `false`.
- [ ] Realizar cálculos matemáticos complexos.
- [ ] Criar uma lista de transações.

## Qual é a função responsável por retornar o valor atual armazenado no contrato "Flipper"?

- [ ] `setValue()`
- [ ] `toggleValue()`
- [x] `getValue()`
- [ ] `updateValue()`

## Qual é o estado inicial do valor armazenado no contrato "Flipper"?

- [ ] `null`
- [ ] `0`
- [x] `true`
- [ ] `false`

# Week 2

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

# Week 3

# Day 1

## Qual a ideia básica para fazer um prompt do chatGPT

- [x] Contexto do chat, Contexto da tarefa, contexto da resposta, exemplo
- [ ] Explicar quem é vc, Explicar onde vc trabalha
- [ ] Apenas colocar o código e o erro
- [ ] Colocar o código e explicar o que quer

# Day 2

## Qual desses recursos o github suporta ?

- [ ] Gerenciamento de código e pagamentos com pix
- [x] Repositório de código, Milestones, Issues e PR
- [ ] Gerencimento de equipes de hackathon
- [ ] Gerenciamento de Projetos

# Day 3

## Para que vc deve/pode usar o template do hackathon?

- [ ] Estudar
- [ ] Facilitar o desenvolvimento
- [ ] Cópiar código
- [x] Todas as alternativas

# Day 4

## Qual biblioteca é util para fazer um botão de `Connect Wallet` massa?

- [x] Rainbow Kit
- [ ] Ethersjs
- [ ] web3js
- [ ] Foundry
- [ ] Hardhat

# Day 5

## Qual o jeito mais simples de apresentar seu projeto (Pitch)?

- [x] Usar o Loom, fazer um vídeo menor que 5min mostrando o projeto e colocar o link do vídeo no README do projeto
- [ ] Usar um Iphone 15 Pro Max, fazer um vídeo e postar no Youtube
- [ ] Usar um celular, gravar onde vc mora e subir esse vídeo na Twitch
- [ ] Fazer um video explicando o projeto sem mostar o projeto.
