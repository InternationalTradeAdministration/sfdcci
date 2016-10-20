global class urlRewriter implements Site.UrlRewriter{
    global PageReference mapRequestUrl(PageReference myFriendlyUrl){
        String givenURL = myFriendlyUrl.getUrl();
        system.debug('@@URL:  '+givenURL);
        URL__c[] urls = [select id, friendly__c, real__c, page__c, (select id, page__c, Non_Page_URL__c from clean_urls__r where 
            site__r.domain__c = :URL.getSalesforceBaseUrl().getHost() 
            or site__r.UseAsDefault__c = true 
            order by site__r.UseAsDefault__c asc limit 1) 
        from url__c where friendly__c = :givenURL];
        if(urls.size() != 0){
            system.debug('@@URLs: '+urls[0].real__c);
            if(urls[0].clean_urls__r.size() != 0){
                //check to see if there is a page__c
                if(urls[0].clean_urls__r[0].page__c != null){
                    PageReference pr = Page.page;
                        pr.getParameters().put('id', urls[0].clean_urls__r[0].page__c);
                    return pr;
                }
                //check to see if there is a url
                if(urls[0].clean_urls__r[0].Non_Page_URL__c != null){
                    if(!urls[0].clean_urls__r[0].Non_Page_URL__c.contains('/servlet.FileDownload')){
                        return new PageReference(urls[0].clean_urls__r[0].Non_Page_URL__c);
                    }else{
                        PageReference pg = Page.redirect;
                        pg.getParameters().put('dest', urls[0].clean_urls__r[0].Non_Page_URL__c);
                        return pg;
                    }
                }
            }
            if(urls[0].page__c != null){
                PageReference pr = Page.page;
                    pr.getParameters().put('id', urls[0].page__c);
                return pr;
            }
            if(urls[0].real__c.contains('/servlet.FileDownload')){
                PageReference pg = Page.redirect;
                pg.getParameters().put('dest', urls[0].real__c);
                return pg;            
            }
            return new PageReference(urls[0].real__c);            
        }
        system.debug('@@No friendly url found');
        return null;
    }
    global List<PageReference> generateUrlFor(List<PageReference> mySalesforceUrls){
        system.debug('@@Redirecting');
        return null;
    }
}