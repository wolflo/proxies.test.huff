export DAPP_SOLC_VERSION=0.5.10
export SOLC_FLAGS=--optimize

all    :; dapp build
clean  :; dapp clean
test   :; dapp test -v
