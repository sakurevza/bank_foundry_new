// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Bank} from "../src/Bank.sol";

contract BankScript is Script {
    Bank public bank;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        bank = new Bank(0x5FbDB2315678afecb367f032d93F642f64180aa3);
        console.log("Bank deployed to:", address(bank));
        vm.stopBroadcast();
    }
}
