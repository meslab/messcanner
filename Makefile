rust-version:
	rustc --version 		# rustc compiler
	cargo --version 		# cargo package manager
	rustfmt --version 		# rust formatter
	rustup --version 		# rust toolchain manager
	clippy-driver --version	# rust linter

format:
	cargo fmt

lint:
	cargo clippy

test:
	cargo test

run:
	cargo run -r

release:
	cargo build -r
	strip target/release/messcanner

install: release
	cp target/release/messcanner ~/.local/bin

clean:
	cargo clean
	rm -rf target

uninstall: clean
	rm -f ~/.local/bin/messcanner
