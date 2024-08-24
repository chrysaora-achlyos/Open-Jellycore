extension CheckRetValueOpenJellycoreTests {
    var retval_OpenJellycoreTests_testFunctions: String {
        
        return """
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>WFWorkflowActions</key>
	<array>
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
						<array>
							<dict>
								<key>CoercionItemClass</key>
								<string>WFDictionaryContentItem</string>
								<key>Type</key>
								<string>WFCoercionVariableAggrandizement</string>
							</dict>
							<dict>
								<key>DictionaryKey</key>
								<string>FUNCTION_CALL_NAME</string>
								<key>Type</key>
								<string>WFDictionaryValueVariableAggrandizement</string>
							</dict>
						</array>
						<key>Type</key>
						<string>ExtensionInput</string>
						<key>VariableName</key>
						<string>ShortcutInput</string>
					</dict>
					<key>WFSerializationType</key>
					<string>WFTextTokenAttachment</string>
				</dict>
				<key>WFVariableName</key>
				<string>function-dispatch-62C189FC-1CBF-46C3-9DB2-C5E2CC675AE8</string>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.conditional</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>GroupingIdentifier</key>
				<string>B59A48C2-F904-4373-A011-C07F5E183E0B</string>
				<key>WFCondition</key>
				<integer>4</integer>
				<key>WFConditionalActionString</key>
				<string>test</string>
				<key>WFControlFlowMode</key>
				<integer>0</integer>
				<key>WFInput</key>
				<dict>
					<key>Type</key>
					<string>Variable</string>
					<key>Variable</key>
					<dict>
						<key>Value</key>
						<dict>
							<key>Aggrandizements</key>
							<array>
								<dict>
									<key>CoercionItemClass</key>
									<string>WFStringContentItem</string>
									<key>Type</key>
									<string>WFCoercionVariableAggrandizement</string>
								</dict>
							</array>
							<key>Type</key>
							<string>Variable</string>
							<key>VariableName</key>
							<string>function-dispatch-62C189FC-1CBF-46C3-9DB2-C5E2CC675AE8</string>
						</dict>
						<key>WFSerializationType</key>
						<string>WFTextTokenAttachment</string>
					</dict>
				</dict>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.dictionary</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>CustomOutputName</key>
				<string>dictionaryVariable</string>
				<key>UUID</key>
				<string>2B505723-F8ED-4182-B2AA-0343C47DB9D6</string>
				<key>WFItems</key>
				<dict>
					<key>Value</key>
					<dict>
						<key>WFDictionaryFieldValueItems</key>
						<array>
							<dict>
								<key>WFItemType</key>
								<real>0.0</real>
								<key>WFKey</key>
								<string>FUNCTION_CALL_NAME</string>
								<key>WFValue</key>
								<string>test</string>
							</dict>
						</array>
					</dict>
				</dict>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.comment</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>WFCommentActionText</key>
				<string>====
Start test Function)
====</string>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.comment</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>WFCommentActionText</key>
				<string>====
End test Function
====</string>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.conditional</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>GroupingIdentifier</key>
				<string>B59A48C2-F904-4373-A011-C07F5E183E0B</string>
				<key>WFControlFlowMode</key>
				<integer>1</integer>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.runworkflow</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>WFInput</key>
				<dict>
					<key>Value</key>
					<dict>
						<key>Aggrandizements</key>
						<array/>
						<key>OutputName</key>
						<string>dictionaryVariable</string>
						<key>OutputUUID</key>
						<string>2B505723-F8ED-4182-B2AA-0343C47DB9D6</string>
						<key>Type</key>
						<string>ActionOutput</string>
					</dict>
					<key>WFSerializationType</key>
					<string>WFTextTokenAttachment</string>
				</dict>
				<key>WFShowWorkflow</key>
				<real>1</real>
				<key>WFWorkflowName</key>
				<string>Function Tests</string>
			</dict>
		</dict>
		<dict>
			<key>WFWorkflowActionIdentifier</key>
			<string>is.workflow.actions.conditional</string>
			<key>WFWorkflowActionParameters</key>
			<dict>
				<key>GroupingIdentifier</key>
				<string>B59A48C2-F904-4373-A011-C07F5E183E0B</string>
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