package Controler;

import DAO.ProjetsDao;
import Model.Projets;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.util.List;

@WebServlet({"/projet","/addProjet","/getProjet"})
public class ProjetServlet extends HttpServlet {
    ProjetsDao dao = null;

    @Override
    public void init()  {
        dao = new ProjetsDao();
    }
@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        switch (action) {
            case "/addProjet":
                addProjet(req, resp);
                break;
            case "/getProjet":
                AfficherProjet(req, resp);
                break;

        }

    }

    public void addProjet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        String date_debut = req.getParameter("date_debut");
        String date_fin = req.getParameter("date_fin");
        Float budget = Float.parseFloat(req.getParameter("budget"));

        Projets projets = new Projets(nom, description, date_debut, date_fin, budget);
        if (        ProjetsDao.ajouterProjet(projets)){
            System.out.println("Ajout de projet avec succes!");
        }else {
            System.out.println("erreur");
        }

        resp.sendRedirect("getProjet");

    }

    public void AfficherProjet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {

        List<Projets> projets = ProjetsDao.getAllProjets();
        RequestDispatcher dispatcher = req.getRequestDispatcher("/AfficherProjet.jsp");
        req.setAttribute("projets", projets);
        dispatcher.forward(req, resp);


    }

    public void ModifierProjet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        String date_debut = req.getParameter("date_debut");
        String date_fin = req.getParameter("date_fin");
        Float budget = Float.parseFloat(req.getParameter("budget"));


    }



}
