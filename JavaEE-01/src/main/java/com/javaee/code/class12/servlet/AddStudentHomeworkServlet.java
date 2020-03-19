package com.javaee.code.class12.servlet;

import com.javaee.code.class12.jdbc.StudentHomeworkJdbc;
import com.javaee.code.class12.model.StudentHomework;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/add")
public class AddStudentHomeworkServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentHomework sh=new StudentHomework();
        /**
         * 赋值
         **/

        StudentHomeworkJdbc.add(sh);
        resp.sendRedirect("list");
    }
}
