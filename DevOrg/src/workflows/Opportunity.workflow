<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Price_Discount</fullName>
        <field>Amount</field>
        <formula>Amount * 0.9</formula>
        <name>Price Discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Tick_Discount_Checkbox</fullName>
        <field>Discount_Given__c</field>
        <literalValue>1</literalValue>
        <name>Tick Discount Checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Description</fullName>
        <field>Description</field>
        <formula>&quot;I am into approval process&quot;</formula>
        <name>Update Description</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Description_Field</fullName>
        <field>Description</field>
        <formula>&quot;Update ho gaya&quot;</formula>
        <name>Update Description Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Opportunity Amount Discount</fullName>
        <actions>
            <name>Price_Discount</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Tick_Discount_Checkbox</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Type</field>
            <operation>equals</operation>
            <value>New Customer</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Stage</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Prospecting</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Description_Field</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
