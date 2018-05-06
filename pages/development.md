---
layout: default
title: Development
permalink: /development/
---

# PD2AF Converter

[PD2AF converter](http://pd2af.me/) is an open-source application designed to enable communication between the Process Description and the Activity Flow languages of the SBGN standard. The PD2AF tool is built on and further develops the logic of the previously published template-based translation from PD to AF (Vogt et al., 2013, [doi: 10.1186/1752-0509-7-115](https://doi.org/10.1186/1752-0509-7-115)) which is accessible as a functionality of the SBGN-ED add-on of the VANTED editor.  

The purpose of the new tool is to translate PD to AF in such a way so it is possible to avoid using complexes in the resulting AF version and therefore be as close as possible to manually designed AF diagrams and the corresponding logical models. The converter uses the concept of the SBGN Bricks and additionally detects advanced network patterns such as, for example, "hidden" inhibition, when the mechanism is shown in details and no inhibition arcs are used.

The code is written in Lisp.

## Availability

Online conversion (daily updates): [http://pd2af.me/](http://pd2af.me/)  
Online conversion (stable version): [http://pd2af.org/](http://pd2af.org/)  
Github: [https://github.com/prozion/pd2af](https://github.com/prozion/pd2af)  

<!-- The translation fuctuionality is implemented in Newt Editor.-->

## Contributors

Denis Shirshov, European Institute for Systems Biology and Medicine, Lyon, France  
Alexander Mazein, European Institute for Systems Biology and Medicine, Lyon, France  
Anatoly Sorokin, Institute of Cell Biophysics, Russian Academy of Science, Pushchino, Russia  
Irina Balaur, European Institute for Systems Biology and Medicine, Lyon, France  
<!--Vasundra Touré, Norwegian University of Science and Technology, Trondheim, Norway  -->
<!--Ugur Dogrusoz, Bilkent University, Ankara, Turkey  -->
Johann Pellet, European Institute for Systems Biology and Medicine, Lyon, France  
Charles Auffray, European Institute for Systems Biology and Medicine, Lyon, France  

## PD2AF 1.0

The implemented logic is based on the work by Vogt and coauthors (Vogt et al., 2013, [doi: 10.1186/1752-0509-7-115](https://doi.org/10.1186/1752-0509-7-115)) and further developed to minimise the number of complexes in AF version and to introduce pattern recognition functionalities.

What is new in PD2AF 1.0:
1. The code is written from scratch in Lisp programming language and made easily accessible on [Github](https://github.com/prozion/pd2af).
1. Added pattern recognition for removing "intermediate" complexes.
1. Added pattern recognition for some types of inhibition shown in details without using the _inhibition_ arc.

## Development plan

The development is planned in a stepwise manner and assumes the following milestones.

#### PD2AF Milestone #1 Basic - "Enhanced" version - Automatic

#### PD2AF Milestone #2 Intermediate - "Adviser" version - Semi-automatic

#### PD2AF Milestone #3 Advanced - "Informed guess" version - Automatic

