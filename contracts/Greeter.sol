//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";


contract Greeter {
    string greeting;
    uint x;

    constructor(string memory _greeting, uint _x) {
      console.log("Deploying a Greeter with greeting and x:", _greeting, _x);
      greeting = _greeting;
      x = _x;
    }

    function getX() public view returns(uint) {
      return x;
    }

    function greet() public view returns (string memory) {
      return greeting;
    }

    function addValueToX(uint value) public {
      x = x + value;
    }

    function doubleX() public view returns(uint) {
      return x * 2;
    }

    function setGreeting(string memory _greeting) public {
      console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
      greeting = _greeting;
    }
}
