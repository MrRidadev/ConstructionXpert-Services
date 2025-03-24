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

@WebServlet({"/tache","/ajouterTache","/listTaches","/AddrTache"})
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
                case "/AddrTache":
                    AddrTache(req, resp);
                    break;
        }


    }
    public void AddrTache(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        req.setAttribute("id", id);
        RequestDispatcher rd = req.getRequestDispatcher("/ajouterTache.jsp");
        rd.forward(req, resp);
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
        req.setAttribute("id", id);
        RequestDispatcher rd = req.getRequestDispatcher("/listTaches");
        rd.forward(req, resp);


    }

    public void afficherTache(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        List<Taches> taches = TachesDAO.getAllTaches(id);

        if (taches.size()==0) {
            req.setAttribute("err","Aucun tache");
            req.setAttribute("id", id);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/ajouterTache.jsp");
            dispatcher.forward(req, resp);

        }else {
            req.setAttribute("taches", taches);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/AfficherTache.jsp");
            dispatcher.forward(req, resp);
        }

    }
}
