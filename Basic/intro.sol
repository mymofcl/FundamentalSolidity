//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DataType{
    uint public favNum;
    bool public hasFavNum;
    address public owner = msg.sender;

    function setFavNumber(uint _num)public {
        favNum = _num;
        hasFavNum = true;
    }
    function getFavNum() public view returns (uint){
        return favNum;
    }
    function toggle() public payable {
        if(hasFavNum){
            hasFavNum = !hasFavNum;
            delete favNum;
        }
        else {
            require(hasFavNum,"You do not have any favourite number. Set your favourite number first.");
        }
    }

}