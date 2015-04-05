<!---

		Create by : 	Jhon Edison Gomez
		date :			02-Apr-2015
		description:	example to regular expressions, taked from
						coldfusion 9 documentation, and bendel web page

--->


<!---
		this functions is to split a regular expresion
		e.g get an array hello, my name;
		is jhon, the function remove the "," and ";"
		and the sentence will be  my name is Jhon,

		this function is to coldfusion 8

--->

<cffunction name="resplitExample" access="public" returntype="any">
	<cfargument name="value" type="any" required="true">

	<!---
			remove the , sign in the sentence coldfusion change
			the string value to array

	--->
	<cfset split = Arguments.value.Split(",")>

	<cfreturn split>

</cffunction>


<!---
		the following functions, are to coldfusion 9

		the replace() function, is to replace or remove of the sentence
		anything regular expresion like , "" !..., [a-z], [A-Z],[0-9]

--->
<cffunction name="replaceExample" access="public" returntype="any">
	<cfargument name="value" type="any" required="true">


		<!---><cfset repExpresion = REReplace(value,"h|l","g","ALL")>--->
		<cfset repExpresion = REReplace(value,",","","ALL")>
		<!---><cfset repExpresion = REReplace(value,"[a-z]","g","ALL")>--->

	<cfreturn repExpresion>
</cffunction>

<!---
		the refind() function is to find in a regular expressions,
		a word or letter; when it found return the first position where is the
		word or letter or, e,g. I have a regular expression accddss, and I want to
		find the word or letter c, when found the word or letter return the number 2 beacuse
		is the first position that is in the regular expression

		e.g to find or to do search [A-Za-z],[[:alpha:]],[[:upper:]],[\?&]rep =


--->

<cffunction name="findExample" access="public" returntype="any">
	<cfargument name="expressionFind" type="any" required="true">
	<cfargument name="value" type="any" required="true">

	<cfset findExample = REFind(expressionFind, value)>

	<cfreturn findExample>
</cffunction>


<cffunction name="macthExample" access="public" returntype="any">
	<cfargument name="expressionMatch" type="any" required="true">
	<cfargument name="value" type="any" required="true">

	<cfset matchExample = REmatch(expressionMatch, value)>

	<cfreturn matchExample>
</cffunction>


