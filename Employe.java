import java.util.Date;
/**
 *
 * @author MENDRIKA RAJ
 */
public class Employe {
    int employeID;
    String nom;
    String prenom;
    Date dateNaissance;
    String sexe;
    String adresse;
    int idPoste;
    int idTypeContrat;

    public Employe() {
    }

    public Employe(int employeID, String nom, String prenom, Date dateNaissance, String sexe, String adresse, int idPoste, int idTypeContrat) {
        this.employeID = employeID;
        this.nom = nom;
        this.prenom = prenom;
        this.dateNaissance = dateNaissance;
        this.sexe = sexe;
        this.adresse = adresse;
        this.idPoste = idPoste;
        this.idTypeContrat = idTypeContrat;
    }

    public int getEmployeID() {
        return this.employeID;
    }

    public void setEmployeID(int employeID) {
        this.employeID = employeID;
    }

    public String getNom() {
        return this.nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return this.prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public Date getDateNaissance() {
        return this.dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public String getSexe() {
        return this.sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getAdresse() {
        return this.adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public int getIdPoste() {
        return this.idPoste;
    }

    public void setIdPoste(int idPoste) {
        this.idPoste = idPoste;
    }

    public int getIdTypeContrat() {
        return this.idTypeContrat;
    }

    public void setIdTypeContrat(int idTypeContrat) {
        this.idTypeContrat = idTypeContrat;
    }

    public Employe employeID(int employeID) {
        setEmployeID(employeID);
        return this;
    }

    public Employe nom(String nom) {
        setNom(nom);
        return this;
    }

    public Employe prenom(String prenom) {
        setPrenom(prenom);
        return this;
    }

    public Employe dateNaissance(Date dateNaissance) {
        setDateNaissance(dateNaissance);
        return this;
    }

    public Employe sexe(String sexe) {
        setSexe(sexe);
        return this;
    }

    public Employe adresse(String adresse) {
        setAdresse(adresse);
        return this;
    }

    public Employe idPoste(int idPoste) {
        setIdPoste(idPoste);
        return this;
    }

    public Employe idTypeContrat(int idTypeContrat) {
        setIdTypeContrat(idTypeContrat);
        return this;
    }
}
