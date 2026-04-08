.PHONY: lint format test

lint:
	ruff check src
	mypy src

format:
	black src
	ruff check --fix src

test:
	pytest tests -x
