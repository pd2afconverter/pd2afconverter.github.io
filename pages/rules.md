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



<h3>Metabolic Inhibition</h3>
<table>
	<tr style="font-size:90%;">
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/met-inh/pd.png" width="230" />
			<br />
			<a href="../rules/met-inh/pd.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/met-inh/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/met-inh/af.png" width="230" />
			<br />
			<a href="../rules/met-inh/af.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/met-inh/af.sbgn" target="_blank">Newt</a>
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
<table>
	<tr style="font-size:90%;">
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/met-sti/pd.png" width="230" />
			<br />
			<a href="../rules/met-sti/pd.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/met-sti/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/met-sti/af.png" width="230" />
			<br />
			<a href="../rules/met-sti/af.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/met-sti/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;">Macromolecule A stimulates reaction B to C</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;"></td>
	</tr>
</table>

<h2>How To Treat Stimulation In Signalling Pathways</h2>

<h3>Stimulation With Active Substrate</h3>
<table>
	<tr style="font-size:90%;">
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/sig-sti-a-0/pd.png" width="230" />
			<br />
			<a href="../rules/sig-sti-a-0/pd.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/sig-sti-a-0/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/sig-sti-a-0/af.png" width="230" />
			<br />
			<a href="../rules/sig-sti-a-0/af.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/sig-sti-a-0/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;">A stimulates modification of macromolecule B, where substrate of reaction is active</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;"></td>
	</tr>
</table>
<h3>Stimulation With Inactive Reactants</h3>
<table>
	<tr style="font-size:90%;">
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/sig-sti-0-0/pd.png" width="230" />
			<br />
			<a href="../rules/sig-sti-0-0/pd.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/sig-sti-0-0/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/sig-sti-0-0/af.png" width="230" />
			<br />
			<a href="../rules/sig-sti-0-0/af.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/sig-sti-0-0/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;">A stimulates modification of macromolecule B</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;">IMPORTANT: not obvious rule and potentially wrong translation</td>
	</tr>
</table>
<h3>Stimulation With Active Product</h3>
<table>
	<tr style="font-size:90%;">
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/sig-sti-0-a/pd.png" width="230" />
			<br />
			<a href="../rules/sig-sti-0-a/pd.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/sig-sti-0-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/sig-sti-0-a/af.png" width="230" />
			<br />
			<a href="../rules/sig-sti-0-a/af.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/sig-sti-0-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;">A stimulates modification of macromolecule B, where product of reaction is active</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;"></td>
	</tr>
</table>
<h3>Stimulation With Active Substrate And Product</h3>
<table>
	<tr style="font-size:90%;">
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/sig-sti-a-a/pd.png" width="230" />
			<br />
			<a href="../rules/sig-sti-a-a/pd.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/sig-sti-a-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/sig-sti-a-a/af.png" width="230" />
			<br />
			<a href="../rules/sig-sti-a-a/af.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/sig-sti-a-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;">A stimulates modification of macromolecule B, where both reactant are active</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;"></td>
	</tr>
</table>

<h2>Translocation</h2>

<h3>Simple Translocation</h3>
<table>
	<tr style="font-size:90%;">
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/transloc-sti/pd.png" width="230" />
			<br />
			<a href="../rules/transloc-sti/pd.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/transloc-sti/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="text-align:center; font-size:90%;">
			<img src="../rules/transloc-sti/af.png" width="230" />
			<br />
			<a href="../rules/transloc-sti/af.sbgn">SBGN-ML</a>&ensp;			<a href="http://web.newteditor.org/?URL=https://pd2af.github.io/rules/transloc-sti/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;">A stimulates translocation of B, from compartment C1 to compartment C2</td>
	</tr>
	<tr style="line-height: 3em">
		<td colspan="2" style="text-align:left; font-size:90%;"></td>
	</tr>
</table>
