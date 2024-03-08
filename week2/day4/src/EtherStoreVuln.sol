// SPDX-License-Identifier: AGPL-3.0-only

import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

pragma solidity ^0.8.13;

contract EtherStore is ReentrancyGuard {
    error FailedToSendEther();
    error InsufficientBalance();

    mapping(address => uint256) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() public nonReentrant {
        uint256 bal = balances[msg.sender];
        // require(bal > 0);
        if (bal <= 0) {
            revert InsufficientBalance();
        }

        (bool sent,) = msg.sender.call{value: bal}("");
        if (!sent) {
            revert FailedToSendEther();
        }

        balances[msg.sender] = 0;
    }

    // Helper function to check the balance of this contract
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
