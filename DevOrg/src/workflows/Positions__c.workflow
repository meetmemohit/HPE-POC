<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Reassign_Position_to_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Unclaimed_Position_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Reassign Position to Queue</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Assign Postion to Recruiter</fullName>
        <actions>
            <name>Reassign_Position_to_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>User.UserRoleId</field>
            <operation>equals</operation>
            <value>Recruiter,Recruiting Manager</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Assign_Unclaimed_Position_Record_to_Recruiter</name>
                <type>Task</type>
            </actions>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Test Rule</fullName>
        <actions>
            <name>New_Position</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Positions__c.Status__c</field>
            <operation>equals</operation>
            <value>New Position</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Positions__c.Open_Date__c</offsetFromField>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Assign_Unclaimed_Position_Record_to_Recruiter</fullName>
        <assignedTo>meetmemohit@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>99999</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Assign Unclaimed Position Record to Recruiter</subject>
    </tasks>
    <tasks>
        <fullName>New_Position</fullName>
        <assignedTo>meetmemohit@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>New Position</subject>
    </tasks>
</Workflow>
