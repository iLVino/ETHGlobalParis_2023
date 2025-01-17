// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.16;

import "forge-std/Script.sol";
import {AllocatorConduitDust} from "../src/AllocatorConduitDust.sol";

contract AllocatorConduitDust1 is Script {
    // Runs the script;
    function run() public {
        // Get the private key from the .env
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
       
       new AllocatorConduitDust(0x540806dd407c13a9b2d5d9E1a178983446dc64ce, 0x656479BbEd71e37873044467E2Ce4A6fA1bc3dF6);

        vm.stopBroadcast();
    }
}