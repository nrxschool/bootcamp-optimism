// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// import {Address} from "@openzeppelin/contracts/utils/Address.sol";

contract King {
    // using Address for address;

    address public king;
    uint256 public price;

    error InsufficientValue(uint256 value, uint256 price);
    error TransferFail();

    constructor(uint256 _price) {
        if (_price == 0) {
            revert InsufficientValue(0, _price);
        }
        king = msg.sender;
        price = _price;
    }

    function becameKing() public payable {
        if (msg.value > price) {
            revert InsufficientValue(msg.value, price);
        }

        (bool success,) = address(king).call{value: msg.value}("");

        // address(king).functionCallWithValue("", msg.value);

        if (!success) {
            revert TransferFail();
        }

        king = msg.sender;
        price = msg.value;
    }
}
