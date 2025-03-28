package DAO;



import Model.Taches;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TachesDAO extends connexion{
    private static final String INSERT_TACHES = "INSERT INTO taches ( nom_tache, description, date_debut, date_fin, ressource,id_projet)\n" +
            "VALUES\n" +
            "( ?,?,?,?,?,?);";
    private static final String SELECT_TACHES = "SELECT * FROM taches where id_projet = ?";
    private static final String UPDATE_TACHE = "update taches set nom_tache = 'rida',description = ?,date_debut = ?,date_fin = ?,ressource = ?\n" +
            "where id_tache =? ;";
    private static final String DELETE_TACHES = "delete from taches where id_tache = ?";
    private static final String SELECT_TACHES_BY_id = "select * from taches\n" +
            "where id = ?;";
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

    public static List<Taches> getAllTaches(int id_projet) {
        List<Taches> taches = new ArrayList<>();

        try (Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement(SELECT_TACHES))
        {
            ps.setInt(1,id_projet);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_tache = rs.getInt("id_tache");
                String nom_tache = rs.getString("nom_tache");
                String description = rs.getString("description");
                String date_debut = rs.getString("date_debut");
                String date_fin = rs.getString("date_fin");
                String ressource = rs.getString("ressource");


                taches.add(new Taches(id_tache, nom_tache, description,date_debut,date_fin,ressource,id_projet));

            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return taches;
    }

    public static Taches getTachById(int tachId) {
        Taches tache = new Taches();
        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(SELECT_TACHES_BY_id)
        ){
            ps.setInt(1,tachId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_tache = rs.getInt("id_tache");
                String nom_tache = rs.getString("nom_tache");
                String description = rs.getString("description");
                String date_debut = rs.getString("date_debut");
                String date_fin = rs.getString("date_fin");
                String ressource = rs.getString("ressource");

                tache.setId(id_tache);
                tache.setNom_tache(nom_tache);
                tache.setDescription(description);
                tache.setDate_debut(date_debut);
                tache.setDate_fin(date_fin);
                tache.setRessource(ressource);


            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return tache;
    }

    public static boolean updateTaches(Taches taches) {
        try (Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement(UPDATE_TACHE))
        {
            ps.setString(1, taches.getNom_tache());
            ps.setString(2, taches.getDescription());
            ps.setString(3, taches.getDate_debut());
            ps.setString(4, taches.getDate_fin());
            ps.setString(5, taches.getRessource());
            ps.setInt(6,taches.getId());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static  void deleteTaches(int taches) {
        try (Connection con = getConnection();
             PreparedStatement stm = con.prepareStatement(DELETE_TACHES)
        )
        {
            stm.setInt(1, taches);
            stm.executeUpdate();


        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

}
