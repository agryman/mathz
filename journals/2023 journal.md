# 2023 Journal

## 2023-10-29

### 3:50 PM

My goal today is to start development of a tool that provides
an overview of the contents of the `mathz` library.
* The library consists of a set of articles.
* Each article contains 0 or more declarations of new names.
* A declaration may be part of a definition, in which case it
fully defines the name.
* Each name is either a schema name or a global variable name.
* Each name refers to 0 or more previously declared names.
* Each article also contains 0 or more propositions that further
constrain the previously defined names.
* Propositions are not named but are identified by their location in the article.
* We can therefore view the contents of the library as a directed graph.
* The graph contains three kinds of nodes:
  * Articles - identified by their file name
  * Declarations - identified by their name
  * Propositions - identified by their article and line number
* The graph contains two kinds of arcs:
  * Containment - articles contain declarations and propositions
  * References - declarations and propositions refer to names

The `fuzz` command has a `-l` option that generates a Lisp-like 
representation of the article contents.
I am going to write a Python program that parses this representation
and generates the graph.

* [x] Update `brew`. 
  * Run `brew doctor`. Need to update. 
  * Run `brew update`. Lists code that needs to be updated. 
  * Run `brew upgrade`. Success. 
  * As a side effect, I upgraded to Python 3.11.6. 

* [x] Upgrade to Python 3.12.
  * Is Python 3.12 available for MacOS Sonoma? Yes.
  * Run `brew install python@3.12`. Success. 
  * The installation procedure has left `python3.11` linked to `python3`. 
  * Rather than play around with `brew`, I can run Python 3.12 using the command `python3.12`.

* [x] Create a virtual environment.
  * Run `python3.12 -m venv .venv`

* [x] Review the
  [Scientific Python Library Development Guide](https://learn.scientific-python.org/development/)
  * I am seeing many typos and inconsistencies in the docs
  * [x] Tutorials
    * [x] Intro to development
    * [x] Inline documentation
    * [x] Packaging
    * [x] Test
    * [x] Writing documentation
  * [x] Topical Guides
    * [x] Simple packaging

* [x] Set up the Python package structure in the `mathz` repo
  * I set up an example package
  * convert this to mathz and clean up files

I read a lot of the Scientific Python Development Guide.
It has many typos, grammar errors, and inconsistent examples.
Some example are very old, using Python 3.6.
It may be useful to jump start inexperienced developers but
the overall quality is low and somewhat confusing.

I am still somewhat confused about the structure of Python packages.
I'll read Dane Hillard's book, "Publish Python Packages".

## 2023-11-06

### 1:56 PM

I read the first few chapters of Dane Hillard's Python Packaging book.
He clarified that the term `package` is overloaded in Python.
There are two distinct meanings:
* import package
* distribution package

An import package is simply a directory that contains Python modules,
either as immediate children or in subdirectories.
An import package is usually flagged by the presence of an `__init__.py` file
which may itself be empty.

A distribution package is an artifact that can be used to distribute Python
code and data. There are two kinds of distribution packages,
namely source distributions, aka sdist's, and binary distributions,
aka wheels.

In GitHub, the simplest approach is to create a repository for each
distribution package. A single distribution package may contain
one or more import packages. The repository itself is often referred
to as a Python project.

The root directory of the project is named `mathz` which is also the name
distribution package. This directory should contain the following
Python-related content:
* `src/`
* `tests/`
* `docs/`
* `README.md`
* `LICENSE`
* `pyproject.toml`

The `src` directory contains all the Python source code.
It contains a Python package directory named `mathz`.

The `tests` directory contains all the Python test cases.

The `docs` directory contains documentation about the Python code.
It is generated from Python docstrings in the source code.

The following website seems like a modern set of guidelines
for Python packages: [Python Packages](https://py-pkgs.org)

### 9:21 PM

I played with `cookiecutter`. It creates a project from a template.
I tried the template that is recommended by
https://py-pkgs.org/03-how-to-package-a-python.
That template uses `poetry`.
The Scientific Python site recommends `hatchling`.
I'd prefer to use a tool that is built in to Python.
I assume this means `setuptools`.

Read https://packaging.python.org/en/latest/overview/.
This points to the docs for `setuptools`:
https://setuptools.pypa.io/en/latest/userguide/quickstart.html.
I created a minimal `pyproject.toml` that uses `setuptools`
and has enough metadata.
```text
[build-system]
requires = ["setuptools"]
build-backend = "setuptools.build_meta"

[project]
name = "mathz"
version = "0.1.0"
readme = "README.md"
authors = [
    { name = "Arthur Ryman", email = "arthur.ryman@gmail.com" }
]
```

I can now install an editable version of the package
by running the following command in the directory that
contains `pyproject.toml`, namely the root directory of the project.
```shell
pip install -e .
```

Note that following the Scientific Python guidelines,
I named my virtual environment directory `.venv`.
However, GitHub included it even though I added it to the
`.gitignore` file.
I therefore reverted the name to `venv`.
I had to delete the `.venv` directory because the name `.venv`
was baked into the shell prompt.

By next goal is to create `make` files to perform the build steps
currently performed by shell scripts:
* `install-all-docs.sh` - copies all article PDFs to `tex-docs`
* `install-all-packages.sh` - copies all LaTeX packages to `~/Library/texmf/tex/latex/mathz/`
* `<article-group>/typecheck-all.sh` - type checks all articles in a group
* `<article>/install.sh` - copies article LaTeX package to `~/Library/texmf/tex/latex/mathz/`
* `<article>/typecheck.sh` - type checks article and builds its prelude file

