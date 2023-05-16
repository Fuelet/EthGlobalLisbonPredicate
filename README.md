# EthGlobalLisbonPredicate or FueletPay

Transfer funds without knowing the recipient's wallet address by creating a unique QR code and sending it to the recipient

## Project Description

Our project is a user-friendly crypto fund transfer feature that eliminates the need for knowing a recipient's wallet address. Instead, the sender generates a unique QR code to send funds, which the recipient scans and receive funds instantly. This feature, integrated into a simple crypto wallet, showcases the capabilities of the Fuel blockchain, allowing for gasless transactions and superior user experience. It simplifies fund transfers, particularly for individuals new to the Web3 world, and aims to match the user experience of traditional finance apps like Revolute and Cash App. It's a step forward in seamless crypto transactions and improved crypto wallet UX.

## How it's Made

In the mobile app, a user-generated QR code is actually a private-public key pair. The public key forms a predicate, yielding an address. The private key then creates the QR code. Funds are sent to the predicate address, and the QR code is sent to the recipient. Upon scanning the QR code, the recipient gets the private key. Using this key, the same predicate and address are generated. The predicate requires a knowledge of the private key in order to be spent. The user creates a transaction, specifying the predicate address and providing the signature that proves the possession of the private key. This transaction is sent to the blockchain, executing without requiring the user's signature. The user receives the funds without paying gas fees.
