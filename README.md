# ERC-20 Token

## Project Overview
This project demonstrates a **simple ERC-20 token** deployed on the **Ethereum Sepolia Testnet**.  
The goal is to create a basic token, deploy it, and demonstrate simple transactions between wallets.

## Token Details
- **Token Name:** CodeNexToken  
- **Symbol:** CNX  
- **Total Supply:** 100 CNX  
- **Decimals:** 18  


## Smart Contract
The smart contract is written in **Solidity (v0.8.x)** and includes:
- `balanceOf` mapping to track wallet balances  
- `transfer` function to send tokens between addresses  
- `Transfer` event for wallet tracking  

**File:** `CodeNexToken.sol`


## Deployment
- **Network:** Sepolia Testnet  
- **Environment:** Remix IDE → Injected Web3 (MetaMask Sepolia)  
- **Constructor Parameter:** `initialSupply = 100`  
- **Steps:**
  1. Compile the contract in Remix  
  2. Connect MetaMask Sepolia to Remix  
  3. Deploy the contract with `initialSupply = 100`  
  4. Confirm deployment transaction in MetaMask  

**Sepolia Etherscan Link:**https://sepolia.etherscan.io/address/0xf17A1C273687Eae151AEB7D22299F830B5d55DE0 

---

## Transactions
- **Transfer Example:**  
  - **From:** Deployer wallet  
  - **To:** Recipient Sepolia wallet  
  - **Amount:** 10 CNX (entered as `10000000000000000000` due to 18 decimals)  
- **Balances After Transfer:**
  - Deployer: 90 CNX  
  - Recipient: 10 CNX  


## Demo / Screenshots
<img width="402" height="691" alt="Screenshot 2025-09-05 183200" src="https://github.com/user-attachments/assets/f312a8c4-1d58-4dfb-8567-fb3879eb0e11" />


