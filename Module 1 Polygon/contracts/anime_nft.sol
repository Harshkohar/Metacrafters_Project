// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract anime_nft is ERC721A {
    address public owner;
    uint256 public maxQuantity = 5;
    string public pintacloudURI = "https://gateway.pinata.cloud/ipfs/QmZe6hR2Mp5Zz26hUD9vsihxRzBF5dSJXnvi2VXETGnstF/";
    string public prompt = "Experience the whimsical world of AI-generated images in our hilarious animation series! Watch as artificial intelligence unleashes its creativity, bringing to life a riot of funny and entertaining characters.";

    constructor() ERC721A("Anime", "AI") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can mint new tokens");
        _;
    }

    function mint(uint256 quantity) external payable onlyOwner {
        require(totalSupply() + quantity <= maxQuantity, "Exceeded the limit");
        _mint(msg.sender, quantity);
    }

    function _baseURI() internal view override returns (string memory) {
        return pintacloudURI;
    }

    function getDescription() external view returns (string memory) {
        return prompt;
    }
}
