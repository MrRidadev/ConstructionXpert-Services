package DAO;

import Model.Projets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProjetsDao extends connexion {

    protected static final String INSERT_PROJETS = "insert into Projets(nom,description,date_bebut,date_fin,budget) values (?,?,?,?,?);";
    private static final String SELECT_ALL_PROJETS = "select * from projets;";


    public ProjetsDao() {}

    public static boolean ajouterProjet(Projets projet) {
        try (Connection con = getConnection();
             PreparedStatement stm = con.prepareStatement(INSERT_PROJETS)
        ) {
            stm.setString(1, projet.getNom());
            stm.setString(2, projet.getDescription());
            stm.setString(3, projet.getDate_debut());
            stm.setString(4, projet.getDate_fin());
            stm.setDouble(5, projet.getBudget());
            stm.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
        public List<Projets> getAllProjets() {
            List<Projets> projets = new ArrayList<>();

            try (Connection connection = getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PROJETS))
            {

                ResultSet rs = preparedStatement.executeQuery();

                while (rs.next()) {
                    int id = rs.getInt("id");
                    String nom = rs.getString("nom");
                    String description = rs.getString("description");
                    String date_debut = rs.getString("date_bebut");
                    String date_fin = rs.getString("date_fin");
                    float budget = rs.getFloat("budget");


                    projets.add(new Projets(id, nom, description,date_debut,date_fin,budget));
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }

            return projets;


        }


    }

