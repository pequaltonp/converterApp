package javaee.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet(value = "/converter")
public class ConvertServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/convert.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("org.postgresql.Driver").getDeclaredConstructor().newInstance();
            Connection connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/postgres",
                    "postgres", "biba0218");
            try (PreparedStatement statement = connection.prepareStatement("SELECT * FROM currency " +
                    "where currencyname = '" + request.getParameter("FromCur1") +"'")){
                double to = 0.0;

                ResultSet resultSet = statement.executeQuery();

                while (resultSet.next()) {
                    to = Double.parseDouble(resultSet.getString(request.getParameter("ToCur1")));
                }
                int amount = Integer.parseInt(request.getParameter("amount1"));

                request.setAttribute("result", amount * to);
                request.getRequestDispatcher("/convert.jsp").forward(request, response);
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}
