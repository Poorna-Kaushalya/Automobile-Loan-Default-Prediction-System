package oism;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Contact_D")
public class Contact_D extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the "id" parameter from the request
        String id = request.getParameter("id");
        boolean isTrue;

        // delete the contact details using the ContactDB class.
        isTrue = ContactDB.deleteDetails(id);

        if (isTrue == true) {
            // If the deletion was successful, forward the request to "viewtable.jsp".
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewtable.jsp");
            dispatcher.forward(request, response);
        } else {
            // If the deletion failed, retrieve the contact details and store them in "conDetails".
            List<Contact> conDetails = ContactDB.selectContactDetails(id);
            request.setAttribute("conDetails", conDetails);

            // Forward the request to "viewtable.jsp" with the contact details available.
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewtable.jsp");
            dispatcher.forward(request, response);
        }
    }
}
