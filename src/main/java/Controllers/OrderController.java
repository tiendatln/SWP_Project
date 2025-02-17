/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Model.Order;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author tiend
 */
public class OrderController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrderController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getRequestURI();
        if(path.endsWith("/OrderController/OrderManagement")){
             // Giả lập danh sách đơn hàng (có thể lấy từ database)
        List<Order> orderList = new ArrayList<>();
        orderList.add(new Order(1, "John Doe", "500.000", "15/02/2025 14:30:00", "Complete"));
        orderList.add(new Order(2, "Jane Smith", "300.000", "14/02/2025 13:15:00", "Confirm"));
        orderList.add(new Order(3, "Mike Johnson", "250.000", "13/02/2025 12:00:00", "Pending"));
        orderList.add(new Order(4, "Emily Davis", "450.000", "12/02/2025 11:45:00", "Shipping"));
        orderList.add(new Order(5, "David Lee", "350.000", "11/02/2025 10:30:00", "Cancel"));

        // Gửi danh sách đơn hàng đến JSP
        HttpSession session = request.getSession();
            session.setAttribute("orderList", orderList);
            request.getRequestDispatcher("/web/Staff/show.jsp").forward(request, response);
        }else if (path.endsWith("/Detail")){
            request.getRequestDispatcher("/web/Staff/detail.jsp").forward(request, response);
        }else if (path.endsWith("/Update")){
            request.getRequestDispatcher("/web/Staff/update.jsp").forward(request, response);
        }else if(path.endsWith("/CustomerOrder")){
            
            List<Order> orderList = new ArrayList<>();
        orderList.add(new Order(1, "John Doe", "500.000", "15/02/2025 14:30:00", "Complete"));
        orderList.add(new Order(2, "Jane Smith", "300.000", "14/02/2025 13:15:00", "Confirm"));
        orderList.add(new Order(3, "Mike Johnson", "250.000", "13/02/2025 12:00:00", "Pending"));
        orderList.add(new Order(4, "Emily Davis", "450.000", "12/02/2025 11:45:00", "Shipping"));
        orderList.add(new Order(5, "David Lee", "350.000", "11/02/2025 10:30:00", "Cancel"));

        // Gửi danh sách đơn hàng đến JSP
        HttpSession session = request.getSession();
            session.setAttribute("orderList", orderList);
            request.getRequestDispatcher("/web/GuessAndCustomer/show.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
