/ SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract AdddressExample{

    address payable a;
    address  b;
    function abc(uint256 value) public {
        a.transfer(value);
    }
    function abc1(uint256 value) public {
        b.transfer(value);
    }
}

// address b is showing a error because only payable address like address a are allowed to send or transfer money
