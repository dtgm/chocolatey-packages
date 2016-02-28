Summary of Readme.md and script files at https://github.com/chocolatey/chocolatey-coreteampackages/tree/master/bin

We use [Saxon Home Edition](https://chocolatey.org/packages/SaxonHE) because most other tools only support `xslt 1.0` and we need `xslt 2.0` for the kind of magic we use.

### Fix package XML based on template

`ketarin-filter-settings.sh PACKAGEID.ketarin.xml`

OUTPUT  

`PACKAGEID.ketarin-fixed.xml`

ketarin-filter-settings.sh
```bash
#!/usr/bin/env bash
# apt-get install libsaxonhe-java

java -jar /usr/share/maven-repo/net/sf/saxon/Saxon-HE/9.x/Saxon-HE-9.x.jar -s:"$1" -xsl:ketarin-template.xsl
```


ketarin-filter-settings.bat
```bat
@%~dp0transform-xml.bat "%~1" "%~dp0ketarin-template.xsl"
```

ketarin-template.xsl
```xsl
<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output indent="yes" cdata-section-elements="SourceTemplate"/>
	<xsl:template match="/Jobs/ApplicationJob">
		<xsl:result-document method="xml" href="{Name}.ketarin-fixed.xml">
			<Jobs>
				<ApplicationJob xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
					<xsl:for-each select="@*">
						<xsl:attribute name="{name(.)}"><xsl:value-of select="."/></xsl:attribute>
					</xsl:for-each>
					<xsl:copy-of select="SourceTemplate" />
					<WebsiteUrl />
					<UserAgent />
					<UserNotes />
					<xsl:copy-of select="LastFileSize" />
					<xsl:copy-of select="LastFileDate" />
					<IgnoreFileInformation>false</IgnoreFileInformation>
					<DownloadBeta>Default</DownloadBeta>
					<DownloadDate xsi:nil="true" />
					<CheckForUpdatesOnly>false</CheckForUpdatesOnly>
					<VariableChangeIndicator />
					<CanBeShared>true</CanBeShared>
					<ShareApplication>false</ShareApplication>
					<ExclusiveDownload>false</ExclusiveDownload>
					<HttpReferer />
					<SetupInstructions />
					<xsl:copy-of select="Variables" />
					<ExecuteCommand />
					<ExecutePreCommand />
					<ExecuteCommandType>Batch</ExecuteCommandType>
					<ExecutePreCommandType>Batch</ExecutePreCommandType>
					<Category />
					<SourceType>FixedUrl</SourceType>
					<PreviousLocation />
					<DeletePreviousFile>true</DeletePreviousFile>
					<Enabled>true</Enabled>
					<FileHippoId />
					<xsl:copy-of select="LastUpdated" />
					<TargetPath>C:\Chocolatey\_work\</TargetPath>
					<xsl:copy-of select="FixedDownloadUrl" />
					<xsl:copy-of select="Name" />
				</ApplicationJob>
			</Jobs>
		</xsl:result-document>
	</xsl:template>
</xsl:stylesheet>
```

### Job splitter

Example usage:

Imagine we have a batch of jobs called ketarin.xml. Running `ketarin-jobs-splitter.sh ketarin.xml` will generate single `{{PackageName}}.ketarin.xml` files in their respective `/automatic/{{PackageName}}/` directories.


ketarin-jobs-splitter.sh
```bash
#!/usr/bin/env bash

java -jar /usr/share/maven-repo/net/sf/saxon/Saxon-HE/9.x/Saxon-HE-9.x.jar -s:"$1" -xsl:ketarin-jobs-splitter.xsl -o:null.xml
```


ketarin-jobs-splitter.bat
```bat
@%~dp0transform-xml.bat "%~1" "%~dp0ketarin-jobs-splitter.xsl"
```



ketarin-jobs-splitter.xsl
```xsl
<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output indent="yes" cdata-section-elements="SourceTemplate"/>
	<xsl:template match="/Jobs">
		<xsl:for-each select="ApplicationJob">
			<xsl:result-document method="xml" href="automatic/{Name}/{Name}.ketarin.xml">
				<Jobs>
					<xsl:copy-of select="." />
				</Jobs>
			</xsl:result-document>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
```

