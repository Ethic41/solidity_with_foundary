// SPDX-License-Identifier: MIT
// -=-<[ Bismillahirrahmanirrahim ]>-=-
// -*- coding: utf-8 -*-
// @Date    : 2023-07-01 11:17:42
// @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
pragma solidity ^0.8.18;

import {PriceCoverter} from "./PriceConverter.sol";

contract FundMe {

    using PriceCoverter for uint256;

    uint256 public minimumUSD = 5e18;
    address[] public funders;
    mapping(address funder => uint256 amountFunded) public addressToAmountFunded;
    
    function fund() public payable {
        require(msg.value.getCoversionRate() >= minimumUSD, "not enough ETH");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = addressToAmountFunded[msg.sender] + msg.value;
    }

}

