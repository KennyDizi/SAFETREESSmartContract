// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./TREESTokenConfig.sol";
import "./interface/SupportsInterface.sol";

// ----------------------------------------------------------------------------
// TREESToken - TREES Token Contract
//
// Copyright (c) 2021 SAFE TREES.
// https://safetrees.space/
//
// ----------------------------------------------------------------------------

contract TREESToken is ERC721, TREESTokenConfig, SupportsInterface {
    constructor() ERC721(TOKEN_NAME, TOKEN_SYMBOL) {
        supportedInterfaces[0x780e9d63] = true; // ERC721Enumerable
        supportedInterfaces[0x5b5e139f] = true; // ERC721MetaData
        supportedInterfaces[0x80ac58cd] = true; // ERC721
    }
}
