// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.16;

import "forge-std/Script.sol";
import 

contract Dust1 is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
    }

    // Runs the script; deploys MyToken and Container
    function run() public {
        // Get the private key from the .env
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Make a new token
        MyToken token = new MyToken(1000);

        // Make a new container
        new Container(token, 500);

        vm.stopBroadcast();
    }
}

