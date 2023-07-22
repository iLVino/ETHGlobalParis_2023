// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.16;

import "forge-std/Script.sol";
import {AllocatorRegistry} from "../src/AllocatorRegistry.sol";

contract AllocatorRegistrysScript is Script {
    function run() public {
        // Get the private key from the .env
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new AllocatorRegistry();

        vm.stopBroadcast();
    }
}
