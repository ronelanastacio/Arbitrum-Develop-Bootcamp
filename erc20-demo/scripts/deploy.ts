import { ethers } from "hardhat";

async function main() {
  const token = await ethers.deployContract("Roughnel", [
    "0xc0da554aef07de2e80ee2441609883ada32ce739"
  ]);

  await token.waitForDeployment();

  console.log(
    `Token with deployed to ${token.target}`
  );
}

// We recommerm contracts/Lock.solnd this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
