source .env
// install foundry
curl -L https://foundry.paradigm.xyz | bash
foundryup

// deploy a fake dollar coin
 forge create UST \
 --rpc-url $(ETH_RPC_URL) \
 --private-key $(PRIVATE_KEY) \
 --constructor-args $(PUBLIC_KEY) # mints a bunch to this address

# UST deployed to 0x1824c259da5b29213de9c42bd38d0a81ef3d5613

// deploy WETH
cd cd lib/WETH10 && forge create WETH10 \
 --rpc-url $(ETH_RPC_URL) \
 --private-key $(PRIVATE_KEY) \
 --constructor-args $(PUBLIC_KEY) # vanilla WETH

# WETH deployed to 0x293d01a0fc9ce0b706946a6edd1204e3375bb43c

// deploy uniswap v2 to local geth node, from the specified account in .env
cd ../v2-core && forge create UniswapV2Factory \
--rpc-url $(ETH_RPC_URL) \
--private-key $(PRIVATE_KEY) \
--constructor-args $(PUBLIC_KEY)

# uniswap v2-core deployed to 0xd9af4279899c44f2727bc4ac579c635610e5b495


# create a pair pool between WETH and UST

cast send "0xd9af4279899c44f2727bc4ac579c635610e5b495" \
"createPair(address,address)" \
"0x1824c259da5b29213de9c42bd38d0a81ef3d5613" \
"0x293d01a0fc9ce0b706946a6edd1204e3375bb43c" \
--from $(PUBLIC_KEY) --rpc-url $(ETH_RPC_URL)

# deploy uniswap v2-periphery for utils for interaction with uniswap
cd ../v2-periphery && yarn

forge create UniswapV2Router02 \
--rpc-url $(ETH_RPC_URL) --private-key $(PRIVATE_KEY) \
--constructor-args "0xd9af4279899c44f2727bc4ac579c635610e5b495"\
 "0x293d01a0fc9ce0b706946a6edd1204e3375bb43c" # uniswap v2 core and WETH contract addresses
 
 # uniswap v2-router deployed at 0xef9407f213f26b20eedf68691e27e45b84d34e0e

