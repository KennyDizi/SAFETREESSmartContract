pragma solidity ^0.8.4;

// ----------------------------------------------------------------------------
// TREESTokenConfig - TREES Token Configuration 
//
// Copyright (c) 2021 SAFE TREES.
// https://safetrees.space/
//
// The MIT Licence.
// ----------------------------------------------------------------------------

contract TREESTokenConfig {
    string public constant NAME = "SAFETREES Chain Token";
    string public constant SYMBOL = "TREES";
    uint8 public constant DECIMALS = 18;
    uint public constant DECIMALSFACTOR = 10 ** uint(DECIMALS);
    uint public constant TOTALSUPPLY = 500000000 * DECIMALSFACTOR;
}