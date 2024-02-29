# Criptografia

# Hash Functions

## RIPEMD-160

- **Pro**: Bom equilíbrio entre segurança e tamanho de saída, ideal para endereços de carteira de criptomoedas.
- **Contra**: Menos seguro que algoritmos de hash mais recentes e de maior tamanho, como o SHA-256.

## SHA256

- **Pro**: Alta segurança, resistente a colisões e pré-imagens, sendo fundamental para a segurança de blockchain e Bitcoin.
- **Contra**: Saídas relativamente grandes e potencialmente mais lento que algoritmos mais novos e eficientes.

## Keccak256 (SHA-3_256)

- **Pro**: Resistente contra ataques de criptografia quântica, oferecendo segurança em um contexto pós-quântico.
- **Contra**: Maior complexidade de implementação devido à sua estrutura única e novidade.

## BLAKE2b

- **Pro**: Superior em velocidade e eficiência comparado ao SHA-256, ideal para aplicações que necessitam de alta performance.
- **Contra**: Não tão amplamente reconhecido ou adotado como padrão quanto o SHA-256, limitando seu uso em alguns contextos.

## SHAKE128 (Variante do SHA-3 com saída extensível)

- **Pro**: Flexibilidade no tamanho da saída permite ajustes conforme necessidade de segurança, tornando-o versátil.
- **Contra**: A saída flexível pode complicar a interoperabilidade e padronização em sistemas que esperam um tamanho de hash fixo.

## Criptografia Assimétrica

🔏 Curvas Elípticas:

## ECDSA (secp256k1)

- **Pro**: Amplamente adotado e testado, sendo a base da segurança para o Bitcoin, oferecendo um alto nível de confiança e segurança comprovada.
- **Contra**: Vulnerável a ataques de canal lateral se não implementado corretamente, além de depender da qualidade da geração de números aleatórios para a segurança das chaves.

## EdDSA (curve25519)

- **Pro**: Alta performance e segurança, com resistência a uma gama de ataques criptográficos, incluindo ataques de canal lateral. Ideal para sistemas que requerem assinaturas digitais rápidas e seguras.
- **Contra**: Menos onipresente em termos de adoção quando comparado ao ECDSA, o que pode limitar a interoperabilidade com sistemas mais antigos ou estabelecidos.

## Schnorr (ristretto25519)

- **Pro**: Permite a agregação de assinaturas, o que pode melhorar significativamente a privacidade e a eficiência em transações blockchain, além de simplificar a construção de protocolos multiparte.
- **Contra**: Embora sua adoção esteja crescendo, especialmente com a incorporação no Bitcoin via Taproot, ainda é relativamente novo comparado ao ECDSA, o que pode apresentar desafios iniciais de interoperabilidade e adoção.

## ZKP (Zero-Knowledge Proofs)


## Zk-SNARKs

- **Pro**: Permite a verificação de transações ou afirmações complexas de forma privada e eficiente, sem revelar nenhuma informação sobre a própria transação, essencial para aplicações que demandam privacidade absoluta.
- **Contra**: Requer uma "cerimônia de confiança" para a geração de parâmetros criptográficos iniciais, o que pode introduzir riscos de segurança se os parâmetros não forem gerados de maneira segura e transparente.

## ZK-STARKs

- **Pro**: Oferece todas as vantagens dos Zk-SNARKs, mas sem a necessidade de uma cerimônia de confiança, além de ser resistente a ataques de computadores quânticos, tornando-os mais seguros e futuramente compatíveis.
- **Contra**: As provas geradas são significativamente maiores do que as dos Zk-SNARKs, o que pode impactar a eficiência em termos de armazenamento e transmissão de dados.

## PLONK

- **Pro**: Simplifica a geração de provas zero-knowledge, permitindo a reutilização de um conjunto comum de parâmetros para múltiplas provas, o que melhora a eficiência e acessibilidade das ZKPs.
- **Contra**: Embora mais eficiente e flexível, a complexidade técnica e o entendimento necessário para implementar e otimizar PLONK podem ser barreiras para alguns desenvolvedores e aplicações.

## BulletProofs

- **Pro**: Não requer uma cerimônia de configuração confiável e é mais eficiente em termos de tamanho de prova para certas aplicações, comparado aos Zk-SNARKs, o que é vantajoso para melhorar a privacidade e eficiência em blockchains.
- **Contra**: A verificação das provas pode ser mais lenta do que em outros sistemas de ZKP, especialmente para provas maiores, o que pode limitar sua aplicabilidade em sistemas onde a velocidade de verificação é crítica.
