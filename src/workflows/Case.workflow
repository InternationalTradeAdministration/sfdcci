﻿<?xml version="1.0" encoding="utf-8"?><Workflow xmlns="http://soap.sforce.com/2006/04/metadata"><alerts>
        <fullName>Email_Notification_for_new_Case_Comments</fullName>
        <description>Email Notification for new Case Comments</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Case_Comment_Notification_Email</template>
    </alerts><alerts>
        <fullName>Export_gov_New_Non_Register_User_Case_Comment_Email_Notification</fullName>
        <description>Export.gov: New (Non-Register User) Case Comment - Email Notification</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Privacy_Shield_Templates/Export_gov_New_Non_Register_Case_Comment_Notification_Email</template>
    </alerts><alerts>
        <fullName>Export_gov_Website_Feedback_Case_Notification</fullName>
        <description>Export.gov: Website Feedback Case Notification</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Export_gov_New_Case_Non_Register_User_Notification_Email</template>
    </alerts><alerts>
        <fullName>New_Salesforce_Support_Case_Alert</fullName>
        <description>New Salesforce Support Case Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>sandip.menon@trade.gov</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Tier_3_Salesforce_Support/Salesforce_Support_Request_Alert</template>
    </alerts><alerts>
        <fullName>PS_Case_Closure_Email_Notification</fullName>
        <description>PS: Case Closure Email Notification</description>
        <protected>false</protected>
        <recipients>
            <field>ContactEmail</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Privacy_Shield_Templates/PS_Case_Closure_Notification_Template</template>
    </alerts><alerts>
        <fullName>PS_New_Case_Community_User_Notification</fullName>
        <description>PS: New Case (Community) User Notification</description>
        <protected>false</protected>
        <recipients>
            <field>ContactEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Privacy_Shield_Templates/PS_New_Case_Community_User_Notification_Email</template>
    </alerts><alerts>
        <fullName>PS_New_Case_Non_Register_User_Notification</fullName>
        <description>PS: New Case (Non-Register) User Notification</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Privacy_Shield_Templates/PS_New_Case_Non_Register_User_Notification_Email</template>
    </alerts><alerts>
        <fullName>PS_New_Community_User_Case_Comment_Email_Notification</fullName>
        <description>PS: New (Community User) Case Comment - Email Notification</description>
        <protected>false</protected>
        <recipients>
            <field>ContactEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Privacy_Shield_Templates/PS_New_Community_User_Case_Comment_Notification_Email</template>
    </alerts><alerts>
        <fullName>PS_New_Non_Register_User_Case_Comment_Email_Notification</fullName>
        <description>PS: New (Non-Register User) Case Comment - Email Notification</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Privacy_Shield_Templates/PS_New_Non_Register_User_Case_Comment_Notification_Email</template>
    </alerts><alerts>
        <fullName>Send_Privacy_Shield_Application_Approval_to_Case_Contact</fullName>
        <description>Case: Send Privacy Shield Certification Application Approval to Case Contact</description>
        <protected>false</protected>
        <recipients>
            <field>ContactEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Privacy_Shield_Templates/PS_Application_Approved</template>
    </alerts><alerts>
        <fullName>Send_Summary_of_CA_to_Contact</fullName>
        <description>Send Summary of CA to Contact</description>
        <protected>false</protected>
        <recipients>
            <field>ContactId</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Case_CA_Complete_send</template>
    </alerts><alerts>
        <fullName>Stopfakes_New_Non_Register_User_Case_Comment_Email_Notification</fullName>
        <description>Stopfakes: New (Non-Register User) Case Comment - Email Notification</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Privacy_Shield_Templates/Stopfakes_New_Non_Register_Case_Comment_Notification_Email</template>
    </alerts><alerts>
        <fullName>Stopfakes_Website_Feedback_Case_Notification</fullName>
        <description>Stopfakes: Website Feedback Case Notification</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Stopfakes_New_Case_Non_Register_User_Notification_Email</template>
    </alerts><alerts>
        <fullName>Testing_Survey</fullName>
        <description>Testing Survey</description>
        <protected>false</protected>
        <recipients>
            <field>ContactId</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <recipient>felix.yawson@trade.gov</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sandip.menon@trade.gov</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Case_Comment_Notification_Email</template>
    </alerts><alerts>
        <fullName>Trade_Community_Email_Notification_for_new_Case_Comments</fullName>
        <description>Trade Community - Email Notification for new Case Comments</description>
        <protected>false</protected>
        <recipients>
            <field>ContactEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Trade_Community/Trade_Community_New_Case_Comment</template>
    </alerts><alerts>
        <fullName>Trade_Community_Privacy_Shield_Team_Notification_of_New_Case</fullName>
        <description>Trade Community - Privacy Shield Team Notification of New Case</description>
        <protected>false</protected>
        <recipients>
            <field>ContactEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Trade_Community/Trade_Community_New_Case_Email_for_PS_Team</template>
    </alerts><alerts>
        <fullName>Trade_Community_Privacy_Shield_User_new_Case_Notification</fullName>
        <description>Trade Community - Privacy Shield User new Case Notification</description>
        <protected>false</protected>
        <recipients>
            <field>ContactEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>noreply@trade.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Privacy_Shield_Templates/PS_User_Notification_New_Case</template>
    </alerts><fieldUpdates>
        <fullName>AccountName_Lookup_to_Text</fullName>
        <description>This field update is used to copy the AccoutName Lookup value to a text filed so this in Global search with the account name</description>
        <field>Copy_AccountName_to_Text__c</field>
        <formula>TRIM(Account.Name)</formula>
        <name>AccountName Lookup to Text</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Case_Com_Diplomacy</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Commercial_Diplomacy</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Case Com Diplomacy</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Case_Export</fullName>
        <description>To update case record type to Export Promotion when selected</description>
        <field>RecordTypeId</field>
        <lookupValue>Export_Promotion</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Case Export</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Case_Investment_Promotion_RT</fullName>
        <description>To update Case record type to Investment Promotion</description>
        <field>RecordTypeId</field>
        <lookupValue>Investment_Promotion</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Case Investment Promotion RT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Case_RT_Advocacy</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Advocacy</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Case RT Advocacy</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Case_RT_Comm_Diplomacy</fullName>
        <description>New to update Case Record Type to Commercial Diplomacy when Case Type is modified</description>
        <field>RecordTypeId</field>
        <lookupValue>Commercial_Diplomacy</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Case RT Comm Diplomacy</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Case_Type_update_Advo</fullName>
        <description>Update Case Type to match Record Type</description>
        <field>Record_Type__c</field>
        <literalValue>Advocacy</literalValue>
        <name>Case Type update Advo</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Case_Type_update_Comm</fullName>
        <description>update case type to Commercial Diplomacy</description>
        <field>Record_Type__c</field>
        <literalValue>Commercial Diplomacy</literalValue>
        <name>Case Type update Comm</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Case_Type_update_Export</fullName>
        <description>update case type to export promotion</description>
        <field>Record_Type__c</field>
        <literalValue>Export Promotion</literalValue>
        <name>Case Type update Export</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Case_Type_update_Inv</fullName>
        <description>update case type to match record type of Investment Promotion</description>
        <field>Record_Type__c</field>
        <literalValue>Investment Promotion</literalValue>
        <name>Case Type update Inv</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Case_Update_Case_Type_CA</fullName>
        <field>Record_Type__c</field>
        <literalValue>Client Assist</literalValue>
        <name>Case Update Case Type CA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Contact_Email</fullName>
        <field>Copy_Contact_Email__c</field>
        <formula>Contact.Email</formula>
        <name>Contact Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Copy_Contact_Name_in_Case</fullName>
        <field>Contact_Name_copy__c</field>
        <formula>TRIM(Contact.FirstName)+ ' ' +TRIM(Contact.LastName)</formula>
        <name>Copy Contact Name in Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates><fieldUpdates>
        <fullName>Export_Feedback_Assignment_to_Queue</fullName>
        <description>Export.gov Feedback Case Owner changed to 'Export_Feedback' Queue</description>
        <field>OwnerId</field>
        <lookupValue>Export_Feedback</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Export Feedback Assignment to Queue</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates><fieldUpdates>
        <fullName>Export_gov_Feedback_Queue_Assignment</fullName>
        <description>Export.gov Feedback Case Owner changed to 'Export_Feedback' Queue</description>
        <field>OwnerId</field>
        <lookupValue>Export_Feedback</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Export.gov Feedback Queue Assignment</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates><fieldUpdates>
        <fullName>PS_DRE_Case_Owner_Assignment</fullName>
        <description>Dispute Resolution and Enforcement Case Owner Assignment</description>
        <field>OwnerId</field>
        <lookupValue>PS_Dispute_Resolution_and_Enforcement</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>PS: DRE Case Owner Assignment</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates><fieldUpdates>
        <fullName>PS_Feedback_Assignment_to_Queue</fullName>
        <description>Privacyshield.gov Website Feedback Assignment to PS Queue</description>
        <field>OwnerId</field>
        <lookupValue>PS_Website_Feedback</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>PS Feedback Assignment to Queue</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates><fieldUpdates>
        <fullName>PS_Outreach_Case_Owner_Assignment</fullName>
        <description>PS: Outreach and Education Case Owner Assignment</description>
        <field>OwnerId</field>
        <lookupValue>PS_Outreach_and_Education</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>PS: Outreach Case Owner Assignment</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates><fieldUpdates>
        <fullName>Participation_Case_Owner_Assignment</fullName>
        <description>Assigning Participation Cases to PS: Participation queue</description>
        <field>OwnerId</field>
        <lookupValue>PS_Participation</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Participation Case Owner Assignment</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates><fieldUpdates>
        <fullName>Stopfakes_gov_Feedback_Queue_Assignment</fullName>
        <field>OwnerId</field>
        <lookupValue>Stopfakes_Website_Feedback</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Stopfakes.gov Feedback Queue Assignment</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Update_Fiscal_Year_Case</fullName>
        <field>Fiscal_Year_Calculation_2015__c</field>
        <formula>1</formula>
        <name>Update Fiscal Year Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates><fieldUpdates>
        <fullName>Update_Sent_Survey</fullName>
        <field>Sent_Survey__c</field>
        <literalValue>1</literalValue>
        <name>Update Sent Survey</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates><outboundMessages>
        <fullName>IP_Case_Closed_Unable_to_Resolve_Survey</fullName>
        <apiVersion>36.0</apiVersion>
        <endpointUrl>https://trade.qualtrics.com/WRQualtricsServer/sfApi.php?r=outboundMessage&amp;u=UR_57rEhnqF31TdZdj&amp;s=SV_bsaTs7rQ5mS9Sgl&amp;t=TR_38JyDLgGj7rW5al</endpointUrl>
        <fields>CaseNumber</fields>
        <fields>Case_Owner_Full_Name__c</fields>
        <fields>Contact_Full_Name__c</fields>
        <fields>Description</fields>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>felix.yawson@trade.gov</integrationUser>
        <name>IP Case Closed Unable to Resolve Survey</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages><outboundMessages>
        <fullName>IP_Case_Successfully_Closed_Survey</fullName>
        <apiVersion>36.0</apiVersion>
        <endpointUrl>https://trade.qualtrics.com/WRQualtricsServer/sfApi.php?r=outboundMessage&amp;u=UR_57rEhnqF31TdZdj&amp;s=SV_bsaTs7rQ5mS9Sgl&amp;t=TR_3C08OvnmBlKDBD7</endpointUrl>
        <fields>CaseNumber</fields>
        <fields>Case_Owner_Full_Name__c</fields>
        <fields>Contact_Full_Name__c</fields>
        <fields>Description</fields>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>felix.yawson@trade.gov</integrationUser>
        <name>IP Case - Successfully Closed Survey</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages><outboundMessages>
        <fullName>Successfully_Closed_Survey_Message</fullName>
        <apiVersion>34.0</apiVersion>
        <endpointUrl>https://trade.qualtrics.com/WRQualtricsServer/sfApi.php?r=outboundMessage&amp;u=UR_57rEhnqF31TdZdj&amp;s=SV_4NQZzSzKwyI1RFr&amp;t=TR_3C08OvnmBlKDBD7</endpointUrl>
        <fields>CaseNumber</fields>
        <fields>Case_Owner_Full_Name__c</fields>
        <fields>Contact_Full_Name__c</fields>
        <fields>Description</fields>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>felix.yawson@trade.gov</integrationUser>
        <name>Successfully Closed Survey Message</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages><outboundMessages>
        <fullName>Survey_Message_for_No_Fee_Based_Not_Reso</fullName>
        <apiVersion>34.0</apiVersion>
        <description>No Fee-Based Services with Administratively Closed or Unable to Resolve Case</description>
        <endpointUrl>https://trade.qualtrics.com/WRQualtricsServer/sfApi.php?r=outboundMessage&amp;u=UR_57rEhnqF31TdZdj&amp;s=SV_4NQZzSzKwyI1RFr&amp;t=TR_38JyDLgGj7rW5al</endpointUrl>
        <fields>CaseNumber</fields>
        <fields>Case_Owner_Full_Name__c</fields>
        <fields>Contact_Full_Name__c</fields>
        <fields>Description</fields>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>felix.yawson@trade.gov</integrationUser>
        <name>Survey Message for No-Fee Based Not Reso</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages><rules>
        <fullName>CC - WFR - II</fullName>
        <actions>
            <name>Email_Notification_for_new_Case_Comments</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Recent_Comment__c</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <description>Sending email Notification to Case Creator for new Case Comments</description>
        <triggerType>onAllChanges</triggerType>
    </rules><rules>
        <fullName>CD Survey Message No Fee Not Resolved</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Administratively Closed,Unable to Resolve</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Commercial Diplomacy</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.ContactEmail</field>
            <operation>notContain</operation>
            <value>trade.gov</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sent_Survey__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>No Fee-Based Services Used with Case Closed = Administratively Closed or Unable to Resolve</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Sent_Survey</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Survey_Message_for_No_Fee_Based_Not_Reso</name>
                <type>OutboundMessage</type>
            </actions>
            <offsetFromField>Case.Survey_Send_Time__c</offsetFromField>
            <timeLength>24</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules><rules>
        <fullName>CD Survey Message No Fee Success Closed</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Successfully Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Commercial Diplomacy</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.ContactEmail</field>
            <operation>notContain</operation>
            <value>trade.gov</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sent_Survey__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>No Fee-Based Services Used with Case Closed = Successfully Closed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Sent_Survey</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Successfully_Closed_Survey_Message</name>
                <type>OutboundMessage</type>
            </actions>
            <offsetFromField>Case.Survey_Send_Time__c</offsetFromField>
            <timeLength>24</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules><rules>
        <fullName>Case PA RT Advocacy</fullName>
        <actions>
            <name>Case_RT_Advocacy</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>To select Case record type Advocacy</description>
        <formula>ISPICKVAL(Record_Type__c, "advocacy")</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>Case PA RT Comm Diplom</fullName>
        <actions>
            <name>Case_RT_Comm_Diplomacy</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>to update record type to Commercial Diplomacy</description>
        <formula>ISPICKVAL(Record_Type__c,"Commercial Diplomacy")</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>Case PA RT Export Promo</fullName>
        <actions>
            <name>Case_Export</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>to update record type to Export Promotion</description>
        <formula>ISPICKVAL(Record_Type__c, "Export Promotion")</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>Case PA RT Investment Promo</fullName>
        <actions>
            <name>Case_Investment_Promotion_RT</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>to update record type to Investment Promotion</description>
        <formula>ISPICKVAL(Record_Type__c, "Investment Promotion")</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>Case Type %26 RT Comm Diplom</fullName>
        <actions>
            <name>Case_Type_update_Comm</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>to update record type to Commercial Diplomacy and to type CD</description>
        <formula>RecordType.Name = "Commercial Diplomacy"</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>Case Type update Advo</fullName>
        <actions>
            <name>Case_Type_update_Advo</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>to update record type to Advocacy</description>
        <formula>RecordType.Name = "Advocacy"</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules><rules>
        <fullName>Case Type update Export Promo</fullName>
        <actions>
            <name>Case_Type_update_Export</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>to update record type to Export Promo</description>
        <formula>RecordType.Name = "Export Promotion"</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules><rules>
        <fullName>Case Type update Investment Promo</fullName>
        <actions>
            <name>Case_Type_update_Inv</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>to update case type to Investment Promotion</description>
        <formula>RecordType.Name = "Investment Promotion"</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules><rules>
        <fullName>Case%3A PS Case Closed%3A Notify Primary Contact</fullName>
        <actions>
            <name>Send_Privacy_Shield_Application_Approval_to_Case_Contact</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Successfully Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Privacy Shield</value>
        </criteriaItems>
        <description>Notifies Contact on Case when the Privacy Shield application has been approved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>Copy Lookup Field</fullName>
        <actions>
            <name>AccountName_Lookup_to_Text</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Contact_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Copy_Contact_Name_in_Case</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.CreatedById</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <description>This workflow is used to copy the lookup values to the hidden text field so that it can be used for global search.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>DGM E-Commerce Cases</fullName>
        <active>false</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>DGM2015 E-Commerce</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Case.Actual_Create_Date__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules><rules>
        <fullName>EP Survey Message No Fee Not Resolved</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Administratively Closed,Unable to Resolve</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Fee__c</field>
            <operation>equals</operation>
            <value>No Fee-Based Services Used</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Export Promotion</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.ContactEmail</field>
            <operation>notContain</operation>
            <value>trade.gov</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sent_Survey__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>No Fee-Based Services Used with Case Closed = Administratively Closed or Unable to Resolve</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Sent_Survey</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Survey_Message_for_No_Fee_Based_Not_Reso</name>
                <type>OutboundMessage</type>
            </actions>
            <offsetFromField>Case.Survey_Send_Time__c</offsetFromField>
            <timeLength>24</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules><rules>
        <fullName>EP Survey Message No Fee Success Closed</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Successfully Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Fee__c</field>
            <operation>equals</operation>
            <value>No Fee-Based Services Used</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Export Promotion</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.ContactEmail</field>
            <operation>notContain</operation>
            <value>trade.gov</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sent_Survey__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>No Fee-Based Services Used with Case Closed = Successfully Closed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Sent_Survey</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Successfully_Closed_Survey_Message</name>
                <type>OutboundMessage</type>
            </actions>
            <offsetFromField>Case.Survey_Send_Time__c</offsetFromField>
            <timeLength>24</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules><rules>
        <fullName>Export%2Egov%3A New %28Non-Register User%29 Case Comment</fullName>
        <actions>
            <name>Export_gov_New_Non_Register_User_Case_Comment_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Export.gov: New (Non-Register User) Case Comment</description>
        <formula>AND(ISCHANGED(Recent_Comment__c), OR( RecordType.Name == 'Export_Feedback'))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules><rules>
        <fullName>Export%2Egov%3A Website Feedback Assignment and Notification</fullName>
        <actions>
            <name>Export_gov_Website_Feedback_Case_Notification</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Export_gov_Feedback_Queue_Assignment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Export_Feedback</value>
        </criteriaItems>
        <description>Export.gov: Website Feedback Assignment and Notification</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>IP Survey Message - Closed - Not Resolved</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Administratively Closed,Unable to Resolve</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Investment Promotion</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.ContactEmail</field>
            <operation>notContain</operation>
            <value>trade.gov</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sent_Survey__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Investment Promotion Case Closed - Administratively Closed or Unable to Resolve</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Sent_Survey</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>IP_Case_Closed_Unable_to_Resolve_Survey</name>
                <type>OutboundMessage</type>
            </actions>
            <offsetFromField>Case.Actual_Case_Closed_Date__c</offsetFromField>
            <timeLength>24</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules><rules>
        <fullName>IP Survey Message - Successfully Closes</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Successfully Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Investment Promotion</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.ContactEmail</field>
            <operation>notContain</operation>
            <value>trade.gov</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sent_Survey__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Investment Promotion Case Closed - Successfully Closed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Sent_Survey</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>IP_Case_Successfully_Closed_Survey</name>
                <type>OutboundMessage</type>
            </actions>
            <offsetFromField>Case.Actual_Case_Closed_Date__c</offsetFromField>
            <timeLength>24</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules><rules>
        <fullName>PS%3A Case Closure Notification</fullName>
        <actions>
            <name>PS_Case_Closure_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND (2 OR 3 OR 4 OR 5)</booleanFilter>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Successfully Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>PS_Feedback</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Dispute Resolution and Enforcement</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Outreach</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Participation</value>
        </criteriaItems>
        <description>PS: Case Closure Notification</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>PS%3A Dispute Resolution and Enforcement</fullName>
        <actions>
            <name>PS_DRE_Case_Owner_Assignment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Dispute Resolution and Enforcement</value>
        </criteriaItems>
        <description>PS: Dispute Resolution and Enforcement Case (RT) Assignment</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>PS%3A New %28Community User%29 Case Comment</fullName>
        <actions>
            <name>PS_New_Community_User_Case_Comment_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>PS: New (Community User) Case Comment</description>
        <formula>AND(ISCHANGED(Recent_Comment__c), OR( RecordType.Name == 'PS_Feedback', RecordType.Name == 'Privacy Shield',RecordType.Name == 'Participation', RecordType.Name == 'Dispute Resolution and Enforcement', RecordType.Name == 'Outreach'))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules><rules>
        <fullName>PS%3A New %28Non-Register User%29 Case Comment</fullName>
        <actions>
            <name>PS_New_Non_Register_User_Case_Comment_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND(ISCHANGED(Recent_Comment__c), OR( RecordType.Name == 'PS_Feedback', RecordType.Name == 'Dispute Resolution and Enforcement', RecordType.Name == 'Outreach'))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules><rules>
        <fullName>PS%3A New Case Confirmation %28Community%29</fullName>
        <actions>
            <name>PS_New_Case_Community_User_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND (2 OR 3 OR 4 OR 5 OR 6)</booleanFilter>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Privacy Shield</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Participation</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>PS_Feedback</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Dispute Resolution and Enforcement</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Outreach</value>
        </criteriaItems>
        <description>Confirmation email when a Registered Community User created privacy shield cases (Participation and Privacy shield) is submitted</description>
        <triggerType>onCreateOnly</triggerType>
    </rules><rules>
        <fullName>PS%3A New Case Confirmation %28Non-Register%29</fullName>
        <actions>
            <name>PS_New_Case_Non_Register_User_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND (2 or 3 or 4)</booleanFilter>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>PS_Feedback</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Dispute Resolution and Enforcement</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Outreach</value>
        </criteriaItems>
        <description>Confirmation email when a privacy shield (Non-Registration) case is submitted</description>
        <triggerType>onCreateOnly</triggerType>
    </rules><rules>
        <fullName>PS%3A Outreach and Education</fullName>
        <actions>
            <name>PS_Outreach_Case_Owner_Assignment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Outreach</value>
        </criteriaItems>
        <description>PS: Outreach and Education Case (RT) Assignment</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>PS%3A Participation</fullName>
        <actions>
            <name>Participation_Case_Owner_Assignment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Participation</value>
        </criteriaItems>
        <description>Participation Case (RT) Assignment</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>PS%3A Website Feedback</fullName>
        <actions>
            <name>PS_Feedback_Assignment_to_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>PS_Feedback</value>
        </criteriaItems>
        <description>Privacyshield.gov Website Feedback Case Assignment</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>Salesforce Support Case Assignment</fullName>
        <actions>
            <name>New_Salesforce_Support_Case_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Salesforce Support</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules><rules>
        <fullName>Send Summary CA to contact</fullName>
        <actions>
            <name>Send_Summary_of_CA_to_Contact</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Client Assists</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Successfully Closed</value>
        </criteriaItems>
        <description>Sends a summary of CA to the contact after CA is created and saved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>Stopfakes%3A New %28Non-Register User%29 Case Comment</fullName>
        <actions>
            <name>Stopfakes_New_Non_Register_User_Case_Comment_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Stopfakes: New (Non-Register User) Case Comment</description>
        <formula>AND(ISCHANGED(Recent_Comment__c), OR( RecordType.Name == 'Stopfakes_Feedback'))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules><rules>
        <fullName>Stopfakes%3A Website Feedback Assignment and Notification</fullName>
        <actions>
            <name>Stopfakes_Website_Feedback_Case_Notification</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Stopfakes_gov_Feedback_Queue_Assignment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>StopFakes_Feedback</value>
        </criteriaItems>
        <description>Stopfakes.gov Stopfakes: Website Feedback Case Assignment and Notification</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>Trade - Export%2Egov Website Feedback Assignment</fullName>
        <actions>
            <name>Export_Feedback_Assignment_to_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Export_Feedback</value>
        </criteriaItems>
        <description>Export.gov Website Feedback Case Assignment</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules><rules>
        <fullName>Trade Community - New Case Comment</fullName>
        <actions>
            <name>Trade_Community_Email_Notification_for_new_Case_Comments</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>AND(ISCHANGED(Recent_Comment__c), OR( RecordType.Name == 'Privacy Shield',RecordType.Name == 'Media',RecordType.Name == 'Data Protection Authority' ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules><rules>
        <fullName>Trade Community - New Privacy Shield Case</fullName>
        <actions>
            <name>Trade_Community_Privacy_Shield_User_new_Case_Notification</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND (2 or 3 or 4)</booleanFilter>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Privacy Shield</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Media</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Data Protection Authority</value>
        </criteriaItems>
        <description>Confirmation email when a privacy shield case is submitted</description>
        <triggerType>onCreateOnly</triggerType>
    </rules></Workflow>