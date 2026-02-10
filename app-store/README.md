# SpaceKit App Store

Decentralized app marketplace with NFT-based licensing for the SpaceKit VM. Supports app publishing (with fact package integration), purchase flow, revenue distribution (99% creator / 1% platform), featured apps, categories, and reputation-gated publishing. Uses a main **AppStore** contract and per-app **App License NFT** contracts.

## Main components

- **AppStore contract** (`appstore.rs`) — App registry, discovery, purchase flow (payment + NFT mint), revenue distribution, featured apps, categories, version management.
- **App License NFT** (`app_license_nft.rs`) — One NFT contract per app; ownership = license to use; license types: Personal, Commercial, Enterprise.

For full ABI, operations, and flow see **APPSTORE_README.md**.

## Building

From this directory or workspace root:

```bash
cargo build --target wasm32-unknown-unknown --release
```

Output: `target/wasm32-unknown-unknown/release/app_store_contract.wasm` (or similar from workspace).

## License

Apache 2.0. See the root of the SpaceKit Standard Library for details.
