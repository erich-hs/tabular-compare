install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C,W1203,E1101 compare utils

test:
	python -m pytest tests/test_compare.py &&\
		python -m pytest tests/test_app.py

format:
	black src/tabularcompare/*.py