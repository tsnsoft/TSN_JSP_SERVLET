package kz.proffix4.jsp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Main extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public Main() {
        super();
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        if (request.getParameter("calcSubmit") != null) {

            ResultForm obj = null;
            try {
                double a = Double.parseDouble(request.getParameter("a"));
                double b = Double.parseDouble(request.getParameter("b"));
                double c = Double.parseDouble(request.getParameter("c"));

                double d = Math.pow(a, 2) - 4 * a * c;
                double x1 = (-b + Math.sqrt(d)) / (2 * a);
                double x2 = (-b - Math.sqrt(d)) / (2 * a);

                obj = new ResultForm();
                obj.setX1(x1);
                obj.setX2(x2);

                request.setAttribute("form", obj);
                getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
                return;
            } catch (Exception e) {
                getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
                return;

            }
        }

        getServletContext().getRequestDispatcher("/input.jsp").forward(request, response);

    }

}
