public class Indemnite {
    int indemniteID;
    int Idposte;
    Double valeur;

    public Indemnite() {
    }

    public Indemnite(int indemniteID, int Idposte, Double valeur) {
        this.indemniteID = indemniteID;
        this.Idposte = Idposte;
        this.valeur = valeur;
    }

    public int getIndemniteID() {
        return this.indemniteID;
    }

    public void setIndemniteID(int indemniteID) {
        this.indemniteID = indemniteID;
    }

    public int getIdposte() {
        return this.Idposte;
    }

    public void setIdposte(int Idposte) {
        this.Idposte = Idposte;
    }

    public Double getValeur() {
        return this.valeur;
    }

    public void setValeur(Double valeur) {
        this.valeur = valeur;
    }

    public Indemnite indemniteID(int indemniteID) {
        setIndemniteID(indemniteID);
        return this;
    }

    public Indemnite Idposte(int Idposte) {
        setIdposte(Idposte);
        return this;
    }

    public Indemnite valeur(Double valeur) {
        setValeur(valeur);
        return this;
    }
}
