public class Poste {
    int posteID;
    String nom;
    int iddepartement;

    public Poste() {
    }

    public Poste(int posteID, String nom, int iddepartement) {
        this.posteID = posteID;
        this.nom = nom;
        this.iddepartement = iddepartement;
    }

    public int getPosteID() {
        return this.posteID;
    }

    public void setPosteID(int posteID) {
        this.posteID = posteID;
    }

    public String getNom() {
        return this.nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getIddepartement() {
        return this.iddepartement;
    }

    public void setIddepartement(int iddepartement) {
        this.iddepartement = iddepartement;
    }

    public Poste posteID(int posteID) {
        setPosteID(posteID);
        return this;
    }

    public Poste nom(String nom) {
        setNom(nom);
        return this;
    }

    public Poste iddepartement(int iddepartement) {
        setIddepartement(iddepartement);
        return this;
    }
}
