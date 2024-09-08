extension CheckRetValueOpenJellycoreTests {
    var retval_OpenJellycoreTests_testIssue29: String {
        return """
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>WFWorkflowActions</key>
	<array>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.gettext</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>CustomOutputName</key>
				<string>Generated Magic Variable 7CD8031E-6233-4C3C-8358-64C01EA54FF0</string>
				<key>UUID</key>
				<string>7CD8031E-6233-4C3C-8358-64C01EA54FF0</string>
				<key>WFTextActionText</key>
				<string>http://www.jahoo.com</string>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.setvariable</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>WFInput</key>
				<dict>
					<key>Value</key>
					<dict>
						<key>Aggrandizements</key>
						<array/>
						<key>OutputName</key>
						<string>Generated Magic Variable 7CD8031E-6233-4C3C-8358-64C01EA54FF0</string>
						<key>OutputUUID</key>
						<string>7CD8031E-6233-4C3C-8358-64C01EA54FF0</string>
						<key>Type</key>
						<string>ActionOutput</string>
					</dict>
					<key>WFSerializationType</key>
					<string>WFTextTokenAttachment</string>
				</dict>
				<key>WFVariableName</key>
				<string>cmsURL</string>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.url</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>WFURLActionURL</key>
				<dict>
					<key>Value</key>
					<dict>
						<key>attachmentsByRange</key>
						<dict>
							<key>{0, 1}</key>
							<dict>
								<key>Aggrandizements</key>
								<array/>
								<key>Type</key>
								<string>Variable</string>
								<key>VariableName</key>
								<string>cmsURL</string>
							</dict>
						</dict>
						<key>string</key>
						<string>&#xFFFC;</string>
					</dict>
					<key>WFSerializationType</key>
					<string>WFTextTokenString</string>
				</dict>
			</dict>
		</dict>
	</array>
	<key>WFWorkflowClientRelease</key>
	<real>3</real>
	<key>WFWorkflowClientVersion</key>
	<string>1050.24</string>
	<key>WFWorkflowIcon</key>
	<dict>
		<key>WFWorkflowIconGlyphNumber</key>
		<integer>61440</integer>
		<key>WFWorkflowIconStartColor</key>
		<integer>4282601983</integer>
	</dict>
	<key>WFWorkflowImportQuestions</key>
	<array/>
	<key>WFWorkflowInputContentItemClasses</key>
	<array/>
	<key>WFWorkflowMinimumClientVersion</key>
	<integer>900</integer>
	<key>WFWorkflowMinimumClientVersionString</key>
	<string>900</string>
	<key>WFWorkflowTypes</key>
	<array>
		<string>NCWidget</string>
	</array>
</dict>
</plist>

"""
    }
}
