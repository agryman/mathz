# TODO

## Guidelines

* write for clarity, not brevity
* use schemas to define relations between variables
* use schemas as the predicates of set comprehensions and lambdas
* prefix all articles and styles with `mathz_` to avoid name conflicts
* structure each article using the template
* use `zed` paragraphs and abbreviation definitions, but follow each with a remark giving the type
* only use `axdef` and `gendef` when required, e.g. for recursion
* remove math markup from section headings to avoid `hyperref` warnings
* use descriptive names for the definition of new concepts, and then define symbolic notation
* when introducing notation, show the verbatim command, e.g.
  * Let the notation $\foo$, typeset using the command \verb|\foo|, denote foo.
* add these verified guidelines to the article on formal specifications

## Rewrite all articles to follow the guidelines

The following lists the articles in a topologically sorted
order according to their dependencies on other articles

### General Articles

- [x] `mathz_article_template`: `mathz_core`
- [ ] `mathz_project`
- [ ] `mathz_formal_specifications` : 

### Math Articles

- [ ] `mathz_core`
- [ ] `mathz_sets` (`mathz_core`)
- [ ] `mathz_categories` (`mathz_core`) - in-progress
- [ ] `mathz_groups`
- [ ] `mathz_integers`
- [ ] `mathz_real_numbers`
- [ ] `mathz_complex_numbers`
- [ ] `mathz_vector_spaces`
- [ ] `mathz_topological_spaces`
- [ ] `mathz_manifolds`
- [ ] `mathz_lie_groups_and_algebras`

## Create a `make` file for type checking

The `make` file itself should be automatically generated
by a script that takes as input a project description
file, possibly written in JSON, YAML, or TOML, that
lists the packages and documentation.

The script should parse the packages and generate a set of
declared dependencies as given by `usepackage` commands.
The script should generate the `make` file or files for the packages.

The `make` file for a package should generate the `prelude` file.

The `make` file should also have an entry that parses the output
from `fuzz` and determines the true dependencies.

Another script should compute the true dependencies and compare
them to the declared dependencies.
It should list the unused declared dependencies so that the author
can delete them.

The `make` file should generate a static website from the packages.
The website should include a graphical representation of the package
dependencies, and drilling down to the defined objects, their dependencies.

The `make` file should include a command to generate source code for
one or more proof assistants, e.g. Lean, Coq, or Isabelle.

The website should be publishable on GitHub pages using Jekyll.
Refer to: https://jekyllrb.com
