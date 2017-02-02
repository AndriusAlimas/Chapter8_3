package example;

import java.io.Serializable;

public  abstract class PersonBean implements Serializable{
		// FIELDS:
	 	private String firstName;
	    private String lastName;
	    // NO-ARG CONSTRUCTOR(need for bean)
	    public PersonBean() {
	    }
	    // overloaded CONSTRUCTOR:
	    public PersonBean(String string, String string2) {
	        this.firstName = string;
	        this.lastName = string2;
	    }
	    // SETTERS:
	    public void setFirstName(String string) {
	        this.firstName = string;
	    }

	    public void setLastName(String string) {
	        this.lastName = string;
	    }
	    // GETTERS: 
	    public String getFirstName() {
	        return this.firstName;
	    }

	    public String getLastName() {
	        return this.lastName;
	    }
}
