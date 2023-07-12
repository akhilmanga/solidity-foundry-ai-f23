# solidity-foundry-ai-f23

# Lesson 1:

I learned about => 

What is a Smart Contract?
Nick Szabo
Hybrid Smart Contracts
Blockchain Oracles
Terminology
Web3
What is a blockchain?
The Purpose Of Smart Contracts

Decentralized
Transparency & Flexibility
Speed & Efficiency
Security & Immutability
Counterparty Risk Removal
Trust Minimized Agreements
What have Smart Contracts done so far?

DeFi
Defi Llama
Why DeFi is Important
DAOs
NFTs
What is a Private Key?
What is a Secret Phrase?
Etherscan

Gas I: Introduction to Gas

Gas and Gas Fees
Wei, Gwei, and Ether Converter
ETH Gas Station
How Do Blockchains Work?

What is a hash?
Blockchain Demo
Signing Transactions

Public / Private Keys
Layer 2 and Rollups
Decentralized Blockchain Oracles

Gas II

Block Rewards
Advanced Gas
EIP 1559
GWEI, WEI, and ETH
ETH Converter

Run Your Own Ethereum Node
High-Level Blockchain Fundamentals

Consensus
Proof of Stake
Proof of Work
Nakamoto Consensus
The merge

------------------------------------------------------------------------------------------------------

# Lesson 2:

I learned about => 

Remix
Solidity Documentation
Setting Up First Contract

What is a software license
SPDX License
Compiling
Contract Declaration
Basic Solidity: Types

Types & Declaring Variables
uint256, int256, bool, string, address, bytes32
Solidity Types
Bits and Bytes
Default Initializations
Comments
Basic Solidity: Functions

Functions
Deploying a Contract
Smart Contracts have addresses just like our wallets
Calling a public state-changing Function
Visibility
Gas III | An example
Scope
View & Pure Functions
Basic Solidity: Arrays & Structs

Structs
Intro to Storage
Arrays
Dynamic & Fixed Sized
push array function
Basic Solidity: Compiler Errors and Warnings

Yellow: Warnings are Ok
Red: Errors are not Ok
Memory, Storage, Calldata (Intro)

6 Places you can store and access data
calldata
memory
storage
code
logs
stack
Mappings

A testnet or mainnet
Connecting Metamask
Find a faucet here
See the faucets at the top of this readme!
Interacting with Deployed Contracts
The EVM

---------------------------------------------------------------------------------------------------------------------

# Lesson 3:

I learned about => 

Factory Pattern
Basic Solidity: Importing Contracts into other Contracts

Composibility
Solidity new keyword
Importing Code in solidity
Basic Solidity: Interacting with other Contracts

To interact, you always need: ABI + Address
ABI
Basic Solidity: Inheritance & Overrides

Inheritance
Override & Virtual Keyword

----------------------------------------------------------------------------------------------------------------------

# Lesson 4:

I learned about => 

Sending ETH through a function

Ethereum Unit Converter

Fields in a Transaction

More on v,r,s

payable

msg.value & Other global keywords

require

revert


Getting real world price data (Chainlink)

What is a blockchain oracle?
What is the oracle problem?
Chainlink Price Feeds (Data Feeds)
Chainlink VRF
Chainlink Keepers
Chainlink API Calls
Importing Tokens into your Metamask
Request and Receive Chainlink Model

Interfaces

Importing from NPM / GitHub

Chainlink NPM Package
Getting Prices from Chainlink

Solidity math

Multiply before you divide
tuple
Floating Point Numbers in Solidity
Type Casting
Gas Estimation Failed
Someone should make an article explaining this error

Library
SafeMath

Openzeppelin Safemath
unchecked vs checked

For Loop
/* */ is another way to make comments
Resetting an array

Transfer, Send, and Call

Constructor
Modifiers

Advanced Solidity
Immutable & Constant
Custom Errors

Custom Errors Introduction
Receive & Fallback Functions

Solidity Docs Special Functions
Fallback
Receive

----------------------------------------------------------------------------------------------------------------------


# Lesson 5:

Deep Learning for Python Engineers
Setting up GitHub

Formatting a question

It's a good idea to ask your AI buddy to format your questions in markdown

----------------------------------------------------------------------------------------------------------------------


# Lesson 6:

Installation & Setup (MacOS & Linux)

Visual Studio Code
Crash Course
VSCode Keybindings
Git
What is a terminal?

Gitpod
If using this, NEVER share a private key with real money on Gitpod
Ideally you figure out the MacOS, Linux, or Windows install though
Local Development Introduction
CMD + K or CTRL + K clears the terminal
code . to open VSCode in a new VSCode window
Foundry Install

VSCode Setup II

CoPilot
Copilot labs
Hardhat Solidity Extension
VSCodium

Foundry Setup

Formatting Solidity in VSCode:

Format your solidity code with in your settings.json
    "[solidity]": {
        "editor.defaultFormatter": "NomicFoundation.hardhat-solidity"
    },
    "[javascript]":{
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    }
Compiling in Foundry

