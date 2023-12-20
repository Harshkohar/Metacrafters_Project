## Project Introduction - 
This provides an overview of a custom zero-knowledge circuit implemented using the Circom language. The circuit, demonstrates the creation of logic gates and their connections to create a custom computation. The resulting circuit can be used to generate zero-knowledge proofs for certain computations while keeping the input values private.

## ZK Snarks Circuit Introduction 

Zero-Knowledge Succinct Non-Interactive Arguments of Knowledge (zk-SNARKs) are cryptographic constructs that allow one party (the prover) to prove to another party (the verifier) that a certain statement is true without revealing any information about the statement itself. zk-SNARKs are particularly useful in privacy-preserving applications and blockchain technologies.

A zk-SNARK circuit refers to the logical structure or set of computations that the prover and verifier engage in to generate and verify the zero-knowledge proof. The term "circuit" is used because it represents a sequence of logical gates and operations that transform input data into output data, forming a computational circuit. The design of this circuit is crucial in zk-SNARKs because it determines what computations can be efficiently proven and verified with zero-knowledge.

## Circuit Implementations

Inputs: The circuit takes two input signals, A and B, which serve as operands for the computation.
Gates: The circuit uses three logic gates: AND, NOT, and OR. These gates are defined as separate templates.
Intermediate Signals: The circuit has two intermediate signals, X and Y, which are the outputs of the AND and NOT gates, respectively.
Output: The final output signal, Q, is computed using the OR gate with inputs from the intermediate signals.

## Circuit Structure 

```
├── multiplier
│   ├── circuit.circom
│   ├── input.json
│   └── out
│       ├── circuit.wasm
│       ├── multiplier.r1cs
│       ├── multiplier.vkey
│       └── multiplier.zkey
├── new-circuit
└── powersOfTau28_hez_final_12.ptau
```

## Getting Started 
```
Write a correct circuit.circom implementation
Compile the circuit to generate circuit intermediaries
Generate a proof using inputs A=0 B=1
Deploy a solidity verifier to Sepolia or Mumbai Testnet
Call the verifyProof() method on the verifier contract and assert output is true
```

## Steps
```
Commands
1. npm i
2. npx hardhat circom
3. npx hardhat run scripts/deploy.js --network mumbai
```

## Advantages

Zero-Knowledge Succinct Non-Interactive Arguments of Knowledge (zk-SNARKs) offer a revolutionary approach to preserving privacy in digital interactions. One of their key advantages lies in their ability to enable privacy preservation while proving the validity of a statement. In applications such as financial transactions and identity verification, users can demonstrate the correctness of their claims without disclosing sensitive details. This ensures a higher level of confidentiality compared to traditional verification methods.



