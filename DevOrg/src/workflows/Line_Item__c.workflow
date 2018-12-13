<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Copy_Unit_Price</fullName>
        <field>Unit_Price__c</field>
        <formula>Merchandise__r.Price__c  * 2   -  Quantity__c</formula>
        <name>Copy Unit Price</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Reset_Price</fullName>
        <field>Unit_Price__c</field>
        <formula>Merchandise__r.Price__c</formula>
        <name>Reset Price</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Populate Unit Price</fullName>
        <actions>
            <name>Copy_Unit_Price</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Line_Item__c.Quantity__c</field>
            <operation>greaterThan</operation>
            <value>1</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