Deploying to a local chain I (Anvil or Ganache)

Ganache
Adding another network to Metamask

ETH JSON RPC
Deploying to a local chain II (Forge Create)

2 Ways to deploy:
forge create
forge script
Private Key Rant I


history -c
Deploying to a local chain III (Forge Script)

What is a transaction?

cast --to-base 0x01 dec
Private Key Rant II


cast send
source .env
Can you Encrypt a Private Key -> a keystore in foundry yet??

The .env pledge
ThirdWeb Deploy
Special Guest Ciara
nodejs install
npm install


Private Key:
When you look to deploy 
with real money, you should use either:
1. A password encrypted keystore
2. Something like thirdweb deploy

The idea is you never want to have 
your private key or password 
ANYWHERE written in plain text
(Aka, you always want it encrypted)
Cast Send
Deploying to a testnet or a mainnet

Alchemy
Other node as a service:
Quicknode
Infura
Verifying a contract the manual way
Example verified contract

forge fmt
README.md
Alchemy & the mempool

----------------------------------------------------------------------------------------------------------------------
Completed Video 1
----------------------------------------------------------------------------------------------------------------------

# Lesson 7:

Setup
Testing Introduction

Chainlink Brownie Contracts Github Repo
forge install smartcontractkit/chainlink-brownie-contracts@0.6.1 --no-commit
Dependencies
remappings
Chainlink Brownie Contracts
Tests
foundry tests
console.log
Debugging Tests I

Advanced Deploy Scripts I

4 types of testing:
1. Unit: Testing a single function
2. Integration: Testing multiple functions
3. Forked: Testing on a forked network
4. Staging: Testing on a live network (testnet or mainnet)
forking in foundry
forge coverage
Refactoring I: Testing Deploy Scripts

Refactoring II: Helper Config

block.chainid
Chain ID List
11155111 is ETH Sepolia
1 is ETH Mainnet
Refactoring III: Mocking

Mocking
Chainlink Github
Multiple Versions of Solidity
Magic Numbers

Refactoring III: Mocking (continued)

More Cheatcodes

foundry cheatcodes
forge std cheats
vm.expectRevert
vm.prank
makeAddr
deal
More Coverage

State tree testing
Arrange, Act, Assert
hoax
uint160 -> address
vm.startPrank
Chisel

Chisel
Gas: Cheaper Withdraw

Gas Reporter
forge snapshot
vm.txGasPrice
gasLeft()
tx.getprice
Storage

** Advanced **
Storage Layout
Purpose of the memory keyword
cast storage
Opcodes
Opcodes by Gas
Opcodes by Gas
Append s_ to storage variables
Append i_ to immutable variables
Caps lock and underscore constant variables
Chainlink Solidity Style Guide
Gas: Cheaper Withdraw

evm.codes
Style Guide
Chainlink Style Guide
NatSpec
Interactions.s.sol


foundry devops
Best README Template
ffi
Makefile

Etherscan API Key

----------------------------------------------------------------------------------------------------------------------

# Lesson 8: Html/Js Fund Me

More in-depth Javascript & Full Stack introduction video

Live Server Extension
How Metamask works with your browser
Metamask Docs
Ethers Docs
Function selector
cast sig

----------------------------------------------------------------------------------------------------------------------

# Lesson 9: Foundry Smart Contract Lottery

Raffle.sol Setup
Solidity Contract Layout
// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// internal & private view & pure functions
// external & public view & pure functions


Custom Errors in Solidity
Events

Introduction to Events
Events & Logging Video
Events & Logging in Hardhat
block.timestamp

Chainlink VRF
Sub-Lesson: Chainlink VRF
Chainlink VRFv2 Docs
Chainlink VRFv2 Walkthrough
Chainlink Contracts
Implementing Chainlink VRF - Introduction
Chainlink docs - create a random number
Chainlink Brownie Contracts
forge install smartcontractkit/chainlink-brownie-contracts@0.6.1 --no-commit
Implementing Chainlink VRF - The Request
Implementing Chainlink VRF - The FulFill

Modulo
Enum

Resetting an array

CEI (Checks, Effects, Interactions)

Chainlink Automation
Chainlink Automation Walkthrough
Implementing Chainlink Keepers - checkUpkeep
Enums
Implementing Chainlink Keepers - checkUpkeep continued
block.timestamp
Implementing Chainlink Keepers - performUpkeep

Mid-Lesson Recap

Mock Chainlink VRF Coordinator
Tests & Deploy Script Continued
Testing Events in Foundry

vm.roll & vm.warp
Create Subscription Script
Create Subscription from the UI
Fund Subscription Script

Link Token
Solmate
Openzeppelin
Add Consumer Script
forge coverage --report debug
PerformUpkeep Tests

Expecting Custom Errors
Getting Event Data into Foundry Scripts

vm.recordLogs
Intro to Fuzz tests

Passing the private key to vm.startBroadcast

Integrations Test

Testnet Demo - Makefile setup
Console.log Debugging
forge test --debug

----------------------------------------------------------------------------------------------------------------------
