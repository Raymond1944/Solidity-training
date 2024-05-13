// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Father{

    function add(uint256 a, uint256 b) public  pure returns (uint256){
        return  a + b;
    }

    function substract (uint256 a, uint256 b)public  pure returns (uint256){
        return  a - b;
    }
}


contract son is Father{

    function addition() public pure returns(uint256) {
        return Father.add(5, 7);
    }

}
