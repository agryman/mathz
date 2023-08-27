# TODO

## Guidelines

* write for clarity, not brevity
* use schemas to define relations between variables
* use schemas as the predicates of set comprehensions and lambdas
* prefix all styles with `mathz_` to avoid name conflicts
* structure each article using the template
* use zed paragraphs and abbreviation definitions, but follow each with a remark giving the type
* only use axdef and gendef when required, e.g. for recursion
* remove math markup from section headings to avoid hyperref warnings
* use descriptive names for the definition of new concepts, and then define symbolic notation
* when introducing notation, show the verbatim command, e.g.
  * Let the notation $\foo$, typeset using the command \verb|\foo|, denote foo.
* add these verified guidelines to the article on formal specifications

## Rewrite all articles to follow the guidelines

The following lists the articles in a topologically sorted
order according to their dependencies on other articles

## mathz packages

* core - DONE
* sets (core) - DONE
* categories (core) - in-progress
* groups
* integers
* real_numbers
* complex_numbers
* vector_spaces
* topological_spaces
* manifolds
* lie_groups_and_algebras

## mathz documentation

* article_template - DONE
* project
* formal_specifications

## Create a Make file for type checking

The make file itself should be automatically generated
by a script that takes as input a project description
file, possibly written in JSON, YAML, or TOML, that
lists the packages and documentation.

The script should parse the packages are generate a set of
declared dependencies as given by usepackage commands.
The script should generate the make file or files for the packages.
The make file for a package should generate the prelude file.

The make file should also have an entry that parses the output
from fuzz and determines the true dependencies.

Another script should compare the true dependencies and compare
then to the declared dependencies.
It should list the unused declared dependencies so that the author
can delete them.

The make file should generate a static website from the packages.
The website should include a graphical representation of the package
dependencies, and drilling down to the defined objects, their dependencies.

The make file should include a command to generate source code for
one or more proof assistants, e.g. Lean, Coq, of Isabelle.

The website should be publishable on GitHub pages using Jekyl.