"""Setup script for todo CLI application."""
from setuptools import setup, find_packages

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setup(
    name="todo-cli",
    version="0.1.0",
    author="Todo CLI Contributors",
    description="A simple command-line todo application",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/jiaminc-pdd/Hello_World",
    packages=find_packages(),
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Intended Audience :: Developers",
        "Topic :: Utilities",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Python :: 3.11",
        "Programming Language :: Python :: 3.12",
    ],
    python_requires=">=3.8",
    entry_points={
        "console_scripts": [
            "todo=todo.__main__:main",
        ],
    },
)
