# COMP842 Applied Blockchains – Individual Assessment Portfolio

Python and Solidity code for the COMP842 Applied Blockchains and Cryptocurrencies
individual technical assessment (Semester 2, 2026).

| Exercise | Topic | File |
|---|---|---|
| 1 | Blockchain structure, Merkle Root and tamper detection | [`ex1_blockchain.ipynb`](ex1_blockchain.ipynb) |
| 2 | Proof of Work – mining, difficulty and probability | [`ex2_proof_of_work.ipynb`](ex2_proof_of_work.ipynb) |
| 3 | Elliptic Curve Cryptography (ECDSA, public key compression) | _coming soon_ |
| 6 | Solidity smart contract (modified Storage contract) | _coming soon_ |

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

The notebooks were run in Google Colab, and the saved outputs match the screenshots in the
submitted PDF. Hashes, timestamps and timings are different on every run (Proof of Work
mining is random), so re-running a notebook will not reproduce exactly the same numbers.
