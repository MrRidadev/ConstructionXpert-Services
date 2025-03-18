package Model;

public class Ressources {

    private int id;
    private String nom_res;
    private String type;
    private int quantite;
    private String fornisour;

    public Ressources() {}

    public Ressources(int id, String nom_res, String type, int quantite, String fornisour) {
        this.id = id;
        this.nom_res = nom_res;
        this.type = type;
        this.quantite = quantite;
        this.fornisour = fornisour;
    }

    public Ressources(String nom_res, String type, int quantite, String fornisour) {
        this.nom_res = nom_res;
        this.type = type;
        this.quantite = quantite;
        this.fornisour = fornisour;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom_res() {
        return nom_res;
    }

    public void setNom_res(String nom_res) {
        this.nom_res = nom_res;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public String getFornisour() {
        return fornisour;
    }

    public void setFornisour(String fornisour) {
        this.fornisour = fornisour;
    }

    @Override
    public String toString() {
        return "Ressources{" +
                "id=" + id +
                ", nom_res='" + nom_res + '\'' +
                ", type='" + type + '\'' +
                ", quantite=" + quantite +
                ", fornisour='" + fornisour + '\'' +
                '}';
    }
}
