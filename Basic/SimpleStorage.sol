// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{
    bool public favNumber;
    uint public storedData;

    function store(uint x, bool y) public {
        storedData = x;
        favNumber = y;
    }
    function retrieve() public view returns (uint) {
       return storedData; 
    }
    function getFavNum() public view returns(bool) {
        return favNumber;
    }
}