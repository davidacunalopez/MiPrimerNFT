// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    uint256 token_count;
    address owner = 0x434ab6b451Ff9fe7Acd259213a895D2e9A0b772A;

    constructor() ERC721("My NFT David", "MNFT") {}

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_ownerOf(tokenId) != address(0), "ERC721Metadata: URI query for nonexistent token");
        return "<https://ipfs.io/ipfs/QmfRUyTq98v3a8pdAEv6vdGteaYFtXB8zepAdaDKGh3CAQ>";
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function.");
        _;
    }

    function mintNFT(address to) public onlyOwner()
    {
        token_count  += 1;
        _mint(to, token_count);
    }
}