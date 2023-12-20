const hre = require("hardhat");

const fs = require("fs");

async function main() {
  
  const NFT = await hre.ethers.getContractFactory("anime_nft");


  const nft = await NFT.deploy();

  await nft.deployed();

  console.log("Deployed Address ", nft.address);

  fs.writeFileSync(
    "metadata/deployaddress.js",
    `
    export const nftAddress = "${nft.address}"
  `
  );
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });