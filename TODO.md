# TODO

## Guidelines

* write for clarity, not brevity
* use schemas to define relations between variables
* use schemas as the predicates of set comprehensions and lambdas
* prefix all styles with `mathz-` to avoid name conflicts
* structure each article using the template
* use zed paragraphs and abbreviation definitions, but follow each with a remark giving the type
* only use axdef and gendef when required, e.g. for recursion
* remove math markup from section headings to avoid hyperref warnings
* use descriptive names for the definition of new concepts, and then define symbolic notation
* when introducing notation, show the verbatim command, e.g.
  * Let the notation $\foo$, typeset using the command \verb|\foo|, denote foo.

## Rewrite all articles to follow the guidelines

* sets - DONE
* groups - NEXT
* integers
* lie-groups-and-algebras
* manifolds
* real-numbers
* topological-spaces
* vector-spaces
* complex-numbers

## Create a Make file for type checking

