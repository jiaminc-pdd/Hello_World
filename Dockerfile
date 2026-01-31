# Multi-stage Dockerfile for Python CLI Todo App

FROM python:3.11-slim as base

# Set working directory
WORKDIR /app

# Copy application files
COPY src/ ./src/
COPY todo.py .
COPY requirements.txt .

# Install dependencies (currently none, but kept for future)
RUN pip install --no-cache-dir -r requirements.txt

# Create data directory
RUN mkdir -p /app/data

# Set environment to use data directory for todos.json
ENV TODOS_FILE=/app/data/todos.json

# Run as non-root user
RUN useradd -m -u 1000 todouser && \
    chown -R todouser:todouser /app
USER todouser

# Default command shows help
ENTRYPOINT ["python", "todo.py"]
CMD ["--help"]
