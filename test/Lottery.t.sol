// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {Raffel} from "../src/Lottery.sol";

contract CounterTest is Test {
    Raffel public lottery;

    function setUp() public {
        lottery = new Raffel(20, 25);
    }
}
