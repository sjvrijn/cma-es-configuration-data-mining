[![Binder](http://mybinder.org/badge.svg)][1]
[![Gitter](https://badges.gitter.im/pyModEA/configuring-cmaes.svg)](https://gitter.im/pyModEA/configuring-cmaes?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

# Algorithm Configuration Data Mining for CMA Evolution Strategies

This repository contains the data and analysis for the paper [**Algorithm Configuration Data Mining for CMA Evolution Strategies**][2].


## Introduction

The [Python Notebook][3] contains all code that was used to analyse the accompanying pre-processed dataset in the /arff folder.

The original dataset was created using [this repository][7], which builds on top of the [ModEA][4] framework, as published in '[Evolving the Structure of Evolution Strategies][5]'


## Dependencies

This project was written for Python 2.7. All required packages from PyPI are specified in the `requirements.txt`.

*NOTE:* This list of packages includes the `pydot` package, for which [`Graphviz`][6] has to be installed on your operating system. This package is _optional_ to complete the analysis, but is included to visualize the Decision Trees that are created.


## Use

The easiest way to re-run the notebook is to use the [Binder link][1] which will load an online environment with all dependencies pre-installed.

Alternatively, you can clone the repository, install the `requirements.txt` and run the notebook locally:

```
git clone https://github.com/sjvrijn/cma-es-configuration-data-mining.git cmaes-config-dm
cd cmaes-config-dm
pip install --user -r requirements.txt
# pip install --user jupyter notebook  # <-- only required if you don't yet have jupyter installed
jupyter notebook
```


## Contact

If there are any questions or issues, please come to the [Gitter chatroom](https://gitter.im/pyModEA/configuring-cmaes) or open an issue here on Github.


## Citation

To cite this repository, you can use the following bibtex entry:

```
@misc{vanRijn2017-github,
    author = {van Rijn, Sander},
    title = {Github repository: CMA-ES Configuration Data Mining},
    year = {2017},
    url = {https://github.com/sjvrijn/cma-es-configuration-data-mining},
}
```

To cite the corresponding paper, you can use the following bibtex entry instead:

```
@inproceedings{vanRijn:2017:ACD:3071178.3071205,
    author = {van Rijn, Sander and Wang, Hao and van Stein, Bas and B\"{a}ck, Thomas},
    title = {Algorithm Configuration Data Mining for CMA Evolution Strategies},
    booktitle = {Proceedings of the Genetic and Evolutionary Computation Conference},
    series = {GECCO '17},
    year = {2017},
    isbn = {978-1-4503-4920-8},
    location = {Berlin, Germany},
    pages = {737--744},
    numpages = {8},
    url = {http://doi.acm.org/10.1145/3071178.3071205},
    doi = {10.1145/3071178.3071205},
    publisher = {ACM},
    keywords = {empirical study, evolution strategies, metaheuristics, parameter tuning, performance measures},
}
```


[1]: http://mybinder.org:/repo/energya/cma-es-configuration-data-mining
[2]: https://dl.acm.org/citation.cfm?id=3071205
[3]: https://github.com/Energya/cma-es-configuration-data-mining/blob/master/module_analysis.ipynb
[4]: https://github.com/sjvrijn/ModEA
[5]: https://ieeexplore.ieee.org/document/7850138
[6]: https://www.graphviz.org/
[7]: https://github.com/sjvrijn/ConfiguringCMAES

