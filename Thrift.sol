// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract ThriftContribution {
    
   
    mapping( address => uint256 ) public Balances;
    event Deposited(address indexed depositor, uint256 amount);
    event Withdrawn(address indexed reciever, uint256 amount);

    function Deposit() external payable {
        Balances[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);

    }

    function Withdraw(uint256 amount) external {
        require(Balances[msg.sender] >= amount, "Insufficient Balance");
        Balances[msg.sender] -= amount;
        payable (msg.sender).transfer(amount);
        emit Withdrawn(msg.sender, amount);
    }

    function GetBalance() public view returns(uint256 ){
        return  Balances[msg.sender];
    }
}
