extension CheckRetValueOpenJellycoreTests {
    var retval_OpenJellycoreTests_testRepeat: String {
        return """
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>WFWorkflowActions</key>
	<array>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.repeat.count</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>GroupingIdentifier</key>
				<string>781480EA-1235-40FA-9828-6AFB77BFFCB3</string>
				<key>WFControlFlowMode</key>
				<integer>0</integer>
				<key>WFRepeatCount</key>
				<real>100</real>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.gettext</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>WFTextActionText</key>
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
								<string>Repeat Index</string>
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
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.repeat.count</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>GroupingIdentifier</key>
				<string>781480EA-1235-40FA-9828-6AFB77BFFCB3</string>
				<key>WFControlFlowMode</key>
				<integer>2</integer>
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
