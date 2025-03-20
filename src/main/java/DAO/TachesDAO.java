package DAO;


import Model.Taches;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class TachesDAO extends connexion{
    private static final String INSERT_TACHES = "INSERT INTO taches ( nom_tache, description, date_debut, date_fin, ressource,id_projet)\n" +
            "VALUES\n" +
            "( ?,?,?,?,?,?);";
    public TachesDAO() {}

    public static boolean insertTaches(Taches taches) {
        try(Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(INSERT_TACHES)
        )
        {

            ps.setString(1, taches.getNom_tache());
            ps.setString(2, taches.getDescription());
            ps.setString(3, taches.getDate_debut());
            ps.setString(4, taches.getDate_fin());
            ps.setString(5, taches.getRessource());
            ps.setInt(6,taches.getId_projet());

            ps.executeUpdate();
            return true;
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

}
