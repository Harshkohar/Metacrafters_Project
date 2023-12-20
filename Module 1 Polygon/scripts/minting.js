const { ethers } = require("hardhat"); 
require("dotenv").config();

async function main() {

  const privateKey = process.env.PRIVATEKEY;

  const networkAddress =
    "https://eth-goerli.g.alchemy.com/v2/Bh22s-iYGmFwy-9Dq3New4jIpUES9xZt";

  const provider = new ethers.providers.JsonRpcProvider(networkAddress);

  const signer = new ethers.Wallet(privateKey, provider);

  const contractAddress = "0xC74320d451CF327f1e35Ef302A1275883713843F"; // Deployed Contract Address 

  const OneNFT = await ethers.getContractFactory("anime_nft", signer);
  const contract = await OneNFT.attach(contractAddress);

  await contract.mint(5);

  console.log("NFT Minted Done - [5 Tokens]");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  }); 