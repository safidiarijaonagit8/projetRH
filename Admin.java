public class Admin {
    int AdminID;
    String username;
    String password;

    public Admin() {
    }

    public Admin(int AdminID, String username, String password) {
        this.AdminID = AdminID;
        this.username = username;
        this.password = password;
    }

    public int getAdminID() {
        return this.AdminID;
    }

    public void setAdminID(int AdminID) {
        this.AdminID = AdminID;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Admin AdminID(int AdminID) {
        setAdminID(AdminID);
        return this;
    }

    public Admin username(String username) {
        setUsername(username);
        return this;
    }

    public Admin password(String password) {
        setPassword(password);
        return this;
    }
}
