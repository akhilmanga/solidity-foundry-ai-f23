// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {DeploySimpleStorage} from "../script/DeploySimpleStorage.s.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
import {Test} from "forge-std/Test.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() external {
        DeploySimpleStorage deployer = new DeploySimpleStorage();
        simpleStorage = deployer.run();
    }

    function testStoreNumber() public {
        uint256 expectedFavoiteNumber = 4444;
        simpleStorage.store(expectedFavoiteNumber);
        assert(expectedFavoiteNumber == simpleStorage.retrieve());
    }

    function testCreatePerson() public {
        string memory name = "Akhil";
        uint256 expectedNumber = 22;
        simpleStorage.addPerson(name, expectedNumber);
        uint256 retreievedNumber = simpleStorage.nameToFavoriteNumber(name);
        assert(retreievedNumber == expectedNumber);
    }
}
