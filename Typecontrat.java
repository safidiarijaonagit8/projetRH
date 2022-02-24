public class Typecontrat {
    int typecontratID;
    String typeContrat;
    Double dureeMois;

    public Typecontrat() {
    }

    public Typecontrat(int typecontratID, String typeContrat, Double dureeMois) {
        this.typecontratID = typecontratID;
        this.typeContrat = typeContrat;
        this.dureeMois = dureeMois;
    }

    public int getTypecontratID() {
        return this.typecontratID;
    }

    public void setTypecontratID(int typecontratID) {
        this.typecontratID = typecontratID;
    }

    public String getTypeContrat() {
        return this.typeContrat;
    }

    public void setTypeContrat(String typeContrat) {
        this.typeContrat = typeContrat;
    }

    public Double getDureeMois() {
        return this.dureeMois;
    }

    public void setDureeMois(Double dureeMois) {
        this.dureeMois = dureeMois;
    }

    public Typecontrat typecontratID(int typecontratID) {
        setTypecontratID(typecontratID);
        return this;
    }

    public Typecontrat typeContrat(String typeContrat) {
        setTypeContrat(typeContrat);
        return this;
    }

    public Typecontrat dureeMois(Double dureeMois) {
        setDureeMois(dureeMois);
        return this;
    }
}
