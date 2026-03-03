@IsTest
public class MyIterableTest {
  
    @IsTest
    public static void testIterableForLoop()
    {
        List<String> strings = new List<String>{'Hello','World'};
        MyIterable obj = new MyIterable(strings);
        for (String s : obj) {
    		System.debug(s);
		}
        
    }

}