# Blockchain 101

## Wallet

### Hash Functions

- Determinístico
- Rápidas de calcular
- Impraticáveis de inverter
- Resistentes a colisões
- Efeito avalanche
- Fixo em tamanho de saída
- Pseudorrandomização

#### Hash "NearX" with SHA-256

```python
import hashlib

data = "nearx"
data_encoded = data.encode()

output = hashlib.sha256(data_encoded)
output_decoded = output.hexdigest()

print(output_decoded)
```

#### Hash "NearX" with KECCAK-256

```python
import keccaky

data = "nearx"
output_decoded = keccaky.hash_it(data)

print(output_decoded)
```

### Chaves Públicas

#### ETHEREUM SEED TO ADDRESS

```python
from eth_account import Account

seed = "jump skull butter topic bronze member feed wait flee oven deer rabbit"

Account.enable_unaudited_hdwallet_features()
account = Account().from_mnemonic(mnemonic=seed)

print(account.key.hex())
print(account.address)

```

#### ETHEREUM SIGNATURE (r,s,v)

```python
tx = {
    "to": "0xF0109fC8DF283027b6285cc889F5aA624EaC1F55",
    "value": 1000000000,

    "gas": 2000000,
    "maxFeePerGas": 2000000000,
    "maxPriorityFeePerGas": 1000000000,
    "nonce": 0,
    "chainId": 1,
}

signed_tx = account.sign_transaction(tx)

print(signed_tx.r)
print(signed_tx.s)
print(signed_tx.v)
```

### Account-Based vs UTXO

#### UTXO

```python
utxos = [{"owner": "Bob", "amount": 15}]

# transfer 10 Token from BOB to ALICE
new_utxos = [
    {"owner": "Alice", "amount": 10},
    {"owner": "Bob", "amount": 5}
]
utxos = []
utxos.extend(new_utxos)

print(utxos)
```

#### Account-based

```python
accounts = {
    "Bob": 15,
    "Alice": 0,
}

# transfer 10 Token from BOB to ALICE
accounts["Bob"] -= 10
accounts["Alice"] += 10

print(accounts)
```

## Transaction

### Anatomia de uma Tx

```python
# create a wallet
account = Account.create()

# create a transaction
tx = {
    "from": "0xfe9480cfff9106cb625104e35f5c632a8af37f2a", 
    "to": "0xF0109fC8DF283027b6285cc889F5aA624EaC1F55",
    "value": 1000000000,

    "gas": 2000000,
    "maxFeePerGas": 2000000000,
    "maxPriorityFeePerGas": 1000000000,

    "nonce": 0,
    "chainId": 1,
}

# sign tx
signed_tx = account.sign_transaction(tx)

# create a provider
ALCHEMY_API_KEY = "nAZJlI621cCEM96reFDCWwdlBiaNBOqN"
URL = f"https://eth-mainnet.g.alchemy.com/v2/{ALCHEMY_API_KEY}/"
web3 = Web3(Web3.HTTPProvider(URL))

# send tx
tx_hash = web3.eth.send_raw_transaction(signed_tx.rawTransaction)

print(tx_hash.hex())
```

### Gas

- GasPrice
- GasLimit
- MaxFeePerGas
- MaxPriorityFeePerGas

## Blocks

### Anatomia de um Bloco

```python
block0 = {
    "hash": "0xdc0818cf78f21a8e70579cb46a43643f78291264dda342ae31049421c82d21ae",
    "parentHash": "0x0",
    "transactions": [],
}
block1 = {
    "hash": "0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
    "parentHash": "0xdc0818cf78f21a8e70579cb46a43643f78291264dda342ae31049421c82d21ae",
    "transactions": [],
}
block2 = {
    "hash": "0x301f4a1c0cb92f3c3c4c2376143c3b0be4bff71b9554760ac6391c299ee1dea0",
    "parentHash": "0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
    "transactions": [],
}
block3 = {
    "hash": "0xfe9480cfff9106cb625104e35f5c632a8af37f2a160e400aaa3db9e2ece720e7",
    "parentHash": "0x301f4a1c0cb92f3c3c4c2376143c3b0be4bff71b9554760ac6391c299ee1dea0",
    "transactions": [],
}

blockchain = [block0, block1, block2, block3]
```

### Merkle Tree

```python
from merkly.mtree import MerkleTree


leaves = ["tx0", "tx1", "tx2", "tx3"]

# Construindo uma MerkleTree
mtree = MerkleTree(leaves)

# Criando um MerkleRoot
root = mtree.root
print(root.hex())

# Criando uma MerkleProof
proof = mtree.proof("tx2")
print(proof)

# Verificando um MerkleProof
print(mtree.verify(proof, "tx2"))
```

## Consensus

### Mineração PoW

```python
import hashlib

def proof_of_work(block_hash, difficulty=4):
    nonce = 0
    while True:
        attempt = f"{block_hash}{nonce}".encode()

        hash_attempt = hashlib.sha256(attempt).hexdigest()

        if hash_attempt.startswith("0" * difficulty):
            print(f"Nonce encontrado: {nonce}")
            print(f"Hash correspondente: {hash_attempt}")
            break
        nonce += 1


proof_of_work("0xfe9480cfff9106cb625104e35f5c632a8af37f2a160e400aaa3db9e2ece720e7", 4)
```

### Validação PoS

```python
import random

validators = {
    "ValidatorA": 100,
    "ValidatorB": 200,
    "ValidatorC": 50,
}

def choose_validator(validators):
    total_stake = sum(validators.values())
    lottery = random.randint(1, total_stake)
    counter = 0
    for validator, stake in validators.items():
        counter += stake
        if lottery <= counter:
            return validator

result = {validator: 0 for validator in validators}
for _ in range(100):
    chosen_validator = choose_validator(validators)
    result[chosen_validator] += 1

for item in result.items():
    print(item)
```
