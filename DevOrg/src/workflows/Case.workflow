<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Case_Approved</fullName>
        <description>Case Approved</description>
        <protected>false</protected>
        <recipients>
            <recipient>meetmemohit@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Alert_PRA_transferred</template>
    </alerts>
    <fieldUpdates>
        <fullName>Set_Case_to_Escalated</fullName>
        <field>IsEscalated</field>
        <literalValue>1</literalValue>
        <name>Set Case to Escalated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Case_Update</fullName>
        <apiVersion>39.0</apiVersion>
        <endpointUrl>https://mail.google.com/mail/u/0/#inbox</endpointUrl>
        <fields>CaseNumber</fields>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>cynthia1@xyz.com</integrationUser>
        <name>Case Update</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Case Escalate on High Priority</fullName>
        <actions>
            <name>Set_Case_to_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update</name>
            <type>OutboundMessage</type>
        </actions>
        <actions>
            <name>Follow_Up_on_Escalated_Case</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>notEqual</operation>
            <value>Closed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Follow_Up_on_Escalated_Case</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Follow Up on Escalated Case</subject>
    </tasks>
</Workflow>
