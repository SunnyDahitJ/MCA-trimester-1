<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<body>
		<h2 style= "text-align:center">Employee Management System</h2>
		
		<table border="2" align="center">
		<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>AGE</th>
				<th>SALARY</th>
				<th>EMAIL</th>
				<th>MobNum</th>
				<th>Designation</th>
				<th>Promotion</th>
		</tr>
		<xsl:for-each select="Company/Employee">
		<tr>
			<td>
				<xsl:value-of select="Emp_ID"/>
			</td>
			<td>
				<xsl:value-of select="Emp_name"/>
			</td>
			<td>
				<xsl:value-of select="Emp_age"/>
			</td>
			<td>
				<xsl:value-of select="Emp_salary"/>
			</td>
			<td>
				<xsl:value-of select="Emp_emailid"/>
			</td>
			<td>
				<xsl:value-of select="Emp_phone_no"/>
			</td>
			<td>
				<xsl:value-of select="Emp_designation"/>
			</td>
			<td>
			<xsl:choose>
		                <xsl:when test="Emp_age &gt; 50">Associate Project Manager</xsl:when>
		                <xsl:when test="Emp_age &gt; 40 and Emp_age &lt; 49">Team leaderAssociate Project Manager</xsl:when>
						<xsl:otherwise>Developer</xsl:otherwise>
			</xsl:choose>
			</td>
		</tr>
		</xsl:for-each>	
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
