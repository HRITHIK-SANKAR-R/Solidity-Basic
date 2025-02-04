//SPDX-License-Identifier:MIT

pragma solidity ^0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";
contract AddfiveStorage is SimpleStorage{
    function store(uint _favnum) public override {
        favnum=_favnum+5;
    } 
}