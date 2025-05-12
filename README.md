# NAC-colorings search: complexity and algorithms

This repository contains source code for my bachelor thesis
at Faculty of Information technology, CTU Prague.

The [latest PDF version](https://github.com/Lastaapps/bc_thesis/actions/workflows/latex.yml)
of the thesis can be found in artifacts in GitHub workflows.

## Done
- rerun laman random graphs, everything
- run no NAC coloring with larger subgraphs as I misinterpreted the results

## Graphs summary
- ukázat špatnost logu
  - spustit na nových lamanech
Minimally rigid
- spustit i pro špatné strategie
- first
  - cycles, jinak none o režiji
- all
  - neighbors nejlepší, none nejhorší
  - runtime of cycles grows exponentially
  - shared_vertices slightly better
No 3 nor 4 cycles
- spustit znovu ať se vygenerují all
- first
  - shared_vertices fail horribly
  - naive cycles faster
  - the rest is similar
- all
  - shared_verties nezběhly
    - smazat výsledky pod 20 vrcholů
    - spustit znova
Globally rigid
- first
  - none je rychlejší
  - cycles nestabilní počet checků
- all
  - linear vyhrává
Failing
- first
    - promising cycles fail (laman and no 3 nor 4)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

## TODO
- run score on no NAC coloring
- run no 3 nor 4 cycles with larger timeout (at least cycles & linear, all NAC-coloring figures are weird...)
- resolve todos
- document code
- reread and refactor the FPT proof 
- more examples (where?)
- clear useless runs and classes from precomputed results
- Fix line breaks & typography
- Comment code
- update precomputed benchmarks
- pregenerate graphs in notebooks
- remove attachments if still empty
- todonotes, just in case

## Abstract

One of the questions in Rigidity Theory is whether a realization of the
vertices of a graph in the plane is flexible, namely, if it allows a continuous
deformation preserving the edge lengths.
A flexible realization of a connected graph in the plane exists if and only if
the graph has a NAC-coloring, which is surjective edge coloring by
two colors such that for each cycle either all the edges have the same color or
there are at least two edges of each color.
It is NP-complete to determine is a graph has a NAC-coloring,
we show that the problem is
also NP-complete for graphs with maximal degree five.
We present an algorithm for NAC-coloring search,
and we discuss related heuristics.
The performance is compared with previous algorithms and among the heuristics.
We also present fixed-parameter tractable (FPT) algorithm for NAC-coloring counting
parametrized by tree width.
We discuss relation to stable cuts and algorithm for finding
a stable cut is implemented as part of the thesis.

## Links

* [PyRigi](https://github.com/PyRigi/PyRigi) (target repository, where my code is merged)
* [Code of this thesis](https://github.com/Lastaapps/nac_coloring/)
* [Code before merge into PyRigi](https://github.com/Lastaapps/PyRigi/)
* [Our related paper](https://www.arxiv.org/abs/2412.13721)

## License

See the thesis.

