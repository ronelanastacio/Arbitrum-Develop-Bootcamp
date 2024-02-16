// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RORO is ERC721URIStorage {
    uint256 tokenId;

    constructor() ERC721("RORO", "ROFT") {}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "ipfs://bafkreid4eeyfv3ltve64n5vwbrapyr7yqscehzudhwvi2jmmo7g4xwviam"
        );
        tokenId++;
    }
}