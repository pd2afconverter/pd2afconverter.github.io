---
layout: default
title: Development
permalink: /development/
---

# Development

This page intorduces the features of the current version of the converter and outlines the expected future developments and the corresponding milestones.  

## Current version: PD2AF 1.0

The implemented logic takes into account on the work by Vogt and coauthors (Vogt et al., 2013, [doi: 10.1186/1752-0509-7-115](https://doi.org/10.1186/1752-0509-7-115)) and further develops the logic to minimise the number of complexes in AF version and to introduce pattern recognition functionalities.

What is new in the Milestone 1 PD2AF version 1.0:
1. The code is written in Lisp programming language and is accessible on [GitHub](https://github.com/prozion/pd2af).
1. Added pattern recognition for removing "intermediate" complexes.
1. Added pattern recognition for some types of inhibition shown in details without using the _inhibition_ arc.

## Development plan

The development is planned in a stepwise manner with the following milestones.

#### PD2AF Milestone #1 Basic - "Enhanced" version - Automatic

The first milestone version is designed to provide an accessible open-source code and an online service. Milestone 1 has minimal translation functionalities enhanced by the identification of active entities. This identification allows improving the conversation while taking into account the context - the connected events. In particular, cases of "hidden" inhibition can be identified and converted to the Activity Flow view.  

After completing this step, a collection of PD-AF pairs of bricks can be initiated. In the future this collection of pairs will ensure stable conversion between the Process Description and Activity Flow languages in both directions.   

#### PD2AF Milestone #2 Intermediate - "Adviser" version - Semi-automatic

For complex and extensive PD maps it will not be always possible to avoid keeping complexes in AF version. For Milestone 2 we anticipate the development of a version that will not be completely automatic but will offer options for possible conversion of difficult modules. The user would be able to choose the most suitable option from a set.

#### PD2AF Milestone #3 Advanced - "Informed guess" version - Automatic

Milestone 3 aims to allow the algorithm making decision for difficult modules while taking into account information from selected pathway and protein-protein interaction databases. This "informed guess" functionality will allow minimising manual check for conversion of extensive maps.

