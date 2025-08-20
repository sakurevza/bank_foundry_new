// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Bank} from "../src/Bank.sol";

contract BankScript is Script {
    Bank public bank;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        bank = new Bank(0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512);
        console.log("Bank deployed to:", address(bank));
        vm.stopBroadcast();
    }
}
// forge script script/Bank.s.sol --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url http://localhost:8545 --broadcast
