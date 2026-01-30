# Multi-stage build for Python CLI todo app
FROM python:3.11-slim as base

# Set working directory
WORKDIR /app

# Copy application code
COPY todo/ /app/todo/

# Create data directory for todos.json
RUN mkdir -p /data
ENV TODOS_FILE=/data/todos.json

# Set Python to run in unbuffered mode for better logging
ENV PYTHONUNBUFFERED=1

# Run the application
ENTRYPOINT ["python", "-m", "todo"]
CMD ["list"]

# Development stage with testing tools
FROM base as development

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Production stage - minimal image
FROM base as production

# Health check - verify the app can run
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD python -m todo list || exit 1
