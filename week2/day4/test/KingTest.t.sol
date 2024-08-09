//SPDX-License-Identifier: AGPL-3.0-only

pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";

import {King} from "../src/King.sol";
import {KingAttack} from "../src/KingAttack.sol";

contract KingTest is Test {
    address user1 = address(0x1);
    address user2 = address(0x2);
    address attacker = address(0xdeadbeef);

    King king;

    function setUp() public {
        vm.deal(address(this), 100 ether);

        vm.deal(user1, 100 ether);
        vm.deal(user2, 100 ether);
        vm.deal(attacker, 100 ether);

        king = new King(1 ether);
    }

    function test_king() public {
        assertEq(king.king(), address(this), "king should be this contract");
        vm.startPrank(user1);
        king.becameKing{value: king.price()}();

        vm.stopPrank();

        assertEq(king.king(), user1, "king should be user1");
        assertEq(address(king).balance, 0, "king balance should be 0");
    }

    function test_atk() public {
        vm.startPrank(attacker);
        KingAttack attack = new KingAttack(king);

        attack.attack{value: king.price()}();

        vm.stopPrank();

        vm.startPrank(user1);
        king.becameKing{value: king.price()}();

        vm.stopPrank();
    }

    receive() external payable {}

    //  assembly {
    //         for {} 1 {} { bal := bal }
    //     }
}
