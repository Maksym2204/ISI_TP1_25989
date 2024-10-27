<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
	<xsl:template match="/Rifas">
		<html>
			<head>
				<title>Rifas</title>
			</head>
			<body>
				<h1>Rifas</h1>
				<table border="1">
					<!-- grid header -->
					<tr bgcolor="lightgreen">
						<td>Rifa</td>
						<td>Nome</td>
					</tr>
					<xsl:apply-templates select="Rifa">
						<xsl:sort select="title" />
					</xsl:apply-templates>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="Rifa">
		<!-- grid value fields -->
		<tr>
			<td>
				<xsl:value-of select="NumRifa"/>
			</td>
			<td>
				<xsl:value-of select="NomeRifa"/>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>

