# Todo CLI App

A simple command-line todo application for managing daily tasks from the terminal.

## Overview

This lightweight, no-frills task tracker is designed for developers and terminal power users who want to manage tasks without leaving the command line.

## Features

- **Add tasks**: Create new tasks with descriptions
- **List tasks**: View all tasks with their status
- **Complete tasks**: Mark tasks as done
- **Delete tasks**: Remove tasks from the list

## Tech Stack

- **Language**: Python 3.8+
- **Storage**: Local JSON file (`todos.json`)
- **Dependencies**: Python standard library only (no external packages)

## Prerequisites

- Python 3.8 or higher

## Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd <repository-name>
```

2. Make the CLI executable (optional):
```bash
chmod +x todo.py
```

## Usage

### Add a task
```bash
python todo.py add "Buy groceries"
```

### List all tasks
```bash
python todo.py list
```

### Mark a task as complete
```bash
python todo.py complete 1
```

### Delete a task
```bash
python todo.py delete 1
```

## Architecture

The application follows a clean, modular architecture:

```
.
├── src/
│   ├── task.py       # Task data model (dataclass)
│   └── storage.py    # JSON persistence layer
├── todo.py           # CLI entry point
└── todos.json        # Data file (auto-created)
```

### Module Overview

1. **task.py**: Defines the Task dataclass with id, description, completion status, and timestamp
2. **storage.py**: Handles atomic read-modify-write operations on the JSON file
3. **todo.py**: CLI interface using argparse with subcommands

### Data Storage

Tasks are persisted in `todos.json` with the following structure:
```json
{
  "next_id": 2,
  "tasks": [
    {
      "id": 1,
      "description": "Buy groceries",
      "completed": false,
      "created_at": "2026-01-31T10:30:00"
    }
  ]
}
```

## Development

### Running Tests
```bash
python -m pytest tests/
```

### Code Style
This project uses Python's standard library exclusively and follows PEP 8 style guidelines.

## Non-Goals

- No GUI or web interface
- No user accounts or authentication
- No cloud sync or multi-device support

## License

MIT
