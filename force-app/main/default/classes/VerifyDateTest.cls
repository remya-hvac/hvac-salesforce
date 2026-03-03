@isTest
public class VerifyDateTest {
    @isTest static void testDateWithin30Days()
    {
        Date returnedDate = VerifyDate.CheckDates(System.today() ,+System.today() + 3);
        System.debug(returnedDate + 'Date');
            
                                                  
    }
    @isTest static void testDateBeyond30Days()
    {
        Date returnedDate = VerifyDate.CheckDates(System.today() ,+System.today() + 33);
        System.debug(returnedDate + 'Date 2');
            
                                                  
    }
    

}