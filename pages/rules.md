---
layout: default
title: Translation rules
permalink: /rules/
---

# Translation rules

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

### Advanced patterns: "hidden" inhibition

<h3>Metabolic Inhibition</h3>
<h5>#002</h5>
<em><span class="not_implemented">not implemented</span></em>
<table>
	<tr style="font-size:90%;">
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/met-inh/pd.png" width="230" />
			<br />
			<a href="../rules/met-inh/pd.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/met-inh/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/met-inh/af.png" width="80" />
			<br />
			<a href="../rules/met-inh/af.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/met-inh/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;">Macromolecule A inhibits reaction B to C</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;"></td>
	</tr>
</table>

<h3>Metabolic Stimulation</h3>
<h5>#001</h5>
<em><span class="not_implemented">not implemented</span></em>
<table>
	<tr style="font-size:90%;">
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/met-sti/pd.png" width="430" />
			<br />
			<a href="../rules/met-sti/pd.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/met-sti/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/met-sti/af.png" width="430" />
			<br />
			<a href="../rules/met-sti/af.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/met-sti/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;">Macromolecule A stimulates reaction B to C</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;"></td>
	</tr>
</table>
