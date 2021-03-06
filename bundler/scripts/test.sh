#!/usr/bin/env bash
set -eux

cargo test --no-run

cargo test --lib
cargo test --test fixture
(cd ../spack && cargo test --test fixture)
cargo test --test deno $@ -- --nocapture