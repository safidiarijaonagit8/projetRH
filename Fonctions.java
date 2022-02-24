import java.sql.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.management.Query;
import javax.xml.soap.Detail;

public class Fonctions {
    public Connection connect()throws SQLException, ClassNotFoundException{
        Connection con = null;
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","root");
        return con;   
    }
    public boolean TraitementLogin(Admin a)throws SQLException, ClassNotFoundException{
        String username ="";
        Connection con = this.connect();
        String nom = a.getUsername();
        String password = a.getPassword();
        String query = "SELECT * from admin where passwword='"+password+"'";
        if (password == "") {
            return false;
        }else{
            Statement statement = ((java.sql.Connection) con).createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                username = resultSet.getString("username");
                con.close();
            }
            if (nom.equalsIgnoreCase(username)) {
                return true;
            }else{
                return false;
            }
    
        }

    }
    public void insertionEmploye(Employe e)throws SQLException, ClassNotFoundException {
        Connection con = this.connect();
        String query = "INSERT INTO employe(nom,prenom,datenaissance,sexe,adresse,idposte,idtypecontrat) VALUES('"+e.getNom()+"','"+e.getPrenom()+"','"+e.getDateNaissance()+"','"+e.getSexe()+"','"+e.getAdresse()+"','"+e.getIdPoste()+"','"+e.getIdTypeContrat()+"')";
        Statement statement = con.createStatement();
        statement.executeUpdate(query);
        con.close();
    }
    public List findallemploye()throws SQLException, ClassNotFoundException{
        Connection con = this.connect();
        int nbligne = 0;
        List<String> DetailEmploye = new ArrayList<String>();
        String query1 = "SELECT * FROM v_detailEmploye";
        String query2 = "SELECT COUNT(*) FROM v_detailEmploye";
        Statement statement = con.createStatement();
        ResultSet resultSet1 = statement.executeQuery(query1);
        ResultSet resultSet2 = statement.executeQuery(query2);
        while (resultSet2.next()) {
            nbligne = resultSet2.getInt("count");
        }
        String[] employe = new String[nbligne];
        String[] poste = new String[nbligne];
        String[] typeContrat = new String[nbligne];
        String[] departement = new String[nbligne];
        String[] indemnite = new String[nbligne];

        while (resultSet1.next()) {
            for(int i=0;i<nbligne;i++)
            {
                employe[i] = resultSet1.getString("Employe");
                poste[i]= resultSet1.getString("poste");
                typeContrat[i] = resultSet1.getString("typeContrat");
                departement[i] = resultSet1.getString("departement");
                indemnite[i] = resultSet1.getString("indemnite");    
            }
            con.close();
        }
        for (int j = 0; j < nbligne; j++) {
            DetailEmploye.add(employe[j]);
            DetailEmploye.add(poste[j]);
            DetailEmploye.add(typeContrat[j]);
            DetailEmploye.add(departement[j]);
            DetailEmploye.add(indemnite[j]);
    
        }

        return DetailEmploye;
    }
    public List findEmployeParTypeContrat() {
        
    }
    public List getAllPost() {
        
    }
    public List getAllTypeContrat(){
        
    }

}
