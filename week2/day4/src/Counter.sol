// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;
    mapping(address => uint256) public balances;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function burn(uint256 amount, address from) public {
        _burn(amount, from);
    }

    function _burn(uint256 amount, address from) internal {
        balances[from] -= amount;
    }

    function increment() public {
        number++;
    }
}
