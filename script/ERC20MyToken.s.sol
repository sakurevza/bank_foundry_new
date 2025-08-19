// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {ERC20MyToken} from "../src/ERC20MyToken.sol";

contract ERC20MyTokenScript is Script {
    ERC20MyToken public token;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        token = new ERC20MyToken("MyToken", "MTK");
        console.log("Bank deployed to:", address(token));
        vm.stopBroadcast();
    }
}
