update:
	apt update -y
install:
	apt install python-pip -y
	pip install -r requirements.txt

test:
        #python -m pytest -vv --cov=myrepolib tests/*.py
        #python -m pytest --nbval notebook.ipynb


lint:
	pylint --disable=R,C hello.py

all: update install lint test
