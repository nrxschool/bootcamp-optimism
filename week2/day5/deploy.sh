source .env

forge script script/Deploy.projects.s.sol:TokenScript \
    --etherscan-api-key $OP_ETHERSCAN_API_KEY \
    --rpc-url $OP_SEPOLIA \
    --account nearx \
    --verify \
    --broadcast