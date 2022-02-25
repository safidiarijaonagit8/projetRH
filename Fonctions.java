import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Fonctions {
    public Connection connect()throws SQLException, ClassNotFoundException{
        Connection con = null;
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","root");
        return con;   
    }
    public int nbligne(String NomTable)throws SQLException, ClassNotFoundException{
        Connection con = this.connect();
        int nbligne = 0;
        String query = "SELECT Count(*) FROM "+NomTable+"";
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery(query);
        while(resultSet.next()){
            nbligne = resultSet.getInt("count");
        }
        con.close();
        return nbligne;
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
        int nbligne = this.nbligne("v_detailEmploye");
        List<String> DetailEmploye = new ArrayList<String>();
        String query = "SELECT * FROM v_detailEmploye";
        Statement statement = con.createStatement();
        String[] employe = new String[nbligne];
        String[] poste = new String[nbligne];
        String[] typeContrat = new String[nbligne];
        String[] departement = new String[nbligne];
        String[] indemnite = new String[nbligne];
        ResultSet resultSet = statement.executeQuery(query);
        while (resultSet.next()) {
            for(int i=0;i<nbligne;i++)
            {
                employe[i] = resultSet.getString("Employe");
                poste[i]= resultSet.getString("poste");
                typeContrat[i] = resultSet.getString("typeContrat");
                departement[i] = resultSet.getString("departement");
                indemnite[i] = resultSet.getString("indemnite");    
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
        con.close();

        return DetailEmploye;
    }
    public List findEmployeParTypeContrat(Typecontrat a)throws SQLException,ClassNotFoundException {
        List<String> Employe = new ArrayList<String>();
        String typeContrat = a.getTypeContrat();
        Connection con = this.connect();
        String query ="SELECT Employe FROM v_detailemploye WHERE typeContrat='"+typeContrat+"'"; 
        int nbligne = this.nbligne("v_detailemploye");
        Statement statement = con.createStatement();
        String[] employe = new String[nbligne];
        ResultSet resultSet = statement.executeQuery(query);
        while (resultSet.next()) {
            for(int i = 0;i<nbligne;i++)
            {
                employe[i] = resultSet.getString("Employe");

            }
        }
        for (int i = 0; i < nbligne; i++) {
            Employe.add(employe[i]);
        }
        con.close();
        return Employe;
    }
    public List getAllPost()throws SQLException,ClassNotFoundException {
        List<String> Poste = new ArrayList<String>();
        Connection con = this.connect();
        int nbligne = this.nbligne("Poste");
        String[] resultat = new String[nbligne];
        Statement statement = con.createStatement();
        String query = "SELECT nom FROM Poste";  
        ResultSet resultSet = statement.executeQuery(query);
        while (resultSet.next()) {
            for(int i = 0;i<nbligne;i++)
            {
                resultat[i] = resultSet.getString("nom");
            }
        }
        for (int i = 0; i <nbligne; i++) {
            Poste.add(resultat[i]);
        }
        return Poste;
    }
    public List getAllTypeContrat()throws SQLException,ClassNotFoundException{
        List<String> TypeContrat = new ArrayList<String>();
        Connection con = this.connect();
        int nbligne = this.nbligne("Typecontrat");
        String[] typeContrat = new String[nbligne];
        Statement statement = con.createStatement();
        String query = "SELECT * FROM TypeContrat";  
        ResultSet resultSet = statement.executeQuery(query);
        while (resultSet.next()) {
            for(int i = 0;i<nbligne;i++)
            {
                typeContrat[i] = resultSet.getString("typecontrat");
            }
        }
        for (int i = 0; i <nbligne; i++) {
            TypeContrat.add(typeContrat[i]);
            
        }
        return TypeContrat;
    }

}
