all:
	./prompt_toolkit.sh
	./user_contrib.sh Keras Keras
	./user_contrib.sh PyTorch PyTorch
	./rust_crates.sh https://github.com/tokio-rs/tokio tokio
	./sb3.sh
	./sb3_contrib.sh
