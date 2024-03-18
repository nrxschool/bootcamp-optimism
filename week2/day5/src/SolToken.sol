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
}
