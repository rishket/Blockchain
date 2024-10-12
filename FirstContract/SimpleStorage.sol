// SPDX-License-Identifier: MIT

pragma solidity >=0.8.28;

contract SimpleStorage{

    uint256 favoriteNumber;
    mapping(string => uint256) public nameToFavoriteNumber;
    People[] public people;

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }



}
