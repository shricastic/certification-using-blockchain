# Certification Using Blockchain

This project is a simple blockchain-based certification management system built using Truffle, Ganache, and Node.js. It allows users to add, retrieve, and verify certificates stored on the Ethereum blockchain.

## Installation

To run this project on your machine, you need to have the following prerequisites installed:

- Node.js
- Truffle
- Ganache

### Steps:

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/Shricastic7/certification-using-blockchain
   ```

2. **Install Dependencies**:

   Navigate into the project directory and install the necessary dependencies using npm:

   ```bash
   cd certification-using-blockchain
   npm install
   ```

3. **Start Ganache**:

   Start Ganache, which provides a local blockchain environment:

   - Open the Ganache application.
   - Start a new workspace or use an existing one.
   - Make note of the RPC server address (usually `http://127.0.0.1:7545`).

4. **Compile Contracts**:

   Compile the smart contracts using Truffle:

   ```bash
   truffle compile
   ```

5. **Migrate Contracts**:

   Deploy the smart contracts to the local blockchain:

   ```bash
   truffle migrate --network ganache
   ```

   Replace `ganache` with the network configuration name in your `truffle-config.js` or `truffle-config.json`.

6. **Start Node.js Backend**:

   Start the Node.js backend server:

   ```bash
   npm run start
   ```

   This will start the backend server and connect it to your local blockchain.

## Usage

- Use the provided endpoints in your Node.js application to interact with the smart contracts.
- For example, you can add certificates, retrieve certificates, and verify certificate authenticity using the exposed endpoints.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

This project is licensed under the [MIT License](LICENSE).
