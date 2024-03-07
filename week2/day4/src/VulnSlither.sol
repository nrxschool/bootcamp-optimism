// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Vuln2 {
    uint256 public number;
    mapping(address => uint256) public balances;
    ERC20 public token;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function setToken(address _tokenAddress) public {
        token = ERC20(_tokenAddress);
    }

    function burn(uint256 amount, address from) public {
        token.transferFrom(from, address(0), amount);
    }

    function _burn(uint256 amount, address from) internal {
        balances[from] -= amount;
    }

    function increment() public {
        number++;
    }
}
