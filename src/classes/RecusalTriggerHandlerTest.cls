@isTest
public class RecusalTriggerHandlerTest {
	static Petition__c p {
		get {
			if (p == null) {
				p = [SELECT Id FROM Petition__c LIMIT 1];
			}
			return p;
		} set;
	}
	static Investigation__c i {
		get {
			if (i == null) {
				i = [SELECT Id FROM Investigation__c LIMIT 1];
			}
			return i;
		} set;
	}
	static ADCVD_Order__c o {
        get {
            if (o == null) {
                o = [SELECT Id FROM ADCVD_Order__c LIMIT 1];
            }
            return o;
        } set;
    }
    static Segment__c s {
        get {
            if (s == null) {
                s = [SELECT Id FROM Segment__c LIMIT 1];
            }
            return s;
        } set;
    }
    static User u{
		get{
			if(u == null){
				u = [SELECT Id, ProfileId, isActive, Alias, LanguageLocaleKey, LastName, FirstName, 
								Email, EmailEncodingKey, TimeZoneSidKey, CommunityNickname, Username 
							FROM User WHERE LastName =: 'LastName1' LIMIT 1];
			}
			return u;
		} set;
	}
	static Recusal__c primaryRecusal {
		get{
			if(primaryRecusal == null) {
				Id recordType = Utils.getRecordTypeIdMap('Recusal__c').get('Primary');
				primaryRecusal = [SELECT Id, User__c, Start_Date__c, End_Date__c, RecordTypeId FROM Recusal__c WHERE RecordTypeId =: recordType LIMIT 1];
			}
			return primaryRecusal;
		} set;
	}
	static Recusal__c relatedRecusal {
		get{
			if(relatedRecusal == null) {
				Id recordType = Utils.getRecordTypeIdMap('Recusal__c').get('Related');
				relatedRecusal = [SELECT Id, User__c, Start_Date__c, End_Date__c, RecordTypeId FROM Recusal__c WHERE RecordTypeId =: recordType LIMIT 1];
			}
			return relatedRecusal;
		} set;
	}

    @isTest static void syncTest() {
    	Test.startTest();
		primaryRecusal = TestUtils.createRecusal(u.Id, System.today(), System.today().addDays(3), true);

    	relatedRecusal = TestUtils.createRecusal(primaryRecusal.Id, p.Id, 'Petition__c', true);
    	relatedRecusal = null;
    	System.assertEquals(relatedRecusal.User__c, primaryRecusal.User__c);

    	primaryRecusal.End_Date__c = primaryRecusal.End_Date__c.addDays(3);
    	update primaryRecusal;
    	relatedRecusal = null;

    	Test.stopTest();

    	System.assertEquals(relatedRecusal.End_Date__c, System.today().addDays(6));
    }

	@testSetup static void dataSetup() {
		Test.startTest();
		//create custom setting configuration to activate triggers, workflow rules, and validation rules
        Master_Automation__c ma = TestUtils.createMasterAutomation(true, true, true);
        AppConfig__c ac = TestUtils.createAppConfig('default', true, true);
        //create test data
		User testUser = TestUtils.createAdminUser(true, 'myemail@email.com.testita', 1);
        ADCVD_Case__c testADCase = TestUtils.createADCVDCase('A-123-123', 'AD ME', true);
        Petition__c testADPetition = TestUtils.createPetition(testADCase, System.today().addDays(-280), true);
        Investigation__c testADinvestigation = TestUtils.createInvestigation(testADPetition, true);
        ADCVD_Order__c testADOrder = TestUtils.createOrder(testADinvestigation, true);
        Segment__c testARseg = TestUtils.createSegment(testADOrder, 'Administrative_Review', true);
	}
}