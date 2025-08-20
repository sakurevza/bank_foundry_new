// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";

import {Bank} from "../src/Bank.sol";
import {ERC20MyToken} from "../src/ERC20MyToken.sol";

contract AllDevelop is Script {
    string public tokenName = "MyToken";
    string public tokenSymbol = "MTK2";
    uint256 public initialSupply = 1000000 * 10**18; // 1,000,000 代币，18 位小数


    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        // 部署 ERC20 代币合约
        ERC20MyToken token = new ERC20MyToken(tokenName, tokenSymbol, initialSupply);
        address tokenAddress = address(token);

        // 部署 Bank 合约，传递 ERC20 代币合约地址
        Bank bank = new Bank(tokenAddress);

        vm.stopBroadcast();

        // // 将 ERC20 代币合约地址写入环境变量
        // string memory tokenAddressStr = vm.toString(tokenAddress);
        // vm.setEnv("TOKEN_ADDRESS", tokenAddressStr); // 设置环境变量

        // // 可选：写入文件到允许的目录
        // string memory filePath = "broadcast/deployed_addresses.txt"; // 文件路径
        // string memory fileContent = string.concat("TOKEN_ADDRESS=", tokenAddressStr, "\nBANK_ADDRESS=", vm.toString(address(bank)), "\n");
        // vm.writeFile(filePath, fileContent);

        // 打印部署地址 (方便查看)
        console.log("ERC20 Token Address:", tokenAddress);
        console.log("Bank Contract Address:", address(bank));
    }
}

// forge script script/AllDevelop.s.sol --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url http://localhost:8545 --broadcast
