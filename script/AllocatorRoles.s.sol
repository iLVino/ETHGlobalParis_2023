// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.16;

import "forge-std/Script.sol";
import {AllocatorRoles} from "../src/AllocatorRoles.sol";

contract AllocatorRolesScript is Script {
    // Runs the script;
    function run() public {
        // Get the private key from the .env
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
       
       new AllocatorRoles();

        vm.stopBroadcast();
    }
}