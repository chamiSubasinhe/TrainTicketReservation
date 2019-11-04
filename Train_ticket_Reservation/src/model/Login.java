package model;


public class Login {

	    private int id;
	    private String email;
	    private String password;
	   


	 
	    public Login() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Login(int id, String email, String password) {
			super();
			this.id = id;
			this.email = email;
			this.password = password;
		}

		public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }
	    
	    public String getPassword() {
	        return password;
	    }

	    public void setPassword(String password) {
	        this.password = password;
	    }

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}



	  

	}


