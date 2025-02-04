//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;
import {SimpleStorage} from "./SimpleStorage.sol";
contract StorageFactory{
    SimpleStorage[] public simplestorage;

    function createSimpleStorageContract() public{
        simplestorage.push(new SimpleStorage());
    }

    function sfstorenum(uint256 _sSIndex,uint256 _sSNumber) public{
        //Address
        //ABI -Application Binary Interface
        simplestorage[_sSIndex].store(_sSNumber);
    }

    function sfretrieve(uint256 _sSIndex) public view returns(uint256){
        return simplestorage[_sSIndex].retrieve();
    }
}