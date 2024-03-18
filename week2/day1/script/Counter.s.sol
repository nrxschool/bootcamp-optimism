// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);

        counter = new Counter();

        counter.setNumber(99);

        console2.log("Address: ", address(counter));

        vm.stopBroadcast();
    }
}


// forge script script/Counter.s.sol:CounterScript \ 
//   --rpc-url "http://127.0.0.1:8545" \
//   --broadcast



// Comando para buscar o valor
// cast call \
//     --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 \
//     --rpc-url "http://127.0.0.1:8545" \
//     "0x5FbDB2315678afecb367f032d93F642f64180aa3" "getNumber()(uint8)"

// Comando para executar `increment` e incrementar o valor
// cast send \
//     --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 \
//     --rpc-url "http://127.0.0.1:8545" \
//     "0x5FbDB2315678afecb367f032d93F642f64180aa3" "increment()()"

// Comando para executar `setNumber` e configurar o valor
// cast send \
//     --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 \
//     --rpc-url "http://127.0.0.1:8545" \
//     "0x5FbDB2315678afecb367f032d93F642f64180aa3" "setNumber(uint8)()" 123
