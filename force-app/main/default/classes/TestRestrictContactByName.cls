@isTest
public class TestRestrictContactByName {
    
    @isTest static void testRestrictinvalidName()
    {
        Contact con = new Contact(LastName='INVALIDNAME');
        insert con;
        Contact con1 = new Contact(LastName='Test');
        insert con1;
        
    }

}