// SPDX-License-Identifier: UNLICENSED
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {ERC721URIStorage} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage {
    uint256 private _nextTokenId;

    constructor() ERC721("BaseTBA", "BTBA") {}

    function mint() external {
        _safeMint(msg.sender, _nextTokenId);
        _setTokenURI(
            _nextTokenId,
            "https://raw.githubusercontent.com/momonts/BaseTBA/refs/heads/main/metadata/0.json"
        );
        _nextTokenId++;
    }
}
