
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MyContract {

  // State variable to store the contract owner's address
  address public owner;

  // Constructor that sets the owner during contract deployment
  constructor() {
    owner = msg.sender; // Set the deployer as the initial owner
  }

  // Custom modifier to restrict function calls to the owner
  modifier onlyOwner() {
    require(msg.sender == owner, "Only owner can call this function");
    _; // This indicates the code to be executed if the modifier condition is met
  }

  // Example sensitive function that can only be called by the owner
  function sensitiveFunction() public onlyOwner {
    // Code for the sensitive function that should only be accessible by the owner
  }

  // Optional function to transfer ownership (be cautious about granting ownership)
  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0), "New owner cannot be zero address"); // Prevent accidental ownership transfer
    owner = newOwner;
  }
}
