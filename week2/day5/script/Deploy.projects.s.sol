// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Token} from "../src/Projects.sol";

contract TokenScript is Script {
    Token token;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        token = new Token();

        console2.log("Address: ", address(token));

        vm.stopBroadcast();
    }
}
