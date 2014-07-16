 <cfinclude template="header.cfm">

<cfset thisPath = ExpandPath("*.*")>
<cfset thisDirectory = GetDirectoryFromPath(thisPath)>

<cfif isdefined("url.pin")>
	<CFIF FileExists(ExpandPath("pin/#url.pin#.cfm"))>
		<cfinclude template="pin/#url.pin#.cfm">
	<CFELSE>
	Invalid PIN.  Please Retry: <div class="cursor">&nbsp;</div>
	<FORM name="myForm">&nbsp;<input type="text" name="pin" size="4"></form>
	</CFIF>
<cfelse>
Please enter your PIN:<div class="cursor">&nbsp;</div>
<FORM name="myForm">&nbsp;<input type="text" name="pin" size="4">

</form>

</CFIF>


<cfinclude template="footer.cfm">