// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    function setUp() public {}

    function test_get_hash_for_signature() public {
        console.log("hash: ");
        bytes32 result = this.get_hash_for_signature("name", "doc");
        console.logBytes32(result);

        assertEq(result, keccak256(abi.encodePacked("nam", "edoc")), "first");
    }

    function get_hash_for_signature(string memory name, string memory doc) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(name, doc));
    }
}
