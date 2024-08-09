//SPDX-License-Identifier: AGPL-3.0-only

pragma solidity ^0.8.13;

import {EtherStore} from "../src/EtherStoreVuln.sol";
// import {EtherStore} from "../src/EtherStoreSafe.sol";
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

    //  assembly {
    //         for {} 1 {} { bal := bal }
    //     }

    // function test_for_assembly() public {
    //     uint256 bal = 0;
    //     assembly {
    //         for {} 1 {} { bal := bal }
    //     }
    //     assertEq(bal, 0, "bal should be 0");
    // }
}
