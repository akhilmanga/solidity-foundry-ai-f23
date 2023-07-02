// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SafeMathtester {
uint8 public bigNumber = 255;
 

 function add() public {
    bigNumber = bigNumber + 1;
    // If you want to use new version of solidity, use unchecked keyword like this => unchecked{bigNumber = bigNumber + 1};
 }

}