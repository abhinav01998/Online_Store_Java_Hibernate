package hiber;
public class login {
    private String username;
       private String password;
       public login(){}
       public login(String uname,String pass){
       this.username = uname;
       this.password = pass;
       }        

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
       public boolean equals(Object o){
           login l = (login)o;
           if(username.equals(l.getUsername()) && password.equals(l.getPassword())){
               return true;
           }
           else{
               return false;
           }
       }
}
