/*
Name: MyOrdersComponentControllerTest
Author: Dan Kelner
Date Created: 10/03/16
Purpose: Test class for MyOrdersComponentController
*/
@isTest(SeeAllData = true)
public class MyOrdersComponentControllerTest {
    
    public static testMethod void runTest(){
        //Create basic test data
        Test.startTest();
        Account myAccount = new Account(Name = 'Testing');
        insert myAccount;
        
        Product2[] prod = [SELECT Name FROM Product2 LIMIT 1];
        Pricebook2 pbook = [SELECT ID FROM Pricebook2 WHERE IsStandard = true LIMIT 1];
        
        Order myOrder = new Order(AccountID = myAccount.ID, EffectiveDate = Date.today().addDays(-2), Status = 'Draft', Pricebook2ID = pbook.ID);
        insert myOrder;
        
        PricebookEntry pbe = [SELECT ID FROM PricebookEntry WHERE Pricebook2ID = :pbook.ID AND Product2ID = :prod[0].ID AND IsActive = true LIMIT 1];
        
        OrderItem myOrderItem = new OrderItem(OrderID = myOrder.ID, PricebookEntryID = pbe.ID, Quantity = 1, ServiceDate = myOrder.EffectiveDate, UnitPrice = 1000);
        insert myOrderItem;
        
        Payment__c paymentObj = new Payment__c(Order__c = myOrder.ID, Transaction_Date__c = System.now().addDays(-2), Transaction_Amount__c = 500, Transaction_Status__c = 'Success');
        insert paymentObj;
        
        Refund__c refundObj = new Refund__c(Payment__c = paymentObj.ID, Transaction_Date__c = System.now(), Transaction_Amount__c = 250, Transaction_Status__c = 'Success');
        insert refundObj;
        
        Test.stopTest();
        
        //Run through controller methods and achieve code coverage
        MyOrdersComponentController ctrl = new MyOrdersComponentController();
        System.assertEquals('January', ctrl.getMonth(1));
        ctrl.orders = [SELECT EffectiveDate, OrderNumber, AccountID, 
                           (SELECT OrderID, Pricebookentry.Product2.Name FROM OrderItems),
                           (SELECT Order__c, Transaction_Date__c, Pay_Gov_Tracking_Id__c, Transaction_Amount__c, Transaction_Status__c FROM Payments__r)
                       FROM Order WHERE ID = :myOrder.ID];
        System.debug('Order Map size: ' + ctrl.getOrderMap().size());
    }
}