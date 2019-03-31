public class WizardPizzaController {
    // Pizza1 visualforce methods, pizzaOne pizzaSize pageOneN
    public String pizzaOne;
    
    public String getPizzaOne() {
        return pizzaOne;
    }
                    
    public void setPizzaOne(String pizzaOne) { this.pizzaOne = pizzaOne; }
    
    public List<SelectOption> getPizzaSize() {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('014\"','014\"')); 
        options.add(new SelectOption('016\"','016\"')); 
        options.add(new SelectOption('020\"','020\"')); 
        return options; 
    }
    
    public PageReference pageOneN() {
        return Page.Pizza2;
    }
    
    // Pizza2 visualforce methods, pizzaTwo pizzaDough pageTwoP pageTwoN
    public String pizzaTwo;
    
    public String getPizzaTwo() {
        return pizzaTwo;
    }
                    
    public void setPizzaTwo(String pizzaTwo) { this.pizzaTwo = pizzaTwo; }
    
    public List<SelectOption> getPizzaDough() {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('Hand Tossed','Hand Tossed')); 
        options.add(new SelectOption('Pan','Pan')); 
        options.add(new SelectOption('Thin Crust','Thin Crust')); 
        options.add(new SelectOption('Deep Dish','Deep Dish')); 
        return options; 
    }
    
    public PageReference pageTwoP() {
        return Page.Pizza1;
    }
    
    public PageReference pageTwoN() {
        return Page.Pizza3;
    }
    
    // Pizza3 visualforce methods, pizzaThree pizzaCheese pageThreeP pageThreeN
    public String pizzaThree;
    
    public String getPizzaThree() {
        return pizzaThree;
    }
                    
    public void setPizzaThree(String pizzaThree) { this.pizzaThree = pizzaThree; }
    
    public List<SelectOption> getPizzaCheese() {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('None','None')); 
        options.add(new SelectOption('Light','Light')); 
        options.add(new SelectOption('Regular','Regular')); 
        options.add(new SelectOption('Extra','Extra')); 
        return options; 
    }
    
    public PageReference pageThreeP() {
        return Page.Pizza2;
    }
    
    public PageReference pageThreeN() {
        return Page.Pizza4;
    }
   	
    // Pizza4 visualforce methods, pizzaFour pizzaSauce pizzaSauceAmount pageFourP pageFourN
    public String pizzaFourA;
    public String pizzaFourB;
    
    public String getPizzaFourA() {
        return pizzaFourA;
    }
    
    public String getPizzaFourB() {
        return pizzaFourB;
    }
    
    public void setPizzaFourA(String pizzaFourA) { this.pizzaFourA = pizzaFourA; }
    
    public void setPizzaFourB(String pizzaFourB) { this.pizzaFourB = pizzaFourB; }
    
    public List<SelectOption> getPizzaSauceAmount() {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('None','None')); 
        options.add(new SelectOption('Light','Light')); 
        options.add(new SelectOption('Regular','Regular')); 
        options.add(new SelectOption('Extra','Extra')); 
        return options; 
    }
    
    public List<SelectOption> getSauceType() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('White Sauce','White Sauce'));
        options.add(new SelectOption('Buffalo','Buffalo'));
        options.add(new SelectOption('Marinara Sauce','Marinara Sauce'));
        return options;
    }
    
    public PageReference pageFourP() {
        return Page.Pizza3;
    }
    
    public PageReference pageFourN() {
        return Page.Pizza5;
    }
}