//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";


contract Greeter {
    string greeting;
    uint x;

    constructor(string memory _greeting, uint _x) {
      console.log("Deploying a Greeter with greeting:", _greeting);
      greeting = _greeting;
      x = _x;
    }

    function greet() public view returns (string memory) {
      return greeting;
    }

    function addValueToX(uint value) public {
      x = x + value;
    }

    function doubleX(uint value) public view returns(uint) {
      return x << 1;
    }

    function setGreeting(string memory _greeting) public {
      console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
      greeting = _greeting;
    }
}
