# Prerequisites
1. NodeJS installed
2. Docker in running state on the local machine

## Quick install

Execute :
```shell
./start.sh
```
in order to quickly operate :
1. Install NodeJS packages
2. Deploy the Quorum Blockchain network (4 nodes) with a 3s block time
3. Deploy blockchain explorer, accessible on localhost:8700
4. Deploy Anchoring smart contract
5. Deploy ethAdapter, accessible on localhost:3000

# Installation

1. Execute npm install
```shell
./init.sh
```

2. Deploy quorum blockchain network
```shell
./quorum/deploy-quorum.sh
```

3. Deploy blockchain explorer, accessible on localhost:8700
```shell
./blockchain-explorer/deploy-explorer.sh
```

4. Deploy Anchoring smart contract
```shell
./ethAdapter/deploy-anchoringSC.sh
```

5. Deploy ethAdapter, accessible on localhost:3000
```shell
./ethAdapter/deploy-ethAdapter.sh
```

# Upgrade the ethAdapter installation

The process will 
1. Remove the existing ethAdapter docker image from the local repository
2. Remove the ethAdapter installation
3. Build a new ethAdapter docker image without using the local cache
4. Deploy the ethAdapter

Execute :
```shell
./ethAdapter/upgrade-ethAdapter.sh
```

# Uninstall

In order to completely uninstall the Quorum blockchain network, blockchain explorer and ethAdapter and remove the volumes associated with this installation, run :
```shell
./clean.sh
```


