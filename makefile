all:
	./prompt_toolkit.sh
	# ./user_contrib.sh Keras Keras
	./straka.sh keras-3.0.5
	./user_contrib.sh PyTorch PyTorch
	./rust_crates.sh https://github.com/tokio-rs/tokio tokio
	./sb3.sh
	./sb3_contrib.sh
