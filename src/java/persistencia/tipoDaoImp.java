
package persistencia;

import negocio.tipoEmpleado;

public class tipoDaoImp implements tipoDao{

    @Override
    public tipoEmpleado buscar(int idTip ) {
        String sql="select * from tipoempleado where idTip ="+idTip+"";
        
        Object[] fill=operacion.buscar(sql);
        
        if(fill!=null){
            tipoEmpleado tip=new tipoEmpleado();
            tip.setIdTip((int)fill[0]);
            tip.setNombre((String) fill[1]);
            return tip;
        }
        return null;
    }
    
}