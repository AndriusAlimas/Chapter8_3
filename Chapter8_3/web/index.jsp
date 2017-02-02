<!DOCTYPE html>
<!-- this you cannot use because PersonBean is abstract class you cannot set
any attribute class that are abstract,interface, because you cannot make object from it
If you want make a polymorphic bean you need put bean attribute type and there you
will set a reference type, then a class type must be a concrete subclass -->
<%-- <jsp:useBean id='person' scope='session' class='example.PersonBean' /> --%>
<jsp:useBean id='person' scope='session' type='example.PersonBean' class='example.EmployeeBean' />

<!--  Now we need set bean property, because we did not include in default constructor -->
<jsp:setProperty name='person' property='firstName' value='Andrius' />
<jsp:setProperty name='person' property='lastName' value='Alimas' />
<jsp:setProperty name='person' property='empID' value='46544' />
<jsp:setProperty name='person' property='startYear' value='2006' />
<jsp:setProperty name='person' property='payRate' value='7.50' />

<html>
<head>
<meta charset="ISO-8859-1">
<title>Bean Example</title>
</head>
<body>
	<h1>Bean Example Demo</h1>
	Employee Data: </br>
	<table border="1" >
		<tr>
			<td>First Name:</td>
			<td><jsp:getProperty name='person' property='firstName' /></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><jsp:getProperty name="person" property="lastName" /></td>
		</tr>
		<tr>
			<td>Employee ID:</td>
			<td><jsp:getProperty name="person" property="empID" /></td>
		</tr>
		<tr>
			<td>Start Year:</td>
			<td><jsp:getProperty name="person" property="startYear" /></td>
		</tr>
		<tr>
			<td>Pay Rate:</td>
			<td><jsp:getProperty name='person' property='payRate' /></td>
		</tr>
</body>
</html>