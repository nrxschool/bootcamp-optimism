/*
EtherStore is a contract where you can deposit and withdraw ETH.
This contract is vulnerable to re-entrancy attack.
Let's see why.

1. Deploy EtherStore
2. Deposit 1 Ether each from Account 1 (Alice) and Account 2 (Bob) into EtherStore
3. Deploy Attack with address of EtherStore
4. Call Attack.attack sending 1 ether (using Account 3 (Eve)).
   You will get 3 Ethers back (2 Ether stolen from Alice and Bob,
   plus 1 Ether sent from this contract).

What happened?
Attack was able to call EtherStore.withdraw multiple times before
EtherStore.withdraw finished executing.

Here is how the functions were called
- Attack.attack
- EtherStore.deposit
- EtherStore.withdraw
- Attack fallback (receives 1 Ether)
- EtherStore.withdraw
- Attack.fallback (receives 1 Ether)
- EtherStore.withdraw
- Attack fallback (receives 1 Ether)
*/

//SPDX-License-Identifier: AGPL-3.0-only

pragma solidity ^0.8.13;

import {EtherStore} from "../src/EtherStoreVuln.sol";
import {Attack} from "../src/Attack.sol";

import {Test} from "forge-std/Test.sol";

contract ReetrancyTest is Test {
    function setUp() public {
        vm.deal(address(this), 100 ether);
    }

    function test_atk() public {
        EtherStore etherStore = new EtherStore();
        Attack attack = new Attack(address(etherStore));

        // Deposit 1 Ether each from Account 1 (Alice) and Account 2 (Bob) into EtherStore
        etherStore.deposit{value: 1 ether}();
        etherStore.deposit{value: 1 ether}();

        // Deploy Attack with address of EtherStore
        // Call Attack.attack sending 1 ether (using Account 3 (Eve)).
        // You will get 3 Ethers back (2 Ether stolen from Alice and Bob,
        // plus 1 Ether sent from this contract).
        attack.attack{value: 1 ether}();

        assertEq(etherStore.getBalance(), 0, "etherStore balance should be 0");
        assertEq(attack.getBalance(), 3 ether, "attack balance should be 3 ether");
    }
}
