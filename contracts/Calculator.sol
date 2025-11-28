// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Calculator{

    uint private info = add(21,12);

    function retornarRes() public view returns (uint){
        return info;
    }

}

function add (uint a, uint b) pure  returns (uint){
    return (a+b);
}

function substract (uint a, uint b) pure returns (uint){
    return (a-b);
}

function multiply (uint a, uint b) pure returns (uint){
    return (a * b);
}

function division (uint a, uint b) pure returns (uint){
    assert(b!=0);
    return (a / b);
}
