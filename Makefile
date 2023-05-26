SHELL := /bin/bash

init:
	python3 -m venv venv
	source venv/bin/activate && pip install --upgrade pip wheel
	source venv/bin/activate && pip install -r requirements.txt

run:
	source venv/bin/activate && jupyter notebook

clean:
	find . -name "*.pyc" -exec rm -f {} \;
	find . -name "*.ipynb_checkpoints" -exec rm -rf {} \;

.PHONY: init run clean
