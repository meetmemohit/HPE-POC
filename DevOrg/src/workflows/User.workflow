<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>User_Inactive_Alert_mail</fullName>
        <description>User Inactive Alert mail</description>
        <protected>false</protected>
        <recipients>
            <recipient>meetmemohit@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Reminder1_PRA_Inactive</template>
    </alerts>
    <alerts>
        <fullName>User_Inactive_Alert_mail1</fullName>
        <description>User Inactive Alert mail1</description>
        <protected>false</protected>
        <recipients>
            <recipient>meetmemohit@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Reminder1_PRA_Inactive</template>
    </alerts>
    <fieldUpdates>
        <fullName>Set_Date_to_Blank</fullName>
        <field>Inactive_Date__c</field>
        <name>Set Date to Blank</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Deactivate_Date_to_Today</fullName>
        <field>Inactive_Date__c</field>
        <formula>TODAY()</formula>
        <name>Set Deactivate Date to Today</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Reset Reactivated User</fullName>
        <actions>
            <name>Set_Date_to_Blank</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>User.IsActive</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set Deactivate Date</fullName>
        <actions>
            <name>User_Inactive_Alert_mail1</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Set_Deactivate_Date_to_Today</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>User.IsActive</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
