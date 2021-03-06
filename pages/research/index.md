<!-- 
.. title: Research
.. slug: index
.. date: 2017-06-17 23:43:14 UTC+02:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text
.. hidetitle: True
-->

# Personal git repositories

My personal [Git](http://git-scm.com/) repositories are available here:

 + [sources.adjemian.eu](https://sources.adjemian.eu)
 + [github.com](https://github.com/stepan-a)
 + [gitlab.com](https://gitlab.com/stepan-a)

A lot of my work (slides, codes, music, this website, ...) is versioned under Git. For instance, if you have [Git](http://git-scm.com/) installed on your computer, you can obtain the sources of the slides on perfect foresight models (pdf provided below) as follows:

	:::bash
	git clone https://gitlab.com/stepan-a-dynare/perfect-foresight


# Dynare

## Slides
 + [Perfect foresight models](../dynare/slides/perfect-foresight-models.pdf)
 + [Perturbation methods for DSGE models](../dynare/slides/dsge-perturbation-method.pdf)
 + [Bayesian econometrics primer](../dynare/slides/bayesian-econometrics-primer.pdf)
 + [Stochastic Extended Path Approach](../dynare/slides/sep.pdf), joint with Michel Juillard
 + [Bayesian Estimation of DSGE models](../dynare/slides/BayesianEstimation.pdf)
 + [BVAR and DSGE models](../dynare/slides/BvarUndDsge.pdf)

## Codes

### Dynare steady state toolbox.

 [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.819975.svg)](https://doi.org/10.5281/zenodo.819975)

Provides a set of matlab routines that translate a matlab script
computing the steady state of a DSGE model into something readable by
dynare (i.e. conforming to what is expected in a `*_steadystate2.m`
file generated by Dynare from the equations in the
`steady_state_model` block). Examples are provided in the tests
subfolder. This toolbox is far less efficient than Dynare in producing
the `*_steadystate2.m` routine (because the code is generated by
matlab, while in Dynare the C++ preprocessor is used), but the
resulting code is as efficient as the one produced by Dynare. The
advantage is flexibility. All that can be done in a user written
`*_steadystate.m` routine (loops, conditional statements, fixed point
routines, definition of custom traps and error flags, ...) can be done
with this toolbox with the same efficiency as Dynare's
`steady_state_model` (which cannot handle loops and conditional
constructs). The code is available
on [Github](https://github.com/stepan-a/dynare-steady-state-toolbox),
or you can download the last release as a ZIP
archive:
[version 0.1.0](https://github.com/stepan-a/dynare-steady-state-toolbox/archive/0.1.0.zip). Please
use
[Github issues](https://github.com/stepan-a/dynare-steady-state-toolbox/issues) if
you want to report a bug or missing feature. Contributions are welcome.

### Growthless Deterministic Growth Model.
This is just a small example of perfect foresight model with an analytical steadys state. The mod and steadystate file are self documented: [dog.mod](../dynare/codes/dog/dog.mod),
[dog_steadystatestate.m](../dynare/codes/dog/dog_steadystate.m)

### Smets and Wouters (AER, 2007) like model.
The  mod and steadystate  files are provided without any documentation, but  are (should be) human (macroeconomist or dynare user) readable.  The steadystate file is called by dynare  to compute the deterministic steady  state of the non-linear model. Note that with recent version of dynare (>=4.2) it is possible to declare the analytical steady state directly in the mod file. The main limit of this new feature are that exceptions cannot be defined (for some values of the deep parameters a sensible steady state may not exist). The provided steadystate file uses persistent variables for speed improvements and defines a set of exceptions (for instance if  the depreciation rate is found to  be  negative negative  for  some values  of the  deep parameters and/or calibrated/estimated steady state ratios): [sw.mod](../dynare/codes/sw/sw.mod), [sw_steadystate.m](../dynare/codes/sw/sw_steadystate.m).

## Documentation

### Priors in Dynare
   [{PDF}](https://github.com/stepan-a/dynare-priors/releases/download/0.1.0/note.pdf) This unfinished note describes the prior densities considered in Dynare. The sources are available [here](https://github.com/stepan-a/dynare-priors/releases/latest).

<br>

# Papers
 - *Stochastic Extended Path Simulation Method*, joint with Michel Juillard [{PDF Slides}](../dynare/slides/sep.pdf)
 - *Accuracy of the Extended Path Simulation Method in a New Keynesian Model with Zero Lower Bound on the Nominal Interest Rate*, joint with Michel Juillard. [{PDF}](../papers/ZLB-ExtendedPath-Accuracy.pdf).
 - *Évaluation de la politique monétaire dans un modèle DSGE pour la zone euro*, joint with Antoine Devulder. [{PDF}](../papers/rfe-2011-a.pdf) and [{tar.bz2 archive}](../papers/rfe-2011.tar.bz2) containing the files needed to get the results reported in the paper.
 - *Optimal monetary policy and the transmission of oil-supply shocks to the euro area under rational expectations*, joint with Matthieu Darracq Pariès. [ECB Working Paper version](http://www.ecb.eu/pub/pdf/scpwps/ecbwp962.pdf), 2008.
 - *Towards a  monetary policy evaluation  framework*, joint with Stéphane Moyen and Matthieu Darracq Pariès. [ECB Working Paper version](http://www.ecb.eu/pub/pdf/scpwps/ecbwp942.pdf), 2008.
 - *A Quantitative Perspective on Optimal Monetary Policy Cooperation between the US and the Euro Area*, joint with Matthieu Darracq Pariès and Franck Smets. [ECB Working Paper version](http://www.ecb.int/pub/pdf/scpwps/ecbwp884.pdf), 2008.
 - *Un regard bayésien sur les modèles dynamiques de la macroéconomie*, joint with Florian Pélegrin. [{PDF}](../papers/ecoprev2007b.pdf) published in Économie et Prévision, 2008.
 - *Variantes en univers incertain*, joint with Christophe Cahn, Antoine Devulder and Nicolas Maggiar. [{PDF}](../papers/ecoprev2007a.pdf) published in Économie et Prévision, 2008.
 - *Assessing the International Spillovers between the US and the Euro Area: evidence from a two country DSGE -- VAR*, joint with Matthieu Darracq Pariès. [{PDF}]([../papers/ad2007.pdf) version, 2007.
 - *Optimal Monetary Policy in an Estimated DSGE for the Euro Area*, joint with Stéphane Moyen and Matthieu Darracq Pariès. [{PDF}](../papers/adm2007.pdf) or [ECB Working Paper version](http://www.ecb.eu/pub/pdf/scpwps/ecbwp803.pdf), 2007.
 - *Shumpeterian Growth, Unemployment and the labor market institutions*, joint with François Langot and Coralia Quintero-Rojas. [{PDF}](http://mpra.ub.uni-muenchen.de/7909/2/MPRA_paper_7909.pdf), 2007.
 - *Convergence des productivités européennes.  Transition, rupture   et  racine   unitaire*, [{PDF}](http://www.pse.ens.fr/adres/anciens/n69/vol69-02.pdf) published  in   Annales d'Économie et de Statistiques, 2003.
 - *Cible  d'inflation ou  de niveau  de prix :  quelle option retenir pour la banque  centrale dans un environnement Nouveau Keynésien*, [{PDF}](http://www.cairn.info/load_pdf.php?ID_ARTICLE=REL_693_0293) published in Louvain Economic Review, 2003.

<br>

# Thesis (fr)
  [{pdf}](../thesis/thesis.pdf), [{ps}](../thesis/thesis.ps), sources [{tar.bz2}](../thesis/thesis.tar.bz2).
