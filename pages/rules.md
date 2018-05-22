---
layout: default
title: Translation rules
permalink: /rules/
---

# Translation rules

Translation rules take into account not only a partical SBGN brick but also the surrounding connected bricks - contextual network iformation. By _active entity_ we mean an entity that participate in following steps of the pathway/network. It is a glyph that has outgoing regulatory arcs (catalysis, stimulation, inhibition) or connected to other processes via a consumption arc.  

### Protein activation by phosphorylation

<table>
    <tr style="font-size:90%;">
    <td style="width:220px; text-align:center; font-size:90%;"><img src="../bricks/proteinphosphorylation/ProteinPhosphorylation-PD01.02-Y.png" width="205"/><br /><a href="/bricks/proteinphosphorylation/ProteinPhosphorylation-PD01.02-Y.sbgn">SBGN-ML</a> &ensp; <a href="http://web.newteditor.org/?URL=http://sbgnbricks.github.io/bricks/proteinphosphorylation/ProteinPhosphorylation-PD01.02-Y.sbgn" target="_blank">Newt</a></td>
    <td style="width:220px; text-align:center; font-size:90%;"><img src="../bricks/proteinphosphorylation/ProteinPhosphorylation-AF01.01.png" width="80"/><br /><a href="/bricks/proteinphosphorylation/ProteinPhosphorylation-AF01.01.sbgn">SBGN-ML</a> &ensp; <a href="http://web.newteditor.org/?URL=http://sbgnbricks.github.io/bricks/proteinphosphorylation/ProteinPhosphorylation-AF01.01.sbgn" target="_blank">Newt</a></td>
    <td style="vertical-align: middle; padding-left: 1em;">This translation is conditional. It assumes that 1) the unphosphorylated state is not active, i.e. there are no outgoing regulatory arcs, 2) the resulting state is active towards another process, i.e. there are outgoing regulatory arcs or there could be (might not be shown on the diagram).</td>
    </tr>
</table>

<table>
    <tr style="font-size:90%;">
    <td style="width:220px; text-align:center; font-size:90%;"><img src="../bricks/proteinphosphorylation/ProteinPhosphorylation-PD01.02-Y.png" width="205"/><br /><a href="/bricks/proteinphosphorylation/ProteinPhosphorylation-PD01.02-Y.sbgn">SBGN-ML</a> &ensp; <a href="http://web.newteditor.org/?URL=http://sbgnbricks.github.io/bricks/proteinphosphorylation/ProteinPhosphorylation-PD01.02-Y.sbgn" target="_blank">Newt</a></td>
    <td style="width:220px; text-align:center; font-size:90%;"><img src="../pd2af/ProteinPhosphorylation-PD01.02-PD2AF02.png" width="215"/><br /><a href="/pd2af/ProteinPhosphorylation-PD01.02-PD2AF02.sbgn">SBGN-ML</a> &ensp; <a href="http://web.newteditor.org/?URL=http://sbgnbricks.github.io/pd2af/ProteinPhosphorylation-PD01.02-PD2AF02.sbgn" target="_blank">Newt</a></td>
    <td style="vertical-align: middle; padding-left: 1em;">Translation of the case when it is necessary to show two activities of the same protein, i.e. there are outgoing regulatory arcs from both states in PD. An example case is the  <a href="http://metabolismregulation.org/glycolysis/" target="_blank">phosphorylation of bifuntional enzyme PFK by PKA</a>.</td>
    </tr>
</table>
