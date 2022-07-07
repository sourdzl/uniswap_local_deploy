// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6;

import "forge-std/Script.sol";
import "../src/UST.sol";

contract ApproveUSTScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();

        ERC20 ust = UST(payable(0x1824c259dA5B29213de9C42bD38d0a81EF3d5613));

        ust.approve(
            0xef9407f213F26B20eEDF68691E27e45b84d34E0E,
            10000000000000000000
        );

        vm.stopBroadcast();
    }
}
