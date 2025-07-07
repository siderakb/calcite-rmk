# Calcite RMK Firmware

[RMK](https://github.com/HaoboGu/rmk)

```bash
cd calcite60_v2
```

build:

```bash
cargo build --release
```

make .uf2:

```bash
cargo make uf2 --release
```

flash with probe-rs:

```bash
cargo run --release
```
