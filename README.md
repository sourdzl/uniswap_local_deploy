This starter repo deploys uniswap v2, a dummy ERC20, and WETH  to a locally running geth chain.  The intended use case is to develop flashbots
mev-boost related infrastructure for post-merge ethereum.

You will need to update the .env file to include a private key/public key pair.  the default eth RPC should be fine if you follow the instructions below.

After `.env` is set, run `./osx_install.sh` from the root of the repository to deploy a uniswap v2 to your local testnet.

The setup we performed is documented in https://github.com/flashbots/mev-boost/pull/187/files .  It instantiates a lighthouse beacon chain
and geth based execution chain, and performs a merge at around block 400.  the setup for the chains should take ~an hour.
