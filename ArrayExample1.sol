// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract ArrayExample {

    uint256 [5] a = [12,13,14,15,16];
    uint256 [] b;
    function AddArray(uint256 input) public {
        b.push(input);
    }

    function GetArrayLength() public view returns(uint256){
        return b.length;
    }
    
    function GetArray() public view returns( uint256 [] memory) {
        return b;
    }
}
