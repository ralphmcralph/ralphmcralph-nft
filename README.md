# 🖼️ RalphMcRalph NFT – Minimal Gas-Efficient NFT Collection on Ethereum

![Solidity](https://img.shields.io/badge/Solidity-0.8.24-blue?style=flat&logo=solidity)
![License](https://img.shields.io/badge/License-LGPL--3.0--only-green?style=flat)
![Tested](https://img.shields.io/badge/Deploy-OpenSea-blue?style=flat&logo=opensea)

---

## 📌 Description

**RalphMcRalph NFT** is a minimalist ERC721 collection built with Solidity, optimized for gas-efficiency and deployable using Foundry.

The collection includes:

- 🎨 Fully on-chain minting logic
- 🧩 Custom metadata resolution using `baseURI`
- 🔢 Configurable total supply
- 🧪 Deploy script with Foundry `forge-std/Script.sol`

✅ Deployed and visible on [OpenSea Marketplace](https://opensea.io/collection/ralphmcralph-nft)

---

## 📷 Preview

![NFT Sample](./uri/image.avif)

---

## 📁 Structure

```
├── src/
│   └── NFTCollection.sol            # Main ERC721 contract
├── script/
│   └── DeployNFTCollection.s.sol    # Deployment script using Foundry
├── uri/
│   └── image.avif                   # NFT image example
```

---

## 🚀 Usage

### 🧱 Constructor Parameters

```solidity
constructor(
    string memory name_,
    string memory symbol_,
    uint256 totalSupply_,
    string memory baseUri_
)
```

Example:

```solidity
"RalphMcRalph NFT", "RMRNFT", 2, "ipfs://bafybeihluphxhlx5dcat3e26twlgofqpdklhriqhrnpyuxr4qruzv7sbiq/"
```

---

## 🛠 Functions

### `mint()`

Mints one NFT per call. Reverts if supply cap is reached.

```solidity
function mint() external
```

---

### `tokenURI(uint256 tokenId)`

Returns the full metadata URI:

```solidity
ipfs://[base]/[tokenId].json
```

---

## 📦 Deployment (Foundry)

```bash
forge script script/DeployNFTCollection.s.sol:DeployNFTCollection \
  --rpc-url $RPC_URL \
  --broadcast \
  --private-key $PRIVATE_KEY \
  --verify
```

---

## 📄 License

Licensed under the **GNU Lesser General Public License v3.0** – see [`LICENSE`](./LICENSE)

---

## 🙋 Author

Made with ❤️ to demonstrate ERC721 minimal practices for NFT collections. Explore it on OpenSea:

🔗 [opensea.io/collection/ralphmcralph-nft](https://opensea.io/collection/ralphmcralph-nft)
