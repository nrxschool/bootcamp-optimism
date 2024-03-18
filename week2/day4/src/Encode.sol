// SPDX-License-Identifier: AGPL-3.0-only

pragma solidity ^0.8.13;

contract Encode {
    function get_hash_for_signature(string memory name, string memory doc) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(name, doc));
    }
}
