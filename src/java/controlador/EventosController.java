
package controlador;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Eventos;
import modelo.EventosDAO;

/**
 *
 * @author SamiSanchez
 */
@WebServlet(name = "EventosController", urlPatterns = {"/EventosController"})
public class EventosController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, 
                HttpServletResponse response)
                throws ServletException, IOException 
    {

        EventosDAO eventosDAO = new EventosDAO();
        String accion;
        RequestDispatcher dispatcher = null;

        accion = request.getParameter("accion");

        if(accion == null || accion.isEmpty())
        {
            dispatcher = request.getRequestDispatcher("Eventos/index.jsp");
            List<Eventos> listaEventos = eventosDAO.listarEventos();
            request.setAttribute("lista",listaEventos);
        }
        else if("nuevo".equals(accion)){
            dispatcher = request.getRequestDispatcher("Eventos/nuevo.jsp");
        }
        else if("insertar".equals(accion)){

            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            int cupos = Integer.parseInt(request.getParameter("cupos"));
            double precio = Double.parseDouble(request.getParameter("precio"));

            Eventos evento = new Eventos(0,cupos, codigo, nombre, precio);
             
            eventosDAO.insertar(evento);
            dispatcher = request.getRequestDispatcher("Eventos/index.jsp");
            List<Eventos> listaEventos = eventosDAO.listarEventos();
            request.setAttribute("lista",listaEventos);
        }
        else if("modificar".equals(accion)){
            dispatcher = request.getRequestDispatcher("Eventos/modificar.jsp");
            int id = Integer.parseInt(request.getParameter("id"));
            Eventos evento = eventosDAO.mostrarEvento(id);
            request.setAttribute("evento",evento);
        }
        else if("actualizar".equals(accion)){

            int id = Integer.parseInt(request.getParameter("id"));
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");
            int cupos = Integer.parseInt(request.getParameter("cupos"));
            double precio = Double.parseDouble( request.getParameter("precio"));

            Eventos evento = new Eventos(id ,cupos, codigo, nombre, precio);
             
            eventosDAO.actualizar(evento);
            dispatcher = request.getRequestDispatcher("Eventos/index.jsp");
            List<Eventos> listaEventos = eventosDAO.listarEventos();
            request.setAttribute("lista",listaEventos);
        }
        else if("eliminar".equals(accion)){

            int id = Integer.parseInt(request.getParameter("id"));
            
            eventosDAO.eliminar(id);
            dispatcher = request.getRequestDispatcher("Eventos/index.jsp");
            List<Eventos> listaEventos = eventosDAO.listarEventos();
            request.setAttribute("lista",listaEventos);
        }
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException {
       this.doGet(request,response);
        
    
    
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
