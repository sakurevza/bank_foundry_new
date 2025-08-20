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

// forge script script/ERC20MyToken.s.sol --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url http://localhost:8545 --broadcast