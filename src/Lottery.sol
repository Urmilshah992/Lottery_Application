// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

/* @title :- A simple raffel Contract
   @Author :- urmil_shah
*/
contract Raffel {
    /*custom Error */
    error notEnoughEth();

    /*statevariable*/
    uint256 private immutable i_enterancefee;
    uint256 private immutable i_interval;
    address payable[] public player;
    uint256 private s_lasttimestamp;

    /*events*/
    event enterraffale(address indexed player);

    constructor(uint256 _enterancefee, uint256 _interval) {
        i_enterancefee = _enterancefee;
        i_interval = _interval;
        s_lasttimestamp = block.timestamp;
    }

    function enterraffel() external payable {
        if (msg.value < i_enterancefee) {
            revert notEnoughEth();
        }
        player.push(payable(msg.sender));
        emit enterraffale(msg.sender);
    }

    function getwinner() external view {
        if (block.timestamp - s_lasttimestamp < i_interval) {
            revert();
        }
    }

    /* getter Function8 */
    function getenterancefee() external view returns (uint256) {
        return i_enterancefee;
    }
}
