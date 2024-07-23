deps:
	sudo apt-get install mkcert -y

watch:
	RULES_DIR=./rules RUSTFLAGS=-Awarnings cargo watch -c -w backend/src -x run

build:
	docker build -t business_rules/editor:latest .

run:
	docker run --rm -p 3000:3000 -v ./rules:/app/rules --init business_rules/editor:latest

dev:
	npm i pnpm -g
	pnpm i
	mkcert --install
	cd cert && mkcert localhost
	cd ..
	pnpm dev
