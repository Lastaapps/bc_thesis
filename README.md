# NAC-colorings search: complexity and algorithms

This repository contains source code for my bachelor thesis
at Faculty of Information technology, CTU Prague.

The [latest PDF version](https://github.com/Lastaapps/bc_thesis/actions/workflows/latex.yml)
of the thesis can be found in artifacts in GitHub workflows.

## Done
- run no 3 nor 4 cycles with cycle match chunks and neighbors degree
- run score on no NAC coloring

## TODO
- run no NAC coloring with larger subgraphs as I misinterpreted the results
- rerun laman random graphs, everything
- smart split jenom na linear a log
- resolve todos
- more examples
- Fix line breaks & typography
- Comment code
- update precomputed benchmarks
- pregenerate graphs in notebooks

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
Lastly we present another FPT algorithm for NAC-coloring counting
parametrized by tree width.

## Links

* [PyRigi](https://github.com/PyRigi/PyRigi) (target repository, where my code is merged)
* [Code before merge into PyRigi](https://github.com/Lastaapps/PyRigi/)
* [Our related paper](https://www.arxiv.org/abs/2412.13721)

## License

See the thesis.

