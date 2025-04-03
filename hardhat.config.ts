import path from 'path';
import { HardhatUserConfig } from "hardhat/config";
require ('dotenv').config({ path: path.resolve(__dirname, '.env') });
import "@nomicfoundation/hardhat-toolbox";

const {PRIVATE_KEY} = process.env;
const {RPC_URL} = process.env;

const config: HardhatUserConfig = {
  solidity: "0.8.28",
  networks: {
    base_sepolia: {
      accounts: [PRIVATE_KEY as string],
      url: RPC_URL,
      chainId: 84532
    }
  }
};

export default config;
