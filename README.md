# ETH-AVAX-PROOF-Intermediate-EVM-Course-Module-3
Smart contract to create your own token and deploy it using HardHat or Remix.
# Description
This program is a MyToken contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain.
The contract have a three function that mint and burn token of the program and compile and run successfully the smart contract.
## Getting Started
The mint function is a public function. It takes two parameters: _myaddress (the address to which the tokens will be minted) and _myvalue (the number of tokens to mint). 
Inside the function, the _mint function to create and assign the specified amount of tokens to the given address.



To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., functionError.sol). Write the code in the file.
```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Token{
    // public variables here
    string public tokenName="ComputerScience";
    string public TokenAbbrv="CS";
    uint public totalsupply=0;
    // mapping variable here
    mapping (address=>uint) public _mybalance;
    // mint function
    function mint(address _myaddress, uint _myvalue) public {
        totalsupply+=_myvalue;
        _mybalance[_myaddress]+=_myvalue;
    }
}
```
# Connecting Local Hardhat Network with Remix
Follow the steps below to connect your local Hardhat network with Remix and interact with a contract.

Step 1: Navigate to Project Directory
Open your terminal and navigate to the project directory where your Solidity contract is located.

Step 2: Run `npm install @remix-project/remixd` Command
In the terminal, run the following command to start the `remixd` service:
```
npx remixd -s <project_directory>--remix-ide https://remix.ethereum.org
```
Replace `<project_directory>` with the absolute path to your project directory. This will create a connection between Remix IDE and your local project directory.

Step 3: Open Remix IDE
Open your web browser and go to [Remix IDE](https://remix.ethereum.org).

Step 4: Connect with Localhost Workspaces
In Remix IDE, Switch "default_workspace" to "Localhost" button in the top-right "Workspaces" corner. This will connect your project directory on remix IDE.

Step 5: Compile the contract
In the Remix IDE, find and open your ".sol" file in your contract folder and switch to the "Solidity Compiler" tab in the left panel. Click on the "Compile" button to compile the contract. Make sure the compiler version matches the pragma statement in your contract.

Example Contract:
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    // Contract code here...
}
```
Step 6: Deploy and Interact with the Contract

Step 7:Confirm the deployment transaction in Remix.

Step 8: Wait for the deployment transaction to be confirmed on the local Hardhat network.

Step 9: Once the contract is deployed, you will see the contract address in the Remix console. Make note of this address for future interactions.

## License

This project is licensed under the MIT License
