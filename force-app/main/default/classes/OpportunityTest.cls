@isTest
public class OpportunityTest {
    @isTest static void TestOpportunityAmount()
    {
        List<Opportunity> opportunities = new List<Opportunity>();
        
            Opportunity opp = New Opportunity(Name='Test');
        opp.Amount = 100001;
        opp.StageName = 'Needs Analysis';
            opp.CloseDate = System.today();
            opportunities.add(opp);
        
        
        Test.startTest();
        insert opportunities;
        Test.stopTest();
        
        List<Opportunity> testingOpportunity = [select Description from Opportunity];
        
        for(Opportunity a:testingOpportunity)
        {
            System.assertEquals(a.Description, 'Hot Opportunity');
        }
        
    }

}