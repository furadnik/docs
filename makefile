DOCSET_NAMES=django-rest-framework.docset Gymnasium.docset Jinja.docset keras-3.2.0.docset prompt_toolkit.docset PyTorch.docset SB3_Contrib.docset Stable_Baselines3.docset tokio.docset torchaudio.docset torchvision.docset
DOCSETS=$(addprefix build/,$(DOCSET_NAMES))
DOCSET_ZIPS=$(DOCSETS:.docset=.tgz)

all: $(DOCSET_ZIPS) docsets.tar.gz

docsets.tar.gz: $(DOCSETS)
	cd build && tar -cvzf $@ $(DOCSET_NAMES)
	mv build/docsets.tar.gz .

%.tgz: %.docset
	tar -cvzf $@ $<

build/prompt_toolkit.docset:
	./prompt_toolkit.sh

build/keras-3.2.0.docset:
	./straka.sh keras-3.2.0

build/PyTorch.docset:
	./user_contrib.sh PyTorch PyTorch

build/torchvision.docset:
	./user_contrib.sh torchvision torchvision

build/torchaudio.docset:
	./user_contrib.sh torchaudio torchaudio

build/django-rest-framework.docset:
	./user_contrib.sh Django_REST_Framework django-rest-framework

build/tokio.docset:
	./rust_crates.sh https://github.com/tokio-rs/tokio tokio

build/SB3_Contrib.docset:
	./sb3_contrib.sh

build/Stable_Baselines3.docset:
	./sb3.sh

build/Jinja.docset:
	./jinja.sh

build/Gymnasium.docset:
	./gymnasium.sh
