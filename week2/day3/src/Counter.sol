// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ERC721 {
    string public name;
    string public symbol;

    mapping(uint256 => address) private nfts;
    // | key        | valor                                      |
    // | uint256    | address                                    |
    // | 1          | 0x7824A63A4051eB44723AAae83398c847e51187FA |
    // | 2          | 0x7824A63A4051eB44723AAae83398c847e51187FA |
    // | 3          | 0x7824A63A4051eB44723AAae83398c847e51187FA |
    // | 4          | 0x7824A63A4051eB44723AAae83398c847e51187FA |

    mapping(address owner => mapping(address operator => bool)) private _operatorApprovals;
    // | key          | key/valor    | valor |
    // | address      | address      | bool  |
    // | 0x782...87FA | 0x782...AAAA | true  |
    // | 0x782...87FA | 0x782...BBBB | false |


    mapping(address owner => uint256) private _balances;

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }


    function ownerOf(uint256 tokenId) public view virtual returns (address) {
        return nfts[tokenId];
    }



    // | storage      | memory       |  calldata |
    // | blockchain   | runtime      |  calldata |
    // | HIGH         | MEDIUM       |  LOW      |

}
