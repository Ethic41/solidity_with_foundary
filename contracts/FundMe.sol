// SPDX-License-Identifier: MIT
// -=-<[ Bismillahirrahmanirrahim ]>-=-
// -*- coding: utf-8 -*-
// @Date    : 2023-07-01 11:17:42
// @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
pragma solidity ^0.8.18;



contract FundMe {

    uint256 public minimumUSD = 5;
    
    function fund() public payable {
        require(msg.value >= minimumUSD, "not enough ETH");
    }
}

