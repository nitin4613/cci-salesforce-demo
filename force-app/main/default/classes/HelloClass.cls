/**
 * @description Hello Class
 */
public with sharing class HelloClass {
    /**
     * @description Bar
     * @return Bar
     */
    public static Integer myValue = 0;  //Class Member variable
    public static String myString = ''; //Class Member variable
    
    public static Integer getCalculatedValue () {
    // Method definition and body
    // do some calculation
        myValue = myValue+10;
        return myValue;
   }
}
