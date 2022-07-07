// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6;

import "forge-std/console.sol";
import "forge-std/Script.sol";
import "../src/UST.sol";
import "../src/WBTC.sol";

contract ApproveScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();

        UST ust = UST(payable(0x1824c259dA5B29213de9C42bD38d0a81EF3d5613));
        WBTC wbtc = WBTC(payable(0x13119ce5E5bf39D648Bc18A1A7078bB9dE13b705));

        ust.approve(
            0xeb493554cd86Cb2DbE8a2113033846F819CD3080,
            // 0xef9407f213F26B20eEDF68691E27e45b84d34E0E,
            10000000000000000000000
        );
        console.log("UST balance:");
        console.log(ust.balanceOf[0xc086b359a6f82372e1e51b9afe9fea618d70f7a6]);

        console.log("WBTC balance:");
        console.log(wbtc.balanceOf[0xc086b359a6f82372e1e51b9afe9fea618d70f7a6]);

        wbtc.approve(
            0xeb493554cd86Cb2DbE8a2113033846F819CD3080,
            //0xef9407f213F26B20eEDF68691E27e45b84d34E0E,
            10000000000000000000000
        );

        vm.stopBroadcast();
    }
}
