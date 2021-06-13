// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./TREESTokenConfig.sol";
import "../utils/BokkyPooBahsDateTimeLibrary.sol"

// ----------------------------------------------------------------------------
// TREESToken - TREES Token Contract
//
// Copyright (c) 2021 SAFE TREES.
// https://safetrees.space/
//
// ----------------------------------------------------------------------------

contract TREESToken is ERC721, TREESTokenConfig {
    // Properties
    uint256 public challengeEndTime;
    uint256 public challengeStartTime;

    constructor(uint _endMonths) ERC721(TOKEN_NAME, TOKEN_SYMBOL) {
            challengeStartTime = block.timestamp;
            challengeEndTime = BokkyPooBahsDateTimeLibrary.addMonths(challengeStartTime, _endMonths);
    }
}