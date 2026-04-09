.PHONY: lint format test

lint:
	uv run ruff check src tests
	uv run mypy src tests

format:
	uv run black src tests
	uv run ruff check --fix src tests

test:
	uv run pytest tests -x
