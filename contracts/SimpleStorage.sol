// SPDX-License-Identifier: MIT
// -=-<[ Bismillahirrahmanirrahim ]>-=-
// -*- coding: utf-8 -*-
// @Date    : 2023-06-28 14:07:19
// @Author  : Dahir Muhammad Dahir (dahirmuhammad3@gmail.com)
pragma solidity 0.8.18;

contract SimpleStorage {

    uint256 myFavoriteNumber = 88;

    // uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    Person public pat = Person({
        favoriteNumber: 7,
        name: "Pat"
    });


    function store(uint256 $favoriteNumber) public {
        myFavoriteNumber = $favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(
            Person(_favoriteNumber, _name)
        );
    }
}

