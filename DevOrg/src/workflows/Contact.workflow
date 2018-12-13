<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Update_Alert</fullName>
        <description>Update Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>meetmemohit@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/test_mail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_Name</fullName>
        <field>FirstName</field>
        <formula>&apos;Mohit&apos;</formula>
        <name>Update Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_last_name</fullName>
        <field>AssistantName</field>
        <formula>&apos;Ashwini&apos;</formula>
        <name>Update last name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Email Alert</fullName>
        <actions>
            <name>Update_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Email )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update</fullName>
        <actions>
            <name>Update_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_last_name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.AccountName</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
