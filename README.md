# Open-source Rules Engine Editor with build in Simulator

URL: https://editor.gorules.io

## Production

*Takes a lot of time to build, definitely not suitable for development!*

Build the image:
```bash
make build
```

Run the image and listen in port 3000:
```bash
make run
```
Open the frontend [here](http://localhost:3000/)

**Note:** delete browser cache if you don't see changes.

## Dev

*Takes a lot of the time the first time*

Rust backend, need to install rust **nightly**. Install `rustup` and then `rustup override set nightly`.
```bash
make watch
```

Frontend: [link](https://localhost:5173/)
```bash
make dev
```

*Both the backend and frontend have watchers, development is super enjoyable!*

## Missing deps?

```bash
make deps
```