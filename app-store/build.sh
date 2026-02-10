#!/bin/bash

# Build app store WASM contracts

set -e  # Exit on error

echo "🔨 Building SpaceKit AppStore Contracts..."
echo ""

# Clean previous builds
echo "🧹 Cleaning previous builds..."
cargo clean 2>/dev/null || true

# Build the AppStore contract library
echo ""
echo "📦 Building AppStore Contract..."
cargo build --lib --target wasm32-unknown-unknown --release

if [ -f "target/wasm32-unknown-unknown/release/app_store_contract.wasm" ]; then
    echo "✅ AppStore contract built successfully!"
    echo "   📦 WASM: target/wasm32-unknown-unknown/release/app_store_contract.wasm"
    ls -lh target/wasm32-unknown-unknown/release/app_store_contract.wasm | awk '{print "   📏 Size:", $5}'
else
    echo "❌ AppStore contract build failed - WASM file not found"
    exit 1
fi

echo ""
echo "📝 Note: App License NFT contract (app_license_nft.rs) is reference code"
echo "   To build it, create a separate Cargo package in ../app-license-nft/"

echo ""
echo "✅ Build complete!"
echo ""
echo "📋 Built Contracts:"
echo "   ✓ AppStore Contract: target/wasm32-unknown-unknown/release/app_store_contract.wasm"
echo ""
