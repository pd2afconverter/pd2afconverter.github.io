---
layout: default
title: Development
permalink: /development
---

# Development

This page outlines the features of the current version of the converter.  

### PD2AF version 1.0

The implemented logic takes into account on the work by Vogt and coauthors (Vogt et al., 2013, [doi: 10.1186/1752-0509-7-115](https://doi.org/10.1186/1752-0509-7-115)) and further develops the logic to minimise the number of complexes in AF version and to introduce pattern recognition functionalities. In particular, the PD2AF tool inlcudes pattern recognition functionality for removing "intermediate" complexes that do not add new information to the AF representation and the corresponding Boolean models. There is also an advnanced functuionality for identifying so-called "hidden" inhibition when inhibition mechanisms is represented without using the _inhibition_ arc.  

For convenient development and testing of the converter, we have developed the following infrastructure.  

![Figure 2](/images/development/components.png)

The infrustructure includes four modules:  

- **Webpages generator** processes HTML and CSS templates into the corresponding HTML, CSS and SVG files. It works similar to template engines such as JSP or Django Template Language or SASS and additionally allows inserting Racket code snippets.  
- **Knowledge tree reader** handles files in .tree format, which is specially invented for the convenient textual encoding of the key-value objects in the hierarchy. This model is useful for structuring knowledge.  
- **SBGN-Lisp language** employs a special Lisp-like syntax and related tools that allow writing SBGN maps in the form of sexp expressions. This allows coding otherwise graphical diagrams in the form of human-readable text. 
- **PD2AF converter** translates SBGN Process Description diagrams into SBGN Activity Flow. It also converts SBGN-ML to sexp expressions and sexp expression back to SBGN-ML.  

