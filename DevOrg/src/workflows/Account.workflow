<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Annual_Revenue</fullName>
        <field>AnnualRevenue</field>
        <formula>80</formula>
        <name>Annual Revenue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_on_Approval</fullName>
        <field>Type</field>
        <literalValue>Pending</literalValue>
        <name>Update on Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_on_Final_Approval</fullName>
        <field>Type</field>
        <literalValue>Customer</literalValue>
        <name>Update on Final Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_on_Rejection</fullName>
        <field>Type</field>
        <literalValue>Prospect</literalValue>
        <name>Update on Rejection</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Send_Update</fullName>
        <apiVersion>39.0</apiVersion>
        <endpointUrl>https://mail.google.com/mail/u/0/#inbox</endpointUrl>
        <fields>AccountNumber</fields>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>meetmemohit@gmail.com</integrationUser>
        <name>Send Update</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Update Description</fullName>
        <actions>
            <name>Annual_Revenue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
