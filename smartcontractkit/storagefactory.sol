//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

import "./simplestorage.sol"; //make your life easy.  keep these two files in the same directory

contract StorageFactory is SimpleStorage{ //inherit a bunch of stuff from SimpleStorage

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        //Need an Address and an ABI.  Address is already stored in array.
        //ABI provided by SIMPLESTORAGE.sol
        //SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        //simpleStorage.store(_simpleStorageNumber);
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        //SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        //return simpleStorage.retrieve();
        return(SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve());
    }
}
