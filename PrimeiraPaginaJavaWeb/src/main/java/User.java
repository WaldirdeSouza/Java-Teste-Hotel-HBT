
public class User {
	private String username,pass,email,photo;

	public User() {
		super();
	}

	public User(String username,  String email,String pass, String photo) {
		super();
		this.username = username;
		this.pass = pass;
		this.email = email;
		this.photo = photo;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
}
