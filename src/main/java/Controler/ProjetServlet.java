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

@WebServlet({"/projet","/addProjet","/getProjet","/updateProjet","/upadateProjetView","/deleteProjet"})
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
            case"/updateProjet":
                ModifierProjet(req, resp);
                break;
                case "/upadateProjetView":
                    UpdateProjet(req, resp);
                    break;
                case "/deleteProjet":
                    deleteProjet(req, resp);
                    break;


        }

    }
    public void ModifierProjet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        String date_debut = req.getParameter("date_debut");
        String date_fin = req.getParameter("date_fin");
        Float budget = Float.parseFloat(req.getParameter("budget"));

        Projets projets = new Projets(id,nom, description, date_debut, date_fin, budget);
        System.out.println(projets);
        if (ProjetsDao.updateProjet(projets)){
            System.out.println("updateProjet avec succes");
        }else {
            System.out.println("error");
        }

        resp.sendRedirect("getProjet");


    }
    public void addProjet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        String date_debut = req.getParameter("date_debut");
        String date_fin = req.getParameter("date_fin");
        Float budget = Float.parseFloat(req.getParameter("budget"));

        Projets projets = new Projets(nom, description, date_debut, date_fin, budget);
        if (ProjetsDao.ajouterProjet(projets)){
            System.out.println("Ajout de projet avec succes!");
        }else {
            System.out.println("erreur");
        }
        RequestDispatcher rd = req.getRequestDispatcher("getProjet");
        rd.forward(req, resp);


    }

    public void AfficherProjet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {

        List<Projets> projets = ProjetsDao.getAllProjets();
        RequestDispatcher dispatcher = req.getRequestDispatcher("/AfficherProjet.jsp");
        req.setAttribute("projets", projets);
        dispatcher.forward(req, resp);


    }
    public void UpdateProjet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        Projets projets = ProjetsDao.getProjetById(id);
        req.setAttribute("projets", projets);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/updateProjet.jsp");
        dispatcher.forward(req, resp);
    }

    public void deleteProjet(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        ProjetsDao.deleteProjetById(id);

        resp.sendRedirect("getProjet");

    }






}
