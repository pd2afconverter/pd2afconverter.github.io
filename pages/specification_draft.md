---
layout: default
title: Specification
permalink: /specification_draft
---

<span style="color:red">I have three main comments:</span>
<ol>
    <li><span style="color:red">In all the following we use macromolecules in the rules. In the converter, does the nature of the entities matter? Or is it sufficient to know they are active/inactive, regardless of their nature? If their nature does not matter, could we replace the macromolecules with unspecified entities, and explain that in the following an unspecidied entity stands for any EPN?</span></li>
    <li><span style="color:red">Also I would suggest not using state variables to indicate whether the EPNs are active/inactive, because this suggests the EPNs actually carry those state variables in the input PD map. We could maybe use a color code to indicate which EPNs are active (and leave inactive EPNs uncolored, as it is the default). Finally if we keep state variables, we should maybe change them to stadiums (PD L1V2.0).</span></li>
    <li><span style="color:red">In each rule we use some kind of "bricks", that is patterns that are valid full SBGN (sub)-maps (e.g. modulated processes with reactants and products). We could rather use "half" bricks (e.g. modulated processes with only products for example). That would allow avoiding the combinatorics due to considering full bricks, significanly reducing the number of rules, while keeping the exact same result at the end.</span></li>
</ol>

<span style="color:red">In the next section I added the rules for finding active EPNs. I used unspecified entities and a color code for active EPNs (green for active), as an example of my previous comments.</span>


# Rules for finding active EPNs

Following are the rules that define which EPNs are active.

   <h4 style="color:black">0.1 act</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/active/active1_left.png" width="68px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/active/active_right.png" width="68px" />
		</td>
	</tr>
</table>

   <h4 style="color:black">0.2 mod</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/active/active2_left.png" width="140px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/active/active_right.png" width="68px" />
		</td>
	</tr>
</table>

   <h4 style="color:black">0.3 stim</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/active/active3_left.png" width="140px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/active/active_right.png" width="68px" />
		</td>
	</tr>
</table>

   <h4 style="color:black">0.4 cat</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/active/active4_left.png" width="140px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/active/active_right.png" width="68px" />
		</td>
	</tr>
</table>

   <h4 style="color:black">0.5 inh</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/active/active5_left.png" width="140px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/active/active_right.png" width="68px" />
		</td>
	</tr>
</table>

   <h4 style="color:black">0.6 nstim</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/active/active6_left.png" width="140px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/active/active_right.png" width="68px" />
		</td>
	</tr>
</table><br />


# Transformation rules specification
	
Here is the specification for the transformation rules. We start from most elementary patterns and follow with increasingly complex ones. All these patterns are also test cases for regression testing of the Converter program. With each case we ensure that converter code translates left-hand diagram exactly to the right-hand diagram, while both being considered as standalone schemes.

