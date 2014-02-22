.. highlight:: rst

First Steps with Sphinx
=======================

This document is meant to give a tutorial-like overview of all common tasks
while using Sphinx.

The green arrows designate "more info" links leading to advanced sections about
the described task.


Setting up the documentation sources
------------------------------------

.. highlight:: r

:Author: Ramnath Vaidyanathan
:University: McGill University

The root directory of a documentation collection is called the `source
directory`.  This directory also contains the Sphinx configuration file
`conf.py`, where you can configure all aspects of how Sphinx reads your
sources and builds your documentation.  

Sphinx comes with a script called `sphinx-quickstart` that sets up a
source directory and creates a default `conf.py` with the most useful
configuration values from a few questions it asks you.  Just run ::

   $ sphinx-quickstart

and answer its questions.  (Be sure to say yes to the "autodoc" extension.)


..	sourcecode:: r
	
	library(ggplot2)
	qplot(wt, mpg, data = mtcars)

.. literalinclude:: theme-to-header-html.R
	:language: r
	:tab-width: 2
	:emphasize-lines: 3, 4
	
.. note::

	The default role (```content```) has no special meaning by default.  You		
	are free to use it for anything you like, e.g. variable names; use the
	:confval:`default_role` config value to set it to a known role.

Another way to highlight code is to doe the following::

	library(ggplot2)
	qplot(wt, mpg, data = mtcars)
	theme_to_header_html <- function(theme){
	  css_file = if (file.exists(theme)) theme else {
	    system.file("themes", sprintf("%s.css", theme), package = "knitr")
	  }
	  # css_knitr = system.file('themes', '.knitr.css', package = 'knitr')
	  css_knitr <- '~/Desktop/R_Projects/knitr/inst/themes/.knitr.css'
	  stringr::str_c(c(
	    '<style type="text/css">', 
	    readLines(css_knitr),
	    readLines(css_file), 
	    '</style>'), 
	        collapse = '\n')
	}

.. raw:: html

   <iframe src='http://bl.ocks.org/ramnathv/raw/8970935/mymap.html'></iframe>
	
.. seealso:: This is a simple **seealso** note. Other inline directive may be included (e.g., math :math:`\alpha`) but not al of them.

.. math::
   :nowrap:

   \begin{eqnarray}
      y    & = & ax^2 + bx + c \\
      f(x) & = & x^2 + 2xy + y^2
   \end{eqnarray}

We can define our hypothesis as :math:`H_0:\mu = \mu_0, H_a:\mu = \mu_a`
