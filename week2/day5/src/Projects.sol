// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Token is ERC20 {
    constructor() ERC20("NearX", "NRX") {
        _mint(msg.sender, 10_000 * 1e18);
    }
}

// # Setting up 1 EVM.

// ==========================

// Chain 10

// Estimated gas price: 3.000767646 gwei

// Estimated total gas used for script: 718168

// Estimated amount required: 0.002155055298792528 ETH

// Chain 10

// Estimated gas price: 3.00078584 gwei

// Estimated total gas used for script: 669195

// Estimated amount required: 0.0020081108801988 ETH

// contract NFT is ERC721 {

//     function tokenURI(uint256 tokenId) public view override returns (string memory) {
//         _requireOwned(tokenId);

//         string memory baseURI = _baseURI();
//         return bytes(baseURI).length > 0 ? string.concat(baseURI, tokenId.toString(), ".json") : "";
//     }

//     function _baseURI() internal view override returns (string memory) {
//         return "https://ipfs.io/ipfs/QmPWfPXUGWLQE5SfgtADxm2SxiLiPntgTKau3uRaKALF5t/0.json";
//     }

//     constructor() NFT("NearX", "GIFTx") {
//         _mint(msg.sender, 0);
//     }
// }
