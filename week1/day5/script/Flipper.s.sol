// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Flipper} from "../src/Flipper.sol";

contract FlipperScript is Script {
    Flipper flipper;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);

        // deploy do contrato
        flipper = new Flipper();

        console2.log("ADDRESS: ", address(flipper));
        // 0x5FbDB2315678afecb367f032d93F642f64180aa3

        // chamar o contrato (getValue)
        console2.log(flipper.getValue());

        // chamar o contrato (flip)
        flipper.flip();

        // chamar o contrato (getValue)
        console2.log(flipper.getValue());

        vm.stopBroadcast();
    }
}

// Comando para buscar o valor
// cast call \
//     --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 \
//     --rpc-url "http://127.0.0.1:8545" \
//     "0x5FbDB2315678afecb367f032d93F642f64180aa3" "getValue()(bool)"

// Comando para executar `flip` e inverter o valor
// cast send \
//     --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 \
//     --rpc-url "http://127.0.0.1:8545" \
//     "0x5FbDB2315678afecb367f032d93F642f64180aa3" "flip()()"
