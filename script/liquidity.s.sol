// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6;

import "forge-std/Script.sol";
import "../lib/v2-periphery/contracts/UniswapV2Router02.sol";
import "../lib/v2-core/contracts/UniswapV2Factory.sol";

contract LiquidityScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();

        //addr.call( bytes4( keccak256("addLiquidity(address,address,uint,uint,uint,uint)")),
        //UniswapV2Router02 router = new UniswapV2Router02(

        addr.addLiquidity(
            0x1824c259dA5B29213de9C42bD38d0a81EF3d5613,
            0x13119ce5E5bf39D648Bc18A1A7078bB9dE13b705,
            10000000000000000,
            10000000000000000,
            5000000000000000,
            5000000000000000,
            0xc086b359A6f82372e1e51B9Afe9fea618d70f7A6,
            10000000000
        );

        vm.stopBroadcast();
    }
}
