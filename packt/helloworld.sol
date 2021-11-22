/*
Basic layout for solidity files is as follows:

***SPDX license identifier (solidity 0.6.8 and up):  identifies what License
is used to define permissible use and reuse of the code.

***pragma: identifies which compiler version the code was written for

***Comments:  plaintext appropriately annotated that doesn't get compiled, and
is meant to communicate to other developers who may be reading the code.  This
extended block of text is a comment.

***import:  makes available functions and contracts defined in other source files

***Contract definition:  structurally similar to a class.  Solidity supports
inheritance, allowing new contracts to take advantage of functions and
properties defined in other contracts.
*/

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract HelloWorld{
  string public greeting;

  constructor() public{
    greeting = "Hello World from Learn Ethereum";
  }

  function hello() public view returns (string memory){
    return(greeting);
  }

  function setGreeting(string memory _greeting) public{
    greeting = _greeting;
  }

}
