// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Lottery} from "../src/Lottery.sol";

contract CounterTest is Test {
    Lottery public lottery;

    function setUp() public {
        lottery = new Lottery();
    }
}
