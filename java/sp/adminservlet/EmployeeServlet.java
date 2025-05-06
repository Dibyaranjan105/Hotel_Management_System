package sp.adminservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sp.dao.EmployeeDAO;
import sp.model.Employee;

@WebServlet("/AddEmployee")
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Get the parameters from the form
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String job = request.getParameter("job");
        String salary = request.getParameter("salary");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String aadhar = request.getParameter("aadhar");

        // Create an Employee object and set its properties
        Employee employee = new Employee();
        employee.setName(name);
        employee.setAge(age);
        employee.setGender(gender);
        employee.setJob(job);
        employee.setSalary(salary);
        employee.setPhone(phone);
        employee.setEmail(email);
        employee.setAadhar(aadhar);

        // Create an EmployeeDAO object to insert employee into the database
        EmployeeDAO employeeDAO = new EmployeeDAO();

        // Call the DAO to add the employee
        boolean success = employeeDAO.addEmployee(employee);

        // Provide feedback to the user
        if (success) {
            out.println("<h3>Employee added successfully!</h3>");
        } else {
            out.println("<h3>Error occurred while adding employee!</h3>");
        }
    }
}
