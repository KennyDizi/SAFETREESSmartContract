// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "./TREESTokenConfig.sol";
import "../utils/BokkyPooBahsDateTimeLibrary.sol";

// ----------------------------------------------------------------------------
// TREESToken - TREES Token Contract
//
// Copyright (c) 2021 SAFE TREES.
// https://safetrees.space/
//
// ----------------------------------------------------------------------------

contract TREESToken is ERC721, TREESTokenConfig, AccessControlEnumerable {
    // properties
    uint256 public challengeEndTime;
    uint256 public challengeStartTime;

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    constructor(uint _endMonths) ERC721(TOKEN_NAME, TOKEN_SYMBOL) {
            challengeStartTime = block.timestamp;
            challengeEndTime = BokkyPooBahsDateTimeLibrary.addMonths(challengeStartTime, _endMonths);

            // setup role
            _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
            _setupRole(MINTER_ROLE, _msgSender());
            _setupRole(PAUSER_ROLE, _msgSender());
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721, AccessControlEnumerable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}