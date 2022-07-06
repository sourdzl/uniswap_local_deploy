source .env
// install foundry
curl -L https://foundry.paradigm.xyz | bash

// deploy uniswap v2 to local geth node, from the specified account in .env
cd lib/v2-core && forge create UniswapV2Factory \
--rpc-url $(ETH_RPC_URL) \
--private-key $(PRIVATE_KEY) \
--constructor-args $(PUBLIC_KEY)