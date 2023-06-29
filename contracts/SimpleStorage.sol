// SPDX-License-Identifier: MIT
// -=-<[ Bismillahirrahmanirrahim ]>-=-
// -*- coding: utf-8 -*-
// @Date    : 2023-06-28 14:07:19
// @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
pragma solidity 0.8.18;

contract SimpleStorage {
    uint256 favoriteNumber = 88;
    
    function store(uint256 $favoriteNumber) public {
        favoriteNumber = $favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
}

