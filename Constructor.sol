// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
  uint256 public totalSupply; // State variable to store total token supply
  string public name;
  string public  symbol;

  constructor(uint256 initialSupply, string memory _name, string memory _symbol) {
    totalSupply = initialSupply; // Initialize totalSupply in the constructor
    name = _name;
    symbol = _symbol;
  }

  // Other functions of the contract...
}
