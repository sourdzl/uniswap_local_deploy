// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6;

import "forge-std/Script.sol";
import "../lib/WETH10/contracts/WETH10.sol";

contract ApproveWETHScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();

        WETH10 weth = WETH10(
            payable(0x293d01A0fC9CE0b706946a6Edd1204e3375BB43c)
        );

        weth.approve(
            0xef9407f213F26B20eEDF68691E27e45b84d34E0E,
            100000000000000000000
        );

        address(weth).transfer(5000000000000000000);
        //weth.call(5000000000000000000);

        vm.stopBroadcast();
    }
}
