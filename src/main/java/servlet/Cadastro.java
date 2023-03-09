package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/cadastro")
public class Cadastro extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String age = req.getParameter("age");
        String owner = req.getParameter("owner");

        if (name.equals("") || age.equals("") || owner.equals("")) {
            resp.setContentType("text/html");
            resp.getWriter().print("Algum dado obrigatório não foi preenchido. Tente novamente.");
        } else {
            req.setAttribute("name", name);
            req.setAttribute("age", age);
            req.setAttribute("owner", owner);

            RequestDispatcher rd = req.getRequestDispatcher("data.jsp");
            rd.forward(req, resp);
        }
    }
}
