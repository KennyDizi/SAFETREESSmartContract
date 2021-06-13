// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

// ----------------------------------------------------------------------------
// TREESTokenConfig - TREES Token Configuration 
//
// Copyright (c) 2021 SAFE TREES.
// https://safetrees.space/
//
// ----------------------------------------------------------------------------

contract TREESTokenConfig {
    string public constant NAME = "SAFETREES Chain Token";
    string public constant SYMBOL = "TREES";
    uint8 public constant DECIMALS = 18;
    uint public constant DECIMALSFACTOR = 10 ** uint(DECIMALS);
    uint public constant TOTALSUPPLY = 500000000 * DECIMALSFACTOR;
}