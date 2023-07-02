
// Get funds from users
// Withdraw funds
// Set a minimum funding value in usd

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {PriceConverter} from "./PriceConverter.sol";

error NotOwner();

contract FundMe {
    using PriceConverter for uint256;


    uint256 public constant MINIMUM_USD = 5e18;
    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    address public immutable i_owner;

    constructor() public {
        i_owner = msg.sender;
    }

    modifier onlyOwner() {
// require(msg.sender == owner, "Sender is not owner");
if(msg.sender != i_owner) revert NotOwner();
_;
    }

function fund() public payable {

    // Allow users to send money
    // Have a minimum money sent
    // How do we send eth to this contract?
    require(msg.value.getConversionRate() >= MINIMUM_USD, "Not enough ETH"); // 1e18 -> * 10 ** 18
    funders.push(msg.sender);
    addressToAmountFunded[msg.sender] += msg.value;
}



   function withdraw() public onlyOwner{
       // for(/* startingIndex, endingIndex, stepAmount*/) 

       for(uint256 funderIndex; funderIndex < funders.length; funderIndex++) {
           address funder = funders[funderIndex];
           addressToAmountFunded[funder] = 0;
       }

       // Reset Array
       funders = new address[](0);
       (bool success, ) = payable(msg.sender).call({value: address(this).balance})("");
        return (success, "Call Failed!");
   }

   // What happens if someone sends this contract eth without calling fund function

// receive()
// fallback()

receive() external payable {
fund();
}

fallback() external payable {
fund();
}

}