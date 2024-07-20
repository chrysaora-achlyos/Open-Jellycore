extension CheckRetValueOpenJellycoreTests {
    var retval_OpenJellycoreTests_testMenu: String {
        return """
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>WFWorkflowActions</key>
	<array>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.choosefrommenu</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>GroupingIdentifier</key>
				<string>0D20EA84-4127-4810-B103-E2EC7CE6F036</string>
				<key>WFControlFlowMode</key>
				<integer>0</integer>
				<key>WFMenuItems</key>
				<array>
					<string>Case One</string>
					<string>Case Two</string>
				</array>
				<key>WFMenuPrompt</key>
				<string>Hello World!</string>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.choosefrommenu</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>GroupingIdentifier</key>
				<string>0D20EA84-4127-4810-B103-E2EC7CE6F036</string>
				<key>WFControlFlowMode</key>
				<integer>1</integer>
				<key>WFMenuItemTitle</key>
				<string>Case One</string>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.previewdocument</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>WFInput</key>
				<dict>
					<key>Value</key>
					<dict>
						<key>Aggrandizements</key>
						<array/>
						<key>Type</key>
						<string>ExtensionInput</string>
						<key>VariableName</key>
						<string>ShortcutInput</string>
					</dict>
					<key>WFSerializationType</key>
					<string>WFTextTokenAttachment</string>
				</dict>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.choosefrommenu</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>GroupingIdentifier</key>
				<string>0D20EA84-4127-4810-B103-E2EC7CE6F036</string>
				<key>WFControlFlowMode</key>
				<integer>1</integer>
				<key>WFMenuItemTitle</key>
				<string>Case Two</string>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.previewdocument</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>WFInput</key>
				<dict>
					<key>Value</key>
					<dict>
						<key>Aggrandizements</key>
						<array/>
						<key>Type</key>
						<string>ExtensionInput</string>
						<key>VariableName</key>
						<string>ShortcutInput</string>
					</dict>
					<key>WFSerializationType</key>
					<string>WFTextTokenAttachment</string>
				</dict>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.choosefrommenu</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>GroupingIdentifier</key>
				<string>0D20EA84-4127-4810-B103-E2EC7CE6F036</string>
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
