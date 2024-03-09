source .env

forge script script/airdrop.s.sol:AirdropScript \
    --rpc-url $OP_SEPOLIA \
    --account nearx \
    --broadcast