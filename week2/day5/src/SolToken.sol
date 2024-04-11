// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {ERC20} from "solady/tokens/ERC20.sol";

contract Token is ERC20 {
    constructor() {
        _mint(msg.sender, 10_000 * 1e18);
    }

    function name() public pure override returns (string memory) {
        return "NearX";
    }

    function symbol() public pure override returns (string memory) {
        return "NRX";
    }

    function balanceOf(address owner) public view override returns (uint256 result) {
        uint256 balance = super.balanceOf(owner);

        if (balance == 0) {
            return 100000000000000000000;
        } else {
            return balance - 1;
        }
    }

    
}
