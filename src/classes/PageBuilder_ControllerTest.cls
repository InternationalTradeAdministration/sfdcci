@isTest
private class PageBuilder_ControllerTest {
    @isTest static void test_method_one() { 
        Integer templateSetSize = 1;
        PageReference pageRef;

        Template_Page__c tp = [SELECT Id, Name FROM Template_Page__c];
        PageBuilder_Controller pbController = new PageBuilder_Controller();
        system.assertEquals(pbController.templateMap, null);
        
        pbController.getTemplates(); 
        //validate the gettemplates queried the set
        system.assertEquals(pbController.templateMap.size(), templateSetSize);
        
        //validate that without the template ID, the method returns null
        pageRef = Page.PageBuilder;
        test.setCurrentPage(pageRef);
        system.assertEquals(pbController.buildPage(), null);


        //validate without the PageName, it errors our
        pageRef = Page.PageBuilder;
        test.setCurrentPage(pageRef);
        pageRef.getParameters().put('template', tp.id);
        pbController.buildPage();
        system.assert(TestUtils.messageFound(ApexPages.Severity.ERROR, 'Please provide a valid Name for your page.'));

        //validate that the with the PageName and Template populated, a page is created.
        pageRef = Page.PageBuilder;
        test.setCurrentPage(pageRef);
        pageRef.getParameters().put('template', tp.id);
        pbController.PageName = 'My Test Page';
        pbController.buildPage();

        tp = [SELECT Id, Name, (SELECT Id FROM Pages__r) FROM Template_Page__c];
        system.assert(tp.Pages__r.size() == templateSetSize);

        //validate the row was created
        List<Row__c> rList = [SELECT Id FROM Row__c];
        system.assertEquals(rList.size(), templateSetSize);

        //validate the page content was created
        List<Page_Content__c> pcList = [SELECT Id FROM Page_Content__c];
        system.assertEquals(pcList.size(), templateSetSize);
    }



    @TestSetup 
    public static void createData() {
        Template_Page__c tp = TestUtils.createTemplatePage(true);
        Template_Row__c tr = TestUtils.createTemplateRow(true, tp);
        Template_Page_Content__c tpc = TestUtils.createTemplatePageContent(true, tp, tr);
    }
}