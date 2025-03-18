package DAO;

import Model.Projets;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ProjetsDao extends connexion {

    protected static final String INSERT_PROJETS = "insert into Projets(nom,description,date_bebut,date_fin,budget) values (?,?,?,?,?);";
    public ProjetsDao() {}

    public static void ajouterProjet(Projets projet){
        try(Connection con = getConnection();
            PreparedStatement stm = con.prepareStatement(INSERT_PROJETS)
        )
        {
            stm.setString(1,projet.getNom());
            stm.setString(2,projet.getDescription());
            stm.setString(3,projet.getDate_debut());
            stm.setString(4,projet.getDate_fin());
            stm.setDouble(5,projet.getBudget());
            stm.executeUpdate();
        }
        catch (Exception e) {
            e.printStackTrace();
        }


    }
}
