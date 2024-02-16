// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StringSaver {
    string public data;

    function setData(string memory _data) public payable {
        data = _data;
    }
}