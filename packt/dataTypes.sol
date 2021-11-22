//This contract won't actually do anything.

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract MiscTypes{
  address payable payor; //address type payor
  string hello = "Hello World";
  bytes32[] public names; //string array
  bytes32[] empIds; //bytes array

  uint term; //unsigned integer, lease term.
  bool transferable = true;
  int quantity = 10;
  uint threshold = 100;
  uint8[5] odds = [1,3,5,7,9]; //defining and preallocating an array

}
