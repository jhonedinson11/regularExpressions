<cfinclude template="Functions.cfm" />

<!--get the sentence to use the regular expresion functions---->
<cfset sentence = "hello, my name, is jhon,">

<h1>SPLIT FUNCTION</h1>
<cfset value = resplitExample(sentence)>

<cfset length = arrayLen(value)>
<cfoutput>

	this is the original sentence: #sentence#<br>
	this is the new sentence:

<!---print the result to resplitExample function, this return an array --->
</cfoutput>
<cfloop  from="1"  index="index" to="#length#">
<cfoutput>
	 #value[index]#
</cfoutput>
</cfloop>

<!---RERplace function--->
<h1>RERPLACE FUNCTION</h1>

<cfset value = replaceExample(sentence)>

<cfoutput>

	this is the original sentence: #sentence#<br>
	this is the new sentence: #value#

</cfoutput>

<h1>REFIND FUNCTION</h1>
<cfset value = findExample("hello",sentence)>
<cfoutput>
	the position in the sentence is :#value#

</cfoutput></p>



<cfset mydata = 'some string with "the first data i want" and "the second data i want"'/>
<cfset matches = REMatch('"([^"]*)"', mydata) />
<cfdump var="#matches#" label="Example REMatch" />