* [Posttranslational modification](#posttranslational-modification)
* [Metabolic reactions](#metabolic-reactions)
* [Source and sink](#source-and-sink)
* [Oligomerisation](#oligomerisation)
* [Complexes](#complexes)
* [Translocation](#translocation)
* [Hidden inhibition](#hidden-inhibition)
* [Simple schemes](#simple-schemes)
* [New schemes](#new-schemes)

	    
## Posttranslational modification

Associated terms: [SBO:0000182](https://identifiers.org/sbo/SBO:0000182) conversion, [GO:0036211](https://identifiers.org/quickgo/GO:0036211) protein modification process, [GO:0140096](https://identifiers.org/quickgo/GO:0140096) catalytic activity, acting on a protein

<span style="color:red">What is described here is not really posttranslational modifications per se, but rather some kind of activation/deactivation processes (not sure for the rules of the form i-X-i though). Could we rename the section by "Activation and deactivation", for example?</span>

   <h4 style="color:black">1.1 i-sti-i</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/i-sti-i/pd.png" width="246.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-sti-i/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-sti-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-sti-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-sti-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-sti-i/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.2 i-cat-i</h4>

<table class="rules-table">
	<tr>
		<td style="width:300px; text-align:center;">
			<div><img src="/images/specification/i-cat-i/pd.png" width="246.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-cat-i/af.png" width="69.6px" />
		</td>
	</tr>
        <tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-cat-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-cat-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-cat-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-cat-i/af.sbgn" target="_blank">Newt</a>
		</td>
        </tr>
</table><br />

	

	

   <h4 style="color:black">1.3 i-nsti-i</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/i-nsti-i/pd.png" width="246.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-nsti-i/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-nsti-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-nsti-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-nsti-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-nsti-i/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.4 i-mod-i</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/i-mod-i/pd.png" width="246.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-mod-i/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-mod-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-mod-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-mod-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-mod-i/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	

   <h4 style="color:black">1.5 i-inh-i</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/i-inh-i/pd.png" width="246.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-inh-i/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-inh-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-inh-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-inh-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-inh-i/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	

   <h4 style="color:black">1.6 i-sti-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/i-sti-a/pd.png" width="240px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-sti-a/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-sti-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-sti-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-sti-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-sti-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	

   <h4 style="color:black">1.7 i-cat-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/i-cat-a/pd.png" width="240px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-cat-a/af.png" width="77.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-cat-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-cat-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-cat-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-cat-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.8 i-nsti-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/i-nsti-a/pd.png" width="240px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-nsti-a/af.png" width="77.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-nsti-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-nsti-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-nsti-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-nsti-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.9 i-mod-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/i-mod-a/pd.png" width="240px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-mod-a/af.png" width="77.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-mod-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-mod-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-mod-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-mod-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.10 i-inh-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/i-inh-a/pd.png" width="240px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-inh-a/af.png" width="77.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-inh-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-inh-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-inh-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-inh-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.11 a-sti-i</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-sti-i/pd.png" width="236px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-sti-i/af.png" width="77.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-sti-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-sti-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-sti-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-sti-i/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	

   <h4 style="color:black">1.12 a-cat-i</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-cat-i/pd.png" width="236px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-cat-i/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-cat-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-cat-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-cat-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-cat-i/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">11.13 a-nsti-i</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-nsti-i/pd.png" width="236px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-nsti-i/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-nsti-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-nsti-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-nsti-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-nsti-i/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.14 a-mod-i</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-mod-i/pd.png" width="244px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-mod-i/af.png" width="77.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-mod-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-mod-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-mod-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-mod-i/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.15 a-inh-i</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-inh-i/pd.png" width="236px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-inh-i/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-inh-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-inh-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-inh-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-inh-i/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.16 a-sti-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-sti-a/pd.png" width="234.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-sti-a/af.png" width="237.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-sti-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-sti-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-sti-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-sti-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	

   <h4 style="color:black">1.17 a-cat-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-cat-a/pd.png" width="234.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-cat-a/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-cat-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-cat-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-cat-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-cat-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.18 a-nsti-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-nsti-a/pd.png" width="242.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-nsti-a/af.png" width="237.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-nsti-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-nsti-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-nsti-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-nsti-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.19 a-mod-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-mod-a/pd.png" width="242.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-mod-a/af.png" width="237.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-mod-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-mod-a/pd.sbgn" target="_blank">Newt</a>
		</td>
	<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-mod-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-mod-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.20 a-inh-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-inh-a/pd.png" width="234.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-inh-a/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-inh-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-inh-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-inh-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-inh-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />






   <h4 style="color:black">1.27 a-catr-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-catr-a/pd.png" width="234.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-catr-a/af.png" width="293.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-catr-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-catr-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-catr-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-catr-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />


	

	

   <h4 style="color:black">1.28 a-catr-i</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-catr-i/pd.png" width="236px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-catr-i/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-catr-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-catr-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-catr-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-catr-i/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />


	

	

   <h4 style="color:black">1.29 i-inhr-a</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/i-inhr-a/pd.png" width="232px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-inhr-a/af.png" width="261.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-inhr-a/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-inhr-a/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-inhr-a/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-inhr-a/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />






   <h4 style="color:black">9.1 Currency metabolites 1</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/currency_metabolites_1/pd.png" width="232px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/currency_metabolites_1/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/currency_metabolites_1/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/currency_metabolites_1/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/currency_metabolites_1/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/currency_metabolites_1/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">9.2 Noncurrency metabolites 1</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/noncurrency_metabolites_1/pd.png" width="232px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/noncurrency_metabolites_1/af.png" width="289.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/noncurrency_metabolites_1/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/noncurrency_metabolites_1/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/noncurrency_metabolites_1/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/noncurrency_metabolites_1/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br /><br /><br />





## Metabolic reactions

Associated terms: [GO:0008152](https://identifiers.org/quickgo/GO:0008152) metabolic process

<span style="color:red">There is a problem with the drawings of the reversible processes. We should redraw them. (Also for 1.27, 1.28, 1.29)</span>


   <h4 style="color:black">1.21 m-sti-m</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/m-sti-m/pd.png" width="229.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/m-sti-m/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/m-sti-m/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-sti-m/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/m-sti-m/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-sti-m/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />


	

	

   <h4 style="color:black">1.22 m-cat-m</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/m-cat-m/pd.png" width="229.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/m-cat-m/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/m-cat-m/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-cat-m/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/m-cat-m/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-cat-m/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />


	

	

   <h4 style="color:black">1.23 m-nsti-m</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/m-nsti-m/pd.png" width="229.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/m-nsti-m/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/m-nsti-m/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-nsti-m/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/m-nsti-m/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-nsti-m/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />


	

	

   <h4 style="color:black">1.24 m-mod-m</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/m-mod-m/pd.png" width="229.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/m-mod-m/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/m-mod-m/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-mod-m/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/m-mod-m/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-mod-m/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />


	

	

   <h4 style="color:black">1.25 m-inh-m</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/m-inh-m/pd.png" width="229.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/m-inh-m/af.png" width="185.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/m-inh-m/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-inh-m/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/m-inh-m/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-inh-m/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">1.30 m-catr-m</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/m-catr-m/pd.png" width="229.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/m-catr-m/af.png" width="293.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/m-catr-m/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-catr-m/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/m-catr-m/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-catr-m/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />



	

	

   <h4 style="color:black">1.31 m-inhr-m</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/m-inhr-m/pd.png" width="229.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/m-inhr-m/af.png" width="281.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/m-inhr-m/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-inhr-m/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/m-inhr-m/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/m-inhr-m/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
   
   
   
   
   
## Production and degradation

Associated terms: [SBO:0000179](https://identifiers.org/sbo/SBO:0000179) degradation
	
   <h4 style="color:black">2.1 ss-sti-i</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/ss-sti-i/pd.png" width="224px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/ss-sti-i/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/ss-sti-i/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/ss-sti-i/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/ss-sti-i/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/ss-sti-i/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">2.2 i-sti-ss</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/i-sti-ss/pd.png" width="217.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/i-sti-ss/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/i-sti-ss/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-sti-ss/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/i-sti-ss/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/i-sti-ss/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">2.3 a-cat-ss</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-cat-ss/pd.png" width="217.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-cat-ss/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-cat-ss/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-cat-ss/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-cat-ss/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-cat-ss/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />

	

	

   <h4 style="color:black">2.4 a-inh-ss</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/a-inh-ss/pd.png" width="217.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/a-inh-ss/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/a-inh-ss/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-inh-ss/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/a-inh-ss/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/a-inh-ss/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br /><br /><br />
   
   
   
   
   

## Complex association and dissocitation

<span style="color:red">New section to regroup "Oligomerisation" and "Complexes".</span>

Associated terms: [SBO:0000177](https://identifiers.org/sbo/SBO:0000177) non-covalent binding, [SBO:0000180](https://identifiers.org/sbo/SBO:0000180) dissociation, [GO:0005488](https://identifiers.org/quickgo/GO:0005488) binding

### Heterocomplex association and dissociation
	
	
<span style="color:red">We may use the term "heterocomplex" to differentiate from oligomers</span>

   <h4 style="color:black">5.1 Heterocomplex association (named complex)</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/complex_association_with_complex_name/pd.png" width="245.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/complex_association_with_complex_name/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/complex_association_with_complex_name/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/complex_association_with_complex_name/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/complex_association_with_complex_name/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/complex_association_with_complex_name/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">5.2 Heterocomplex association (unnamed complex)</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/complex_association/pd.png" width="257.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/complex_association/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/complex_association/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/complex_association/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/complex_association/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/complex_association/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">5.3 Regulated heterocomplex association</h4>

<span style="color:red">Generally, shouldn't associations be regulated via stimulations rather than catalyses?</span>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/complex_association_regulated/pd.png" width="245.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/complex_association_regulated/af.png" width="189.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/complex_association_regulated/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/complex_association_regulated/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/complex_association_regulated/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/complex_association_regulated/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	
   <h4 style="color:black">5.4 Heterocomplex dissociation</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/complex_dissociation/pd.png" width="229.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/complex_dissociation/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/complex_dissociation/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/complex_dissociation/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/complex_dissociation/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/complex_dissociation/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br /><br /><br />

### Multimerisation
	
<span style="color:red">In the same section we have multimerisation so couldn't we simply rename the section by "Multimerisation"?</span>

<span style="color:red">All the following rules could be grouped into a unique entry for the sake of succintness: we could rename the section to "Homo-multimerisation", write the label of the unit of information on the multimer as "N:X", the label of the target biological activity as "A-Y", and add a table like the following one, for example:</span>

<table style="color:red">
    <tr>
        <th>X</th>
        <th>Y</th>
    </tr>
    <tr>
        <td>2</td>
        <td>dimer</td>
    </tr>
    <tr>
        <td>3</td>
        <td>trimer</td>
    </tr>
    <tr>
        <td>4</td>
        <td>tetramer</td>
    </tr>
    <tr>
        <td>5</td>
        <td>pentamer</td>
    </tr>
    <tr>
        <td>6</td>
        <td>hexamer</td>
    </tr>
    <tr>
        <td>7</td>
        <td>heptamer</td>
    </tr>
    <tr>
        <td>8</td>
        <td>octamer</td>
    </tr>
    <tr>
        <td>9</td>
        <td>enneamer</td>
    </tr>
    <tr>
        <td>10</td>
        <td>decamer</td>
    </tr>
    <tr>
        <td>>11</td>
        <td>multimer</td>
    </tr>
</table>
	
   <h4 style="color:black">3.1 Dimerisation x2</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/dimerization_x2/pd.png" width="78.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/dimerization_x2/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/dimerization_x2/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/dimerization_x2/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/dimerization_x2/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/dimerization_x2/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">3.2 Oligomerisation x3</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/oligomerization_x3/pd.png" width="78.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/oligomerization_x3/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/oligomerization_x3/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x3/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/oligomerization_x3/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x3/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">3.3 Oligomerisation x4</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/oligomerization_x4/pd.png" width="78.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/oligomerization_x4/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/oligomerization_x4/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x4/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/oligomerization_x4/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x4/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">3.4 Oligomerisation x5</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/oligomerization_x5/pd.png" width="78.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/oligomerization_x5/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/oligomerization_x5/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x5/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/oligomerization_x5/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x5/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">3.5 Oligomerisation x6</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/oligomerization_x6/pd.png" width="78.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/oligomerization_x6/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/oligomerization_x6/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x6/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/oligomerization_x6/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x6/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">3.6 Oligomerisation x7</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/oligomerization_x7/pd.png" width="78.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/oligomerization_x7/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/oligomerization_x7/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x7/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/oligomerization_x7/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x7/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">3.7 Oligomerisation x8</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/oligomerization_x8/pd.png" width="78.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/oligomerization_x8/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/oligomerization_x8/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x8/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/oligomerization_x8/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x8/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">3.8 Oligomerisation x9</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/oligomerization_x9/pd.png" width="78.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/oligomerization_x9/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/oligomerization_x9/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x9/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/oligomerization_x9/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x9/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">3.9 Oligomerisation x10</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/oligomerization_x10/pd.png" width="78.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/oligomerization_x10/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/oligomerization_x10/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x10/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/oligomerization_x10/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x10/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">3.10 Multimerization 1</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/multimerization_1/pd.png" width="78.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/multimerization_1/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/multimerization_1/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/multimerization_1/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/multimerization_1/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/multimerization_1/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">3.11 Multimerization 2</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/multimerization_2/pd.png" width="78.4px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/multimerization_2/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/multimerization_2/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/multimerization_2/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/multimerization_2/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/multimerization_2/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">3.12 Oligomerisation x6 r</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/oligomerization_x6_r/pd.png" width="153.6px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/oligomerization_x6_r/af.png" width="165.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/oligomerization_x6_r/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x6_r/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/oligomerization_x6_r/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/oligomerization_x6_r/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br /><br /><br />






## Translocation and transport

<span style="color:red">Renamed to "Translocation and transport", because "regulated translocation" is a transport following the SBO.</span>
	
Associated terms: [SBO:0000185](https://identifiers.org/sbo/SBO:0000185) tranlocation reaction, [SBO:0000655](https://identifiers.org/quickgo/SBO:0000655) transport reaction, [GO:0006810](https://identifiers.org/quickgo/GO:0006810) transport
	

   <h4 style="color:black">4.1 Translocation 1</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/translocation_1/pd.png" width="124px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/translocation_1/af.png" width="124px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/translocation_1/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/translocation_1/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/translocation_1/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/translocation_1/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
	

	


   <h4 style="color:black">4.2 Transport</h4>

<span style="color:red">Renamed to transport.</span>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/translocation_2/pd.png" width="204px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/translocation_2/af.png" width="284px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/translocation_2/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/translocation_2/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/translocation_2/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/translocation_2/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br /><br /><br />





## Hidden inhibition
	
<span style="color:red">Could not find any associated terms for this category.</span>
	


   <h4 style="color:black">6.1 Hidden inhibition 1</h4>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/hidden_inhibition_1/pd.png" width="392px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/hidden_inhibition_1/af.png" width="69.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/hidden_inhibition_1/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/hidden_inhibition_1/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/hidden_inhibition_1/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/hidden_inhibition_1/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br />
   



	
   <h4 style="color:black">6.2 Hidden inhibition 2</h4>

<span style="color:red">I think this one can be deleted since it is a combination of 6.1 and 1.7.</span>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/hidden_inhibition_2/pd.png" width="392px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/hidden_inhibition_2/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/hidden_inhibition_2/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/hidden_inhibition_2/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/hidden_inhibition_2/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/hidden_inhibition_2/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table><br /><br /><br />

      




## New schemes

	

	


   <h4 style="color:black">9.3 Regulation combining 1</h4>

<span style="color:red">Is this a unique rule, implemented in the converter? It could be a rule among others that allow transforming logical operators (for example this rule could also work with an "AND" operator).</span>

<table class="rules-table">
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<div><img src="/images/specification/regulation_combining_1/pd.png" width="232px" /></div>
		</td>
		<td style="width:300px; text-align:center;">
			<img src="/images/specification/regulation_combining_1/af.png" width="229.6px" />
		</td>
	</tr>
	<tr style="font-size:90%">
		<td style="width:400px; text-align:center;">
			<a href="/images/specification/regulation_combining_1/pd.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/regulation_combining_1/pd.sbgn" target="_blank">Newt</a>
		</td>
		<td style="width:300px; text-align:center;">
			<a href="/images/specification/regulation_combining_1/af.sbgn">SBGN-ML</a>&ensp;
			<a href="http://web.newteditor.org/?URL=https://www.pd2af.org//images/specification/regulation_combining_1/af.sbgn" target="_blank">Newt</a>
		</td>
	</tr>
</table>


