#Adding words to the aspell dictionary
- This should be done pragmatically. There should be no hesitation in adding a non-word token ("TODO"; the "SAR" from "SAR11") so it will not be flagged again. The only exception should be if the token is a likely misspelling in another context. Remember, the custom dictionary can always be manually edited later and aspell is an assistive rather than authoritative proofreading tool.

#Scientific names
- Capitalise, but do not italicise, ranks higher than genus.
- Derived forms of any rank are non-italicised and lower case ("alphaproteobacterial"; "gammaproteobacterium").
- While it could be considered that referring to the set of organisms, rather than to the rank itself, is a derived form (so "the sample was full of flavobacteria"), for consistency's sake the capitalised form will always be used ("some Gammaproteobacteria are methane oxidisers"). No rank should not appear anywhere uncapitalised.
- After Buchan et al. 2005: roseobacters (no italics) is acceptable for referring to members of the clade Roseobacter. Note that Buchan et al. italicise Roseobacter, but I will avoid this as it misleadingly implies the genus of the same name.
- Regarding spelling: as I'm using a custom dictionary, storing Latin names as well as the text parts of clade names (e.g. the "SAR" from "SAR11") in aspell is acceptable, although of course the spelling should be checked before adding.
- Giving a rank without an article refers to that rank ("Verrucomicrobia is a recently described bacterial phylum"), while adding an article indicates a representative or representatives of the rank ("The Verrucomicrobia found in the first sample were absent from the second").
- It is acceptable to refer to members of the domains Bacteria, Archaea and Eukarya as bacteria, archaea and eukarya respectively.
- Candidatus names: the word "Candidatus" should always be italicised. The entire name should be surrounded by quotation marks. So: "The new strain was called "*Candidatus* Pelagibacter ubique", and "*Ca*. P. ubique" soon became very popular."

#Gene and protein names
- Rather than futilely attempting to apply a universal style, gene names should be copied faithfully from the source, including capitalisation and italicisation or lack thereof. Where sources disagree, one should be selected as authoritative and its style consistently applied. 
- As I'm using a custom dictionary, storing gene and protein names in aspell is fine.
- Chlorophyll a: the word "chlorophyll" should always be in roman type; the "a" should be in italics. The abbreviated form is "chl a", with the "a" in italics.

#Metagenomes and metagenomics
- A metagenome is the genetic material recovered from an environmental sample, and the genetic sequence(s) of that material.
- There is no need to say "metagenomic dataset" or "set of metagenomic sequences" where merely "metagenome" will do.

#American English
- As a general rule, Australian English spellings should be used: so "oxidise" rather than "oxidize"; "sulphonate" rather than "sulfonate".
- However, an exception can be made when the word forms part of a name already in the literature: so the GSO are the "Gammaproteobacterial Sulfur Oxidizers".

#Quotation marks
- Double quotation marks, typeset using LaTeX's "``" and "''" commands, should always be used for quotations.
- Double quotation marks should always be used for use-mention distinctions.

#id est, exempli gratia and et cetera (i.e., e.g. and etc.)
- Because LaTeX will treat the periods in these forms as full stops, an escaped space should be added to form "i.e.\ ", "e.g.\ " and "etc.\ ". Note the space after the "\". Do not use this with the "citep" command; LaTeX will handle correct spacing for e.g. "\citep[e.g]{smith2001}".
- Neither "i.e." nor "e.g." should be followed by a comma.

#Headings (chapter, section etc.)
- Only the first word of a heading should be capitalised.
- Acronyms in headings should be expanded.

#Approximately, greater than, less than and plus/minus signs
- "Approximately" should be denoted with a tilde (\textapprox), with no space between the sign and the number.
- Greater than and less than signs should be followed by a space.
- Plus/minus signs should not be followed by a space.

#Oxford comma
- Do not use the Oxford comma.

#Em dashes
- Em dashes should be flanked by spaces.

#Software, programming language and algorithm names
- All software, programming language and algorithm names should be typeset in small caps and a distinct font family, using the \softwarename macro.
- The letters within the name should be all lowercase (i.e. all small caps, not a mix of small and large caps). The only exception should be if a definitive source (e.g. the paper first announcing the software or algorithm) gives the name typeset in a mixture of small and large caps. If the name is typeset in all large caps in the primary source, it should be typeset in all small caps in my thesis.
- If a software or algorithm name is also an acronym (e.g. BLAST), the usual rules for acronyms apply. If the acronym is uncomman and needs defining, it should be defined in the acronyms list and typeset using "\ac" commands. If it is common and does not need defining (e.g. BLAST), it should be typeset using the "\softwarename" command.

#Units of measurement, percentages and degrees
- All standard units of measurement should be typeset with a space between the value and the unit: 10 mL.
- Base pairs: bp; kbp: kilo base pairs, Mbp: mega base pairs; Gbp: giga base pairs
- Percentages should have no space: 45%.
- Temperatures should be typeset as follows: 37 ºC (in LaTeX, "37 \textdegrees{}C").
- Latitude and longitude should be typeset as follows: 40º S, 140º E.
- Latitude and longitude should be expressed using hemisphere rather than signed numer, i.e. "50º S" rather than "-50º" ("-50º S" is always incorrect). The exception is in a table column with the header "Latitude" or "Longitude", where e.g. "–50º" is preferred.
- Derived units should be set using a slash rather than scientific notation, i.e. mg/mL, not mg.mL⁻¹.
- Times may be written either in full (two hours) or abbreviated (2 h), but the two forms should not be mixed (i.e. 4.5 hours is incorrect). Time abbreviations (h, min, sec) do not need periods (i.e. h., min., sec are incorrect).
- When describing amounts of regents (i.e. mass nouns), "of" should always be used: so "20 g of salt was added", not "20 g salt was added".

#Materials suppliers and other companies
- Specialist reagents and materials, particularly those with trademarked names, should be followed with the name, city and country of the manufacturer: "Proteinase K (Sigma-Aldrich, St.\ Louis, USA)". This only needs to appear the first time the reagent or material is mentioned.

#Footnotes
- Sentences in footnotes should end with a period.

#Dates
- Dates should be writteen in the order Month, Day (ordinal), Year, with no commas: so "January 5th 2008"; "March 2012".
- The ordinal indicators (st, nd, th) should not be set as superscripts.
- Date ranges should be indicated by en dashes with no spaces: so "January 5th--March 1st 2010"; "December 1986--April 1987". The month or year can be omitted from the start of the range if it is the same as the end: so "2nd--15th May 2013"; "August--November 1987".

#"Biogeographic" vs "Biogeographical"
- Prefer "Biogeographic".

#Counting numbers
- Counts less than or equal to twenty should be written out in full. However, any number used to quantify a unit should be written in numerals. So, "We used eleven ships and 45 helicopters to take 189 2.5 mg samples."
