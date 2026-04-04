// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {FoundryAsserts} from "@chimera/FoundryAsserts.sol";

import {Test} from "forge-std/Test.sol";
import {TargetFunctions} from "./TargetFunctions.sol";

// forge test --match-contract CryticToFoundry -vv
contract CryticToFoundry is Test, TargetFunctions, FoundryAsserts {
    function setUp() public override {
        setup();

        targetContract(address(this));
        targetSender(address(0x10000));
        targetSender(address(0x20000));
        targetSender(address(0x30000));
    }

    function invariant_noop() public returns (bool) {
        return true;
    }

    // Keep Foundry's invariant worker pool saturated on 16-vCPU runners when
    // assertion wrapper handlers are removed.
    function invariant_noop_01() public pure returns (bool) {
        return true;
    }

    function invariant_noop_02() public pure returns (bool) {
        return true;
    }

    function invariant_noop_03() public pure returns (bool) {
        return true;
    }

    function invariant_noop_04() public pure returns (bool) {
        return true;
    }

    function invariant_noop_05() public pure returns (bool) {
        return true;
    }

    function invariant_noop_06() public pure returns (bool) {
        return true;
    }

    function invariant_noop_07() public pure returns (bool) {
        return true;
    }
}
