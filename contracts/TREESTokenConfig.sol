// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// ----------------------------------------------------------------------------
// TREESTokenConfig - TREES Token Configuration
//
// Copyright (c) 2021 SAFETREES.
// https://safetrees.space/
//
// ----------------------------------------------------------------------------

contract TREESTokenConfig {
    string public constant TOKEN_NAME = "SAFETREES Chain Token";
    string public constant TOKEN_SYMBOL = "TREES";
    uint8 public constant DECIMALS = 18;
    uint public constant DECIMALSFACTOR = 10 ** uint(DECIMALS);
    uint public constant TOKEN_TOTALSUPPLY = 500000000 * DECIMALSFACTOR;
}
