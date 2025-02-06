// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.5.0;

contract IntDemo {
    int8 a = -1;
    int16 b = 2;
    uint32 c = 1000;
    uint8 d = 100;

    function add(uint x, uint y) public pure returns (uint z){
        z = x + y;
    }

    function multiple(uint x, uint y) public pure returns (uint z){
        z = x * y;
    }

    function leftShift(int x, uint y) public pure returns (int z){
        z = x << y;
    }

    function rightShift(int x,uint y) public pure returns (int z){
        z = x >> y;
    }

    





}
