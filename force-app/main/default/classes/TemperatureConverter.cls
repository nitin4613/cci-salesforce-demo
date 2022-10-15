/**
* @author Joe Shmoe
* @date 25/01/2011
* @description Class converts temperatures 
*/
public with sharing class TemperatureConverter {
    // Takes a Fahrenheit temperature and returns the Celsius equivalent.
        /**
     * @description Bar
     * @return Decimal
     */
    public Decimal FahrToCel(Decimal fh) {
        Decimal cs = (fh - 32) * 5/9;
        return cs.setScale(2);
    }
}
