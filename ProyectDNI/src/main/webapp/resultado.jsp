

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String dni=request.getParameter("txtDNI");
           
            ArrayList<Alumno> BaseDatosAlumnos=new ArrayList<>();
            Alumno alu1=new Alumno("123","jose");
            Alumno alu2=new Alumno("124","cesar");
            Alumno alu3=new Alumno("125","maria");
            Alumno alu4=new Alumno("126","julio");
            Alumno alu5=new Alumno("127","ronaldo");
            BaseDatosAlumnos.add(alu1);
            BaseDatosAlumnos.add(alu2);
            BaseDatosAlumnos.add(alu3);
            BaseDatosAlumnos.add(alu4);
            BaseDatosAlumnos.add(alu5);

           String nombre="";
            for (int i = 0; i < BaseDatosAlumnos.size(); i++) {
                    if(BaseDatosAlumnos.get(i).dni.equals(dni))
                    {
                         nombre=BaseDatosAlumnos.get(i).nombre;
                    }
                }
            
         out.print("el nombre del DNI ingresado es: "+nombre);

            %>
    </body>
</html>
