package servicio;

import java.util.List;
import negocio.Cuenta;
import negocio.Persona;
import negocio.Presentador;
import negocio.TipoEmpleado;
import persistencia.EmpleadoDaoImp;
import persistencia.EmpleadoDao;

public class EmpleadoServicioImp implements EmpleadoServicio {
    private EmpleadoDao empDao;

    public EmpleadoServicioImp() {
        empDao = new EmpleadoDaoImp();
    }

    @Override
    public String grabar(String nombre, String apellidos, String dni, String direccion, String telefono, String fechana, String Dis, String Pro, String Dep, String user, String pass, String nomTipo) {
        Persona per=new Persona(nombre, apellidos, dni, direccion, telefono, fechana, Dis, Pro, Dep);
        Cuenta cu=new Cuenta(user, pass);
        TipoEmpleado tip=new TipoEmpleado(nomTipo);
        Presentador pre=new Presentador(per, cu, tip);
        String msg=empDao.grabar(pre);
        
        if (msg==null) {
            msg="Empleado Grabado";
        } return msg;
    }

    @Override
    public Object[] buscar(String dni) {
        Persona per=new Persona(dni);
        Presentador pre=empDao.buscar(per);
        if(pre!=null){
            Object[]fil=new Object[12];
            fil[0]=pre.getPer().getNombre();
            fil[1]=pre.getPer().getApellidos();
            fil[2]=pre.getPer().getDni();
            fil[3]=pre.getPer().getDireccion();
            fil[4]=pre.getPer().getTelefono();
            fil[5]=pre.getPer().getFechaNa();
            fil[6]=pre.getPer().getDep();
            fil[7]=pre.getPer().getPro();
            fil[8]=pre.getPer().getDis();
            fil[9]=pre.getCu().getUser();
            fil[10]=pre.getCu().getPass();
            fil[11]=pre.getTip().getNombre();
            return fil;
        }
        return null;
    }

    @Override
    public String actualizar(String direccion, String telefono, String Dis, String Pro, String Dep, String dni, String nomTipo) {
        Persona per=new Persona(dni, direccion, telefono, Dis, Pro, Dep);
        TipoEmpleado tip=new TipoEmpleado(nomTipo);
        Presentador pre=new Presentador(per, tip);
        String msg=empDao.actualizar(pre);
        
        if (msg==null) {
            msg="Empleado Actualizado";
        } return msg;
    }

    @Override
    public String eliminar(String dni) {
        Persona per=new Persona(dni);
        String msg=empDao.eliminar(per);
        
        if (msg==null) {
            msg="Empleado eliminado";
        } return msg;
    }

    @Override
    public List listar() {
        return empDao.listar();
    }
}
