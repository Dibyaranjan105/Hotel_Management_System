package UserModel;

public class UserModel {
    private String firstname;
    private String lastname;
    private String phonenumber;
    private String email;
    private int age;
    private String gender;
    private String password;
    private String usertype;

    

    // Default constructor
    public UserModel() {
    }

    // Parameterized constructor
    public UserModel(String firstname, String lastname, String phonenumber, String email, int age, String gender, String password) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.phonenumber = phonenumber;
        this.email = email;
        this.age = age;
        this.gender = gender;
        this.password = password;
    }

    // Getters and Setters
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // Optional: For debugging or logging
    @Override
    public String toString() {
        return "UserModel [firstname=" + firstname + ", lastname=" + lastname + ", phonenumber=" + phonenumber
                + ", email=" + email + ", age=" + age + ", gender=" + gender + ", password=" + password + "]";
    }

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
}
