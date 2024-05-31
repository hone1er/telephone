// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";

import {TelephoneHack} from "../src/TelephoneHack.sol";

import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script {
    function run() external returns (TelephoneHack) {
        vm.startBroadcast();
        TelephoneHack telephoneHack = new TelephoneHack();
        vm.stopBroadcast();
        return telephoneHack;
    }
}
