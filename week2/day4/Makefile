
CURRENT_DIR = $(shell pwd)

# docker run -it -v $(pwd):/share trailofbits/eth-security-toolbox
open-slither:
	docker run -it -v $(CURRENT_DIR):/home/ethsec/project trailofbits/eth-security-toolbox

open-slither2:
	docker run -it -v $(CURRENT_DIR):/share trailofbits/eth-security-toolbox

# slither . --foundry-out-directory=pkg/contracts/out --exclude-dependencies --exclude-low --exclude-informational --exclude-medium --fail-high
slither:
	slither . --exclude-dependencies