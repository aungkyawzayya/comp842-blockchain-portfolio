# COMP842 Applied Blockchains – Individual Assessment Portfolio

Python and Solidity code for the COMP842 Applied Blockchains and Cryptocurrencies
individual technical assessment (Semester 2, 2026).

| Exercise | Topic | File |
|---|---|---|
| 1 | Blockchain structure, Merkle Root and tamper detection | [`ex1_blockchain.ipynb`](ex1_blockchain.ipynb) |
| 2 | Proof of Work – mining, difficulty and probability | [`ex2_proof_of_work.ipynb`](ex2_proof_of_work.ipynb) |
| 3 | Elliptic Curve Cryptography (ECDSA, public key compression) | [`ex3_ecdsa.ipynb`](ex3_ecdsa.ipynb) |
| 6 | Solidity smart contract (modified Storage contract) | [`ex6_contract/Storage.sol`](ex6_contract/Storage.sol) |

Exercise 6 contract deployed to Ethereum Sepolia at
[`0x770AaccD26ca3Cad01799fd994B8A0CA8a79DA50`](https://sepolia.etherscan.io/address/0x770AaccD26ca3Cad01799fd994B8A0CA8a79DA50).

Exercises 4 (scalability calculations) and 5 (MetaMask / Sepolia transaction) have no code;
they are answered in the submitted PDF.

## How to run

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
jupyter notebook
```

## Note on results

Exercises 1 and 2 were run in Google Colab and Exercise 3 in VS Code (Jupyter). The saved
outputs match the screenshots in the submitted PDF. Hashes, timestamps, timings and ECDSA keys are different on every run (mining and key
generation are random), so re-running a notebook will not reproduce exactly the same values.
Generated `.pem` key files are excluded from the repository by `.gitignore`.
