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
