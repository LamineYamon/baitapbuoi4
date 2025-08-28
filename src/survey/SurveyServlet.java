package survey;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ⭐ QUAN TRỌNG: Thiết lập encoding đầu tiên
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        // Lấy dữ liệu từ form
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dob = request.getParameter("dob");
        String heardFrom = request.getParameter("heardFrom");
        String contactVia = request.getParameter("contactVia");

        // ⭐ Xử lý checkbox ĐÚNG CÁCH
        String wantsUpdates = "No";
        String emailOK = "No";
        
        if (request.getParameter("wantsUpdates") != null) {
            wantsUpdates = request.getParameter("wantsUpdates");
        }
        
        if (request.getParameter("emailOK") != null) {
            emailOK = request.getParameter("emailOK");
        }

        // Tạo fullName
        String fullName = firstName + " " + lastName;

        // Gán attribute để hiển thị trên JSP
        request.setAttribute("email", email);
        request.setAttribute("fullName", fullName);
        request.setAttribute("dob", dob);
        request.setAttribute("heardFrom", heardFrom);
        request.setAttribute("wantsUpdates", wantsUpdates);
        request.setAttribute("emailOK", emailOK);
        request.setAttribute("contactVia", contactVia);

        // Chuyển hướng sang trang kết quả (result.jsp)
        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request, response);
    }
}