public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> accounts)
    {
        for(Account a:accounts)
        {
            a.ShippingState = a.BillingState;
        }
    }
    public static void checkAddress(List<Account> accounts)
    {
         for(Account a:accounts)
        {
            System.debug('value is '+ a.Match_Billing_Address__c);
            if(a.Match_Billing_Address__c == true)
            {
                System.debug('value is '+ a.Match_Billing_Address__c);
                a.ShippingPostalCode = a.BillingPostalCode;
            }
            
        }
    }
    public static void UpdateRating(List<Account> accounts)
    {
        for(Account a:accounts)
        {
            if(a.Industry != null && a.Industry == 'Media')
            {
                a.Rating = 'Hot';
            }
            
        }
    }
        
        public static void InsertRelatedOpportunity(List<Account> accounts)
    {
        for(Account a:accounts)
        {
            Opportunity oppr = New Opportunity(Name='Account Opportunity');
            oppr.AccountId = a.Id;
            oppr.StageName = 'Needs Analysis';
            oppr.CloseDate = System.today();
                
            insert(oppr);
            
        }
    }

}