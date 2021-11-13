//Establish SPDX-license-type.  :-)
// SPDX-License-Identifier: MIT

//Set solidity version with a pragma statement

pragma solidity >=0.6.0 <0.9.0;

//could insist on a solidity version this way:
//pragma solidity 0.6.0;
//pragma solidity ^0.6.0; lets you work with any 0.6

contract SimpleStorage {

    uint256 favoriteNumber; //will initialize to zero.
    /* other data types
    bool favoriteBool = true;
    string favoriteString = "String";
    int256 favoriteInt = -5;
    address favoriteAddress = 0x614A905d34F05E3421411F3A27D461A219fc4Cc2;
    bytes32 favorteBytes = "cat";
    */

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    //People public person = People({favoriteNumber:2,name:"Matt"});

    People[] public people; //array.  Access members by index.
    mapping(string => uint256) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //keywords 'view' and 'pure' create functions that do not
    //cost a transaction to execute -- they do not cause
    //any state changes.

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        //people.push(People({favoriteNumber:_favoriteNumber,name:_name}));
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function population() public view returns(uint256){
        return(people.length);
    }

}
