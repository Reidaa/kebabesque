CSV_FILE = kebabs.csv
SQLITE_FILE = kebabs.sqlite3

.PHONY: run
run:
	uv run app.py

.PHONY: format
format:
	uv run ruff check --select I --fix
	uv run ruff format

.PHONY: fmt
fmt: format

.PHONY: lint
lint:
	uv run ruff check

.PHONY: check
check:
	uv run mypy app.py

.PHONY: csv
csv:
	sqlite3 -header -csv "./${SQLITE_FILE}" "SELECT * FROM kebab_shops ORDER BY name;" > $(CSV_FILE)