<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Extend an Offer</fullName>
        <actions>
            <name>Extend_an_offer1</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Status__c</field>
            <operation>equals</operation>
            <value>Extend an Offer</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Rejection letter</fullName>
        <actions>
            <name>Application_Status_Rejected2</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Status__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Application_Status_Rejected</fullName>
        <assignedTo>meetmemohit@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Application Status Rejected</subject>
    </tasks>
    <tasks>
        <fullName>Application_Status_Rejected2</fullName>
        <assignedTo>meetmemohit@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Application Status Rejected2</subject>
    </tasks>
    <tasks>
        <fullName>Application_Statuse_Rejected</fullName>
        <assignedTo>meetmemohit@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>true</protected>
        <status>Not Started</status>
        <subject>Application Statuse Rejected</subject>
    </tasks>
    <tasks>
        <fullName>Extend_an_offer</fullName>
        <assignedTo>meetmemohit@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>true</protected>
        <status>Not Started</status>
        <subject>Extend an offer</subject>
    </tasks>
    <tasks>
        <fullName>Extend_an_offer1</fullName>
        <assignedTo>meetmemohit@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Extend an offer1</subject>
    </tasks>
</Workflow>
