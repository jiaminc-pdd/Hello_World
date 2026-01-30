# Todo CLI App

A simple command-line todo application for managing daily tasks from the terminal.

## Overview

A lightweight, no-frills task tracker built for developers and terminal power users. Stores tasks locally in a JSON file with no cloud sync or authentication required.

## Features

- **Add tasks**: Create new todo items with descriptions
- **List tasks**: View all tasks with their status
- **Mark complete**: Mark tasks as done
- **Delete tasks**: Remove tasks from the list

## Prerequisites

- Python 3.8 or higher
- No external dependencies (uses Python standard library only)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/jiaminc-pdd/Hello_World.git
cd Hello_World
```

2. The application uses only Python standard library, so no additional packages need to be installed.

## Usage

The application is run as a Python module. Use the following commands:

### Add a task
```bash
python -m todo add "Buy groceries"
```

### List all tasks
```bash
python -m todo list
```

### Mark a task as complete
```bash
python -m todo complete <task-id>
```

### Delete a task
```bash
python -m todo delete <task-id>
```

## Configuration

By default, tasks are stored in `todos.json` in the current directory. You can customize the storage location by setting the `TODOS_FILE` environment variable:

```bash
export TODOS_FILE=/path/to/custom/todos.json
python -m todo list
```

## Architecture

The application follows a clean, modular architecture:

```
todo/
├── __main__.py       # Entry point and CLI orchestration
├── cli_parser.py     # Command-line argument parsing
├── task_model.py     # Task data structure and validation
├── task_manager.py   # Business logic and CRUD operations
└── storage.py        # JSON file persistence layer
```

### Module Responsibilities

- **task_model**: Defines the Task dataclass with fields (id, description, completed, timestamps)
- **storage**: Handles reading/writing tasks to JSON file with error handling
- **cli_parser**: Parses command-line arguments using argparse subcommands
- **task_manager**: Orchestrates CRUD operations and business logic
- **__main__**: Application entry point that wires together parser and manager

## Development

### Project Structure
The project uses PDD (Prompt-Driven Development) for code generation. The architecture is defined in `architecture.json`.

### Running Tests
```bash
python -m pytest tests/
```

### Code Style
The codebase follows PEP 8 style guidelines.

## License

MIT License - See LICENSE file for details

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.
