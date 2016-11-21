@isTest
private class SafeDMLHandlerTest {
    
    @isTest static void test_method_safeInsert() {
        Account a = createAccount(false);
        system.assert(!SafeDMLHandler.safeInsert(a, false));
        //invalid account should not insert
        List<Account> aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());

        //invalid account should not insert and should add page message
        system.assert(!SafeDMLHandler.safeInsert(a, true));
        system.assert(TestUtils.messageFound(ApexPages.Severity.ERROR, ExceptionHandler.GENERIC_ERROR_MSG));

        //invalid account list should not insert
        aList.add(a);
        system.assert(!SafeDMLHandler.safeInsert(aList, false));

        //invalid account list should not insert and should add page message
        system.assert(!SafeDMLHandler.safeInsert(aList, true));
        system.assert(TestUtils.messageFound(ApexPages.Severity.ERROR, ExceptionHandler.GENERIC_ERROR_MSG));
        aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());

        //valid account should insert
        a = createAccount(true);
        system.assert(SafeDMLHandler.safeInsert(a, false));
        aList = [SELECT Id FROM Account];
        system.assert(aList.size() == 1);

        //valid account should insert
        a = createAccount(true);
        system.assert(SafeDMLHandler.safeInsert(a, true));
        aList = [SELECT Id FROM Account];
        system.assert(aList.size() == 2);

        //valid account list should insert
        a = createAccount(true);
        aList = new List<Account>();
        aList.add(a);
        system.assert(SafeDMLHandler.safeInsert(aList, true));
        aList = [SELECT Id FROM Account];
        system.assert(aList.size() == 3);

        //valid account list should insert
        a = createAccount(true);
        aList = new List<Account>();
        aList.add(a);
        system.assert(SafeDMLHandler.safeInsert(aList, false));
        aList = [SELECT Id FROM Account];
        system.assert(aList.size() == 4);

    }
    
    @isTest static void test_method_safeUpsert() {
        Account a = createAccount(false);
        system.assert(!SafeDMLHandler.safeUpsert(a, false));
        //invalid account should not upsert
        List<Account> aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());

        //invalid account should not upsert and should add page message
        system.assert(!SafeDMLHandler.safeUpsert(a, true));
        system.assert(TestUtils.messageFound(ApexPages.Severity.ERROR, ExceptionHandler.GENERIC_ERROR_MSG));

        //invalid account list should not upsert
        aList.add(a);
        system.assert(!SafeDMLHandler.safeUpsert(aList, false));

        //invalid account list should not upsert and should add page message
        system.assert(!SafeDMLHandler.safeUpsert(aList, true));
        system.assert(TestUtils.messageFound(ApexPages.Severity.ERROR, ExceptionHandler.GENERIC_ERROR_MSG));
        aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());

        //valid account should upsert
        a = createAccount(true);
        system.assert(SafeDMLHandler.safeUpsert(a, false));
        aList = [SELECT Id FROM Account];
        system.assert(aList.size() == 1);

        //valid account should upsert
        a = createAccount(true);
        system.assert(SafeDMLHandler.safeUpsert(a, true));
        aList = [SELECT Id FROM Account];
        system.assert(aList.size() == 2);

        //valid account list should upsert
        a = createAccount(true);
        aList = new List<Account>();
        aList.add(a);
        system.assert(SafeDMLHandler.safeUpsert(aList, true));
        aList = [SELECT Id FROM Account];
        system.assert(aList.size() == 3);

        //valid account list should upsert
        a = createAccount(true);
        aList = new List<Account>();
        aList.add(a);
        system.assert(SafeDMLHandler.safeUpsert(aList, false));
        aList = [SELECT Id FROM Account];
        system.assert(aList.size() == 4);
    }

    @isTest static void test_method_safeUpdate() {
        Account a = createAccount(true);
        system.assert(!SafeDMLHandler.safeUpdate(a, false));
        //invalid account should not update
        List<Account> aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());

        //invalid account should not update and should add page message
        system.assert(!SafeDMLHandler.safeUpdate(a, true));
        system.assert(TestUtils.messageFound(ApexPages.Severity.ERROR, ExceptionHandler.GENERIC_ERROR_MSG));

        //invalid account list should not update
        aList.add(a);
        system.assert(!SafeDMLHandler.safeUpdate(aList, false));

        //invalid account list should not update and should add page message
        system.assert(!SafeDMLHandler.safeUpdate(aList, true));
        system.assert(TestUtils.messageFound(ApexPages.Severity.ERROR, ExceptionHandler.GENERIC_ERROR_MSG));
        aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());


        //valid account should update
        a = createAccount(true);
        insert a;
        system.assert(SafeDMLHandler.safeUpdate(a, false));
        aList = [SELECT Id FROM Account];
        system.assert(aList.size() == 1);

        //valid account should update
        system.assert(SafeDMLHandler.safeUpdate(a, true));
        aList = [SELECT Id FROM Account];

        //valid account list should update
        aList = new List<Account>();
        aList.add(a);
        system.assert(SafeDMLHandler.safeUpdate(aList, true));
        aList = [SELECT Id FROM Account];

        //valid account list should update
        aList = new List<Account>();
        aList.add(a);
        system.assert(SafeDMLHandler.safeUpdate(aList, false));
        aList = [SELECT Id FROM Account];
        system.assert(aList.size() == 1);
    }

    @isTest static void test_method_safeDelete() {
        Account a = createAccount(true);
        system.assert(!SafeDMLHandler.safeDelete(a, false));
        //invalid account should not Delete
        List<Account> aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());

        //invalid account should not Delete and should add page message
        system.assert(!SafeDMLHandler.safeDelete(a, true));
        system.assert(TestUtils.messageFound(ApexPages.Severity.ERROR, ExceptionHandler.GENERIC_ERROR_MSG));

        //invalid account list should not Delete
        aList.add(a);
        system.assert(!SafeDMLHandler.safeDelete(aList, false));

        //invalid account list should not Delete and should add page message
        system.assert(!SafeDMLHandler.safeDelete(aList, true));
        system.assert(TestUtils.messageFound(ApexPages.Severity.ERROR, ExceptionHandler.GENERIC_ERROR_MSG));
        aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());


        //valid account should Delete
        a = createAccount(true);
        insert a;
        system.assert(SafeDMLHandler.safeDelete(a, false));
        aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());

        //valid account should Delete
        a = createAccount(true);
        insert a;
        system.assert(SafeDMLHandler.safeDelete(a, true));
        aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());

        //valid account list should Delete
        a = createAccount(true);
        insert a;
        aList = new List<Account>();
        aList.add(a);
        system.assert(SafeDMLHandler.safeDelete(aList, true));
        aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());

        //valid account list should Delete
        a = createAccount(true);
        insert a;
        aList = new List<Account>();
        aList.add(a);
        system.assert(SafeDMLHandler.safeDelete(aList, false));
        aList = [SELECT Id FROM Account];
        system.assert(aList.isEmpty());
    }

    private static Account createAccount(Boolean valid) {
        Account a = new Account();
        if(valid) {
            a.Name = 'Test';
        }
        return a;
    }
    
}