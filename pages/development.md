---
layout: default
title: Development
permalink: /development/
---

# Development

## Current version: PD2AF 1.0

The implemented logic is based on the work by Vogt and coauthors (Vogt et al., 2013, [doi: 10.1186/1752-0509-7-115](https://doi.org/10.1186/1752-0509-7-115)) and further developed to minimise the number of complexes in AF version and to introduce pattern recognition functionalities.

What is new in PD2AF 1.0:
1. The code is written from scratch in Lisp programming language and made easily accessible on [Github](https://github.com/prozion/pd2af).
1. Added pattern recognition for removing "intermediate" complexes.
1. Added pattern recognition for some types of inhibition shown in details without using the _inhibition_ arc.

## Development plan

The development is planned in a stepwise manner and assumes the following milestones.

#### PD2AF Milestone #1 Basic - "Enhanced" version - Automatic

The first milestone version is designed to provide an accessible and improved open-source code for the convertion from PD to AF. Also, at this step we can strat creating a collection of PD-AF pairs of bricks that correspond to each other and compare the results to maps in AF-like format.

#### PD2AF Milestone #2 Intermediate - "Adviser" version - Semi-automatic

#### PD2AF Milestone #3 Advanced - "Informed guess" version - Automatic

