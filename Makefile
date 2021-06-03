install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=hello test_hello.py
	#python -m pytest --nbval notebook.ipynb

lint:
	#pylint 

format:
	#black is a python code formater
	black *.py

all: install lint test