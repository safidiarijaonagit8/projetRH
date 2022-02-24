public class Departement 
{
    int DepartementID;
    String nom;

    public Departement() {
    }

    public Departement(int DepartementID, String nom) {
        this.DepartementID = DepartementID;
        this.nom = nom;
    }

    public int getDepartementID() {
        return this.DepartementID;
    }

    public void setDepartementID(int DepartementID) {
        this.DepartementID = DepartementID;
    }

    public String getNom() {
        return this.nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Departement DepartementID(int DepartementID) {
        setDepartementID(DepartementID);
        return this;
    }

    public Departement nom(String nom) {
        setNom(nom);
        return this;
    }
}
