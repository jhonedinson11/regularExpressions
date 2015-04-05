<!---

		Create by : 	Jhon Edison Gomez
		date :			03-Apr-2015
		description:	Create form to get the data and send to the functions

		Update by : 	Jhon Edison Gomez
		date :			05-Apr-2015
		description:	Test commit

--->

<!---import of libraries--->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<h1>TESTING REGULAR EXPRESSIONS FROM COLDFUSION</h1><br>

<!---build the form--->
<cfform name="cfformexample" action="" format="HTML"  role="form" method="POST">

	 <div class="form-group">
		<label class="col-sm-2 control-label"> please type the message:</label>
		<div class="col-sm-10">
			<div class="col-xs-4">
				<cfinput type="text" name="value"  class="form-control" >
			</div>
		</div>

		<label class="col-sm-2 control-label"> please type the expression:</label>
		<div class="col-sm-10">
			<div class="col-xs-4">
				<cfinput type="text" name="expression"  class="form-control" >
			</div>
		</div>

			<label class="col-sm-2 control-label"> please Select the method:</label>
			<div class="col-sm-10">
				<div class="col-xs-4">
					<cfselect name="method" class="form-control">
						<option value = "select">Select All</option>
						<option value = "resplitExample">resplitExample</option>
						<option value = "replaceExample">replaceExample</option>
						<option value = "findExample">findExample</option>
						<option value = "macthExample">macthExample</option>
					</cfselect>
				</div>
				<div class="col-sm-12">
					<br>
					<cfinput type = "submit" name = "submit" class="btn btn-primary" value = "show me the result">
				</div>
			</div>
<br><br><br>
</cfform>
<br><br><br><br><br><br>
<h3>THIS IS THE RESPONSE FROM THE FUNCTIONS</h3>

<cfif isdefined('value')>

	<!---import or include the all functions--->
	<cfinclude template="Functions.cfm" />

	<cfswitch expression="#method#">

		<cfcase value="select">

			<cfoutput>
				<h4>PLEASE SELECT AN OPTION</h4>
			</cfoutput>

		</cfcase>

		<cfcase value="resplitExample">

			<cfset example = resplitExample('#value#')>
			<cfset length = arrayLen(example)>

			<cfoutput>

				this is the original sentence: #value#<br>
				this is the new sentence:

			<!---print the result to resplitExample function, this return an array --->
			</cfoutput>
			<cfloop  from="1"  index="index" to="#length#">
				<cfoutput>
					 #example[index]#
				</cfoutput>
			</cfloop>

		</cfcase>

		<cfcase value="replaceExample">

			<cfset example = replaceExample('#value#')>
			<cfoutput>
				#example#
			</cfoutput>

		</cfcase>

		<cfdefaultcase>

			<cfset example = evaluate("#method#('#expression#','#value#')")>
			<cfdump var="#example#">

		</cfdefaultcase>

	</cfswitch>

</cfif>
