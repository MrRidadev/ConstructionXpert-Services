package Model;

public class Taches {
    private int id ;
    private String nom_tache;
    private String description ;
    private String date_debut;
    private String date_fin;
    private String ressource;
    private int id_projet;

    public Taches() {}

    public Taches(int id, String nom_tache, String description, String date_debut, String date_fin, String ressource) {
        this.id = id;
        this.nom_tache = nom_tache;
        this.description = description;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.ressource = ressource;
    }

    public Taches(String nom_tache, String description, String date_debut, String date_fin, String ressource, int id_projet) {
        this.nom_tache = nom_tache;
        this.description = description;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.ressource = ressource;
        this.id_projet = id_projet;
    }

    public Taches(String nom_tache, String description, String date_debut, String date_fin, String ressource) {
        this.nom_tache = nom_tache;
        this.description = description;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.ressource = ressource;
    }

    public int getId_projet() {
        return id_projet;
    }

    public void setId_projet(int id_projet) {
        this.id_projet = id_projet;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom_tache() {
        return nom_tache;
    }

    public void setNom_tache(String nom_tache) {
        this.nom_tache = nom_tache;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate_debut() {
        return date_debut;
    }

    public void setDate_debut(String date_debut) {
        this.date_debut = date_debut;
    }

    public String getDate_fin() {
        return date_fin;
    }

    public void setDate_fin(String date_fin) {
        this.date_fin = date_fin;
    }

    public String getRessource() {
        return ressource;
    }

    public void setRessource(String ressource) {
        this.ressource = ressource;
    }

    @Override
    public String toString() {
        return "Taches{" +
                "id=" + id +
                ", nom_tache='" + nom_tache + '\'' +
                ", description='" + description + '\'' +
                ", date_debut='" + date_debut + '\'' +
                ", date_fin='" + date_fin + '\'' +
                ", ressource='" + ressource + '\'' +
                '}';
    }
}
