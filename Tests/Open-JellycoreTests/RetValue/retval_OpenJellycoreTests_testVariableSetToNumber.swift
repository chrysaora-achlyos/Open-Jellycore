extension CheckRetValueOpenJellycoreTests {
    var retval_OpenJellycoreTests_testVariableSetToNumber: String {
        return """
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>WFWorkflowActions</key>
	<array>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.number</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>CustomOutputName</key>
				<string>Generated Magic Variable CB566598-7951-4D88-B38A-7CBBB00F665C</string>
				<key>UUID</key>
				<string>CB566598-7951-4D88-B38A-7CBBB00F665C</string>
				<key>WFNumberActionNumber</key>
				<real>42</real>
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
						<string>Generated Magic Variable CB566598-7951-4D88-B38A-7CBBB00F665C</string>
						<key>OutputUUID</key>
						<string>CB566598-7951-4D88-B38A-7CBBB00F665C</string>
						<key>Type</key>
						<string>ActionOutput</string>
					</dict>
					<key>WFSerializationType</key>
					<string>WFTextTokenAttachment</string>
				</dict>
				<key>WFVariableName</key>
				<string>meaningOfLife</string>
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
