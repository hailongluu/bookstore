package group.faf.bookstore.controller;

import group.faf.bookstore.model.book.Book;
import group.faf.bookstore.model.book.BookDAOImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "homepage", urlPatterns = "/home")
public class HomePageController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookDAOImpl bookDAO = new BookDAOImpl();
        List<Book> books = bookDAO.getListBook();
        request.setAttribute("book1",books.get(0));
        request.setAttribute("book2",books.get(1));
        request.setAttribute("book3",books.get(2));
        request.setAttribute("book4",books.get(3));

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request,response);
    }
}
