package javapages;


public class User {
    int id;
    String name;
    String email;
    String password;
    String classname;

    public User() {
    }

    public User(int id, String name, String email, String password,String classname) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.classname=classname;
    }

    public User(String name, String email, String password,String classname) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.classname=classname;
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getclassname() {
        return classname;
    }

    public void setclassname(String classname) {
       this.classname=classname;
    }
    
    
}

