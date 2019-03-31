public class ConvertDate {
  	@InvocableMethod(label='ConvertDate' description='Convert date to month picklist.')
    
    // getDate is called using convertDate, user input dat is stored in date list
  	public static List<String> getDate(List<Date> dateInput) {
        // dateListHolder for output & Months to store picklist
        List<String> dateMonthHolder = new List<String>();
        List<String> Months = new List<String> {' ','January','February','March','April',
            'May','June','July','August','September','October','November','December'};
        Integer monthInArray;
            
        for (Integer i = 0; i < dateInput.size(); i++) {
            monthInArray = dateInput[i].month();
            dateMonthHolder.add(Months[monthInArray]);
        }
        
    	return dateMonthHolder;
	}
}