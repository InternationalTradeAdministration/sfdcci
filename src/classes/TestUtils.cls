@isTest
public class TestUtils {
    private static Id adminProfileId = [SELECT Id FROM Profile WHERE Name=: 'System Administrator' LIMIT 1].Id;

    public static Boolean messageFound(ApexPages.Severity severity, String msg) {
        List<ApexPages.Message> pageMessages = ApexPages.getMessages();
        // Check that the error message you are expecting is in pageMessages
        Boolean messageFound = false;
        for(ApexPages.Message message : pageMessages) {
            if(message.getDetail() == msg
                && message.getSeverity() == severity) {
                messageFound = true;        
            }
        }

        return messageFound;
    }

    public static Page__c createPage(Boolean doInsert) {
        Page__c pg = new Page__c(name = 'Test Home Page');
        if(doInsert) {
            insert pg;
        }
        return pg;
    }

    public static Row__c createRow(Boolean doInsert, Page__c pg) {
        Row__c r = new Row__c(
            Name= 'Test Row',
            Page__c = pg.id
            );
        if(doInsert) {
            insert r;
        }
        return r;
    }

    public static Template_Page__c createTemplatePage(Boolean doInsert) {
        Template_Page__c tp = new Template_Page__c(
            Name = 'My Test Template',
            Description__c = 'My Test Description',
            Image__c = 'MyTestImage.png',
            IsActive__c = true
            );
        if(doInsert) {
            insert tp;
        }
        return tp;
    } 
    
    public static Template_Row__c createTemplateRow(Boolean doInsert, Template_Page__c pg) {
        Template_Row__c r = new Template_Row__c(
            Name= 'Test Row',
            Page__c = pg.id
            );
        if(doInsert) {
            insert r;
        }
        return r;
    }

    public static Template_Page_Content__c createTemplatePageContent(Boolean doInsert, Template_Page__c pg, Template_Row__c tr) {
        //TODO implement schema utils
        Map<String, Id> recordTypeMap = new Map<String, Id>();
        for(RecordType rt : [select id, developername from RecordType where sObjectType = 'Template_Page_Content__c']){
            recordTypeMap.put(rt.developername, rt.id);
        }
        Template_Page_Content__c tpc = new Template_Page_Content__c(
            Name= 'Test Page Content',
            RecordTypeId = recordTypeMap.get('Generic_Content'),
            Row__c = tr.Id,
            Page__c = pg.Id
            );
        if(doInsert) {
            insert tpc;
        }
        return tpc;
    }
    public static User createAdminUser(Boolean doInsert, String email, Integer i) {
        User u = new User();
        u.ProfileId = adminProfileId;
        u.isActive = true;
        u.Alias = 'Alias' + i;
        u.LocaleSidKey = 'en_US';
        u.LanguageLocaleKey='en_US';
        u.LastName = 'LastName' + i;
        u.FirstName = 'FirstName' + i;
        u.EmailEncodingKey = 'ISO-8859-1';
        u.Email = email + i;
        u.TimeZoneSidKey = 'America/New_York';
        u.CommunityNickname = 'Ltest' + i;
        u.UserName = email + '.test' + i;
        if(doInsert) {
            insert u;
        }
        return u;
    }
    public static Account createAccount(Boolean doInsert) {
        Account newRecord = new Account(
            Name='Acme', 
            BillingStreet = '101 binary way', 
            BillingCity = 'New York', 
            BillingState='NY',
            BillingPostalCode='10101'
            );
        if(doInsert) {insert newRecord;}
        return newRecord; 
    }
    
    public static Product2 createProduct(Boolean doInsert) {
        Product2 newRecord = new product2(
            Name='MyTestProduct', 
            IsActive = true
            );
        if(doInsert) {insert newRecord;}
        return newRecord; 
    }

        
    public static Asset createAsset(Account account, Product2 product, Boolean doInsert){
        Asset newRecord = new Asset(
            Name = Product.Name, 
            AccountId = account.Id, 
            Product2id = Product.Id, 
            Status='Installed'
            );
        if(doInsert) {insert newRecord;}
        return newRecord;
    }

    public static Attachment createAttachment(Id parentId, Boolean doInsert) {
        Attachment newRecord = new Attachment(
            ParentId = parentId,
            Name = 'mytestname',
            Body = Blob.valueOf('mystring')
            );
        if(doInsert) {insert newRecord;}
        return newRecord;
    }
    //create test Contact
    public static Contact createContact(String name, String accId , Boolean isInsert){
        Contact con = new Contact(LastName = name, accountId = accId, ownerId = UserInfo.getUserId());
        if(isInsert){
            insert con;
        }
        return con;
    }
    
    // create Case
    public static Case createCase(String sub, boolean isInsert){
        Case cs = new Case();
        cs.Subject = sub;
        if(isInsert) {
            insert cs;
        }  
        return cs;
    }
    
    
    // create Case
    public static Lead createLead(String firstName, String LastName,boolean isInsert){
        Lead lead = new Lead ();
        lead.firstName = firstName;
        lead.LastName = LastName;
        lead.Company = 'Test';
        if(isInsert) {
            insert lead;
        }
        return lead;
    }
            
    // create test Opportunity
    public static Opportunity createOpportunity(String accId, String conId, boolean isInsert){
        Opportunity opp = new Opportunity();
        opp.Name = 'opportunity';
        opp.AccountId = accId;
        opp.CloseDate = Date.Today();
        opp.stageName = 'Open';
        if(isInsert) {
            insert opp;
        }
        return opp;
    }
    
     public static User createGenericUser(string username, string email, String profileId) {
        User user = new User();
        user.ProfileId = profileId;
        user.isActive = true;
        user.Alias = 'Alias1';
        user.LocaleSidKey = 'en_US';
        user.LanguageLocaleKey='en_US';
        user.LastName = 'LastName1';
        user.FirstName = 'FirstName1';
        user.EmailEncodingKey = 'ISO-8859-1';
        user.Email = email;
        user.TimeZoneSidKey = 'America/New_York';
        user.CommunityNickname = username+ 'nick87Test';
        user.UserName = username + '.test';
        //user.CallCenterId  = [select Id from CallCenter limit 1].Id;       
        //user.ContactId = conId;
        return user;
    }
}