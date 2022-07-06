This starter repo deploys uniswap v2 to a locally running geth chain.

The setup we performed is documented in https://github.com/flashbots/mev-boost/pull/187/files .  It instantiates a lighthouse beacon chain
and geth based execution chain, and performs a merge at around block 400.  the setup for the chains should take ~an hour.
