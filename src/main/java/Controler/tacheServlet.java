package Controler;


import DAO.TachesDAO;
import Model.Taches;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet({"/tache","/ajouterTache","/listTaches"})
public class tacheServlet extends HttpServlet {

    TachesDAO dao = null;

    @Override
    public void init(ServletConfig config) throws ServletException {
        dao = new TachesDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
          }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action) {
            case "/ajouterTache":
                ajouterTache(req, resp);
                break;
            case "/listTaches":
                afficherTache(req, resp);
                break;
        }


    }

    public void ajouterTache(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));


        String nom_tache = req.getParameter("nom_tache");
        String description_tache = req.getParameter("description");
        String date_debut_tache = req.getParameter("dateDebut");
        String date_fin_tache = req.getParameter("dateFin");
        String ressource_tache = req.getParameter("ressource");

        Taches taches = new Taches(nom_tache,description_tache,date_debut_tache,date_fin_tache,ressource_tache,id);
        if (TachesDAO.insertTaches(taches)) {
            System.out.println("Ajout de tache avec succes!");
        }else {
            System.out.println("erreur");
        }

        resp.sendRedirect("AfficherTache.jsp");


    }

    public void afficherTache(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        List<Taches> taches = TachesDAO.getAllTaches(id);
        req.setAttribute("taches", taches);
        req.setAttribute("projet_id", id);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/AfficherTache.jsp");
        dispatcher.forward(req, resp);

    }
}
