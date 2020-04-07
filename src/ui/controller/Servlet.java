package ui.controller;

import domain.db.FilmDB;
import domain.model.Film;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {

    private FilmDB filmDB = new FilmDB();

    public Servlet(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destination = "voegToe.jsp";

        String titel = request.getParameter("titel");
        String genre = request.getParameter("genre");
        String speelduur = request.getParameter("speelduur");
        String rating = request.getParameter("rating");

        if(titel != null && genre != null && speelduur != null && rating != null){
            if(!titel.isEmpty() && !genre.isEmpty() && !speelduur.isEmpty() && !rating.isEmpty()){
                Film film = new Film(titel, genre, Integer.parseInt(speelduur), Integer.parseInt(rating));
                filmDB.voegToe(film);
                request.setAttribute("alleFilms", filmDB.vindAlle());
                request.setAttribute("langsteSpeelduur", filmDB.filmMetLangsteSpeelduur());
                destination = "overzicht.jsp";
            }
        }
        RequestDispatcher view = request.getRequestDispatcher(destination);
        view.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destination = "overzicht.jsp";
        request.setAttribute("alleFilms", filmDB.vindAlle());
        request.setAttribute("langsteSpeelduur", filmDB.filmMetLangsteSpeelduur());

        RequestDispatcher view = request.getRequestDispatcher(destination);
        view.forward(request, response);
    }
}
