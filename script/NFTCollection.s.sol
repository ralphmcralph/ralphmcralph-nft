// SPDX-License-Identifier: LGPL-3.0-only

pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {NFTCollection} from "../src/NFTCollection.sol";

contract DeployNFTCollection is Script {
    
    function run() external returns(NFTCollection) {
        uint256 deployPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployPrivateKey);
        string memory name_ = "RalphMcRalph NFT";
        string memory symbol_ = "RMRNFT";
        uint256 totalSupply_ = 2;
        string memory baseUri_ = "ipfs://bafybeihluphxhlx5dcat3e26twlgofqpdklhriqhrnpyuxr4qruzv7sbiq/";

        NFTCollection nftcollection = new NFTCollection(name_, symbol_, totalSupply_, baseUri_);
        vm.stopBroadcast();

        return nftcollection;
    }
}
