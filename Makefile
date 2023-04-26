.PHONY: clean install build deploy all

all: clean install build deploy

clean: 
	rm -rf build/ dist/ .venv/

install:
	python3 -m venv .venv	
	.venv/bin/pip3 install .[test]

build:
	.venv/bin/python3 setup.py bdist_wheel

deploy:
	docker build -tflask-docker .