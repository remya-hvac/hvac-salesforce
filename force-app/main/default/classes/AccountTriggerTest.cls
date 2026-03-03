@isTest
public class AccountTriggerTest {
    @isTest static void TestAccountCreation200Records()
    {
        List<Account> accounts = new List<Account>();
        
            Account accnt = New Account(Name='Media Account');
        accnt.Industry = 'Media';
            accounts.add(accnt);
        
        
        Test.startTest();
        insert accounts;
        Test.stopTest();
        
        List<Account> testingAccounts = [select Rating from Account];
        
        for(Account a:testingAccounts)
        {
            System.assertEquals(a.Rating, 'Hot');
        }
        
    }

}