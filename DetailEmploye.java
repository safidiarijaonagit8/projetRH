import java.util.Date;

public class DetailEmploye {
    String nom;
    String prenom;
    Date dateNaissance;
    String sexe;
    String adresse;
    String nomPoste;
    Date dateEmbauche;
    String nomTypeContrat;
    Double salaire;
    String nomDepartement;
    Double valeurIndemnite;
    Double dureeContrat;

    public DetailEmploye() {
    }

    public DetailEmploye(String nom, String prenom, Date dateNaissance, String sexe, String adresse, String nomPoste, Date dateEmbauche, String nomTypeContrat, Double salaire, String nomDepartement, Double valeurIndemnite, Double dureeContrat) {
        this.nom = nom;
        this.prenom = prenom;
        this.dateNaissance = dateNaissance;
        this.sexe = sexe;
        this.adresse = adresse;
        this.nomPoste = nomPoste;
        this.dateEmbauche = dateEmbauche;
        this.nomTypeContrat = nomTypeContrat;
        this.salaire = salaire;
        this.nomDepartement = nomDepartement;
        this.valeurIndemnite = valeurIndemnite;
        this.dureeContrat = dureeContrat;
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

    public String getNomPoste() {
        return this.nomPoste;
    }

    public void setNomPoste(String nomPoste) {
        this.nomPoste = nomPoste;
    }

    public Date getDateEmbauche() {
        return this.dateEmbauche;
    }

    public void setDateEmbauche(Date dateEmbauche) {
        this.dateEmbauche = dateEmbauche;
    }

    public String getNomTypeContrat() {
        return this.nomTypeContrat;
    }

    public void setNomTypeContrat(String nomTypeContrat) {
        this.nomTypeContrat = nomTypeContrat;
    }

    public Double getSalaire() {
        return this.salaire;
    }

    public void setSalaire(Double salaire) {
        this.salaire = salaire;
    }

    public String getNomDepartement() {
        return this.nomDepartement;
    }

    public void setNomDepartement(String nomDepartement) {
        this.nomDepartement = nomDepartement;
    }

    public Double getValeurIndemnite() {
        return this.valeurIndemnite;
    }

    public void setValeurIndemnite(Double valeurIndemnite) {
        this.valeurIndemnite = valeurIndemnite;
    }

    public Double getDureeContrat() {
        return this.dureeContrat;
    }

    public void setDureeContrat(Double dureeContrat) {
        this.dureeContrat = dureeContrat;
    }

    public DetailEmploye nom(String nom) {
        setNom(nom);
        return this;
    }

    public DetailEmploye prenom(String prenom) {
        setPrenom(prenom);
        return this;
    }

    public DetailEmploye dateNaissance(Date dateNaissance) {
        setDateNaissance(dateNaissance);
        return this;
    }

    public DetailEmploye sexe(String sexe) {
        setSexe(sexe);
        return this;
    }

    public DetailEmploye adresse(String adresse) {
        setAdresse(adresse);
        return this;
    }

    public DetailEmploye nomPoste(String nomPoste) {
        setNomPoste(nomPoste);
        return this;
    }

    public DetailEmploye dateEmbauche(Date dateEmbauche) {
        setDateEmbauche(dateEmbauche);
        return this;
    }

    public DetailEmploye nomTypeContrat(String nomTypeContrat) {
        setNomTypeContrat(nomTypeContrat);
        return this;
    }

    public DetailEmploye salaire(Double salaire) {
        setSalaire(salaire);
        return this;
    }

    public DetailEmploye nomDepartement(String nomDepartement) {
        setNomDepartement(nomDepartement);
        return this;
    }

    public DetailEmploye valeurIndemnite(Double valeurIndemnite) {
        setValeurIndemnite(valeurIndemnite);
        return this;
    }

    public DetailEmploye dureeContrat(Double dureeContrat) {
        setDureeContrat(dureeContrat);
        return this;
    }
}
