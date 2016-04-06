using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class VentaBLL
{
	public VentaBLL()
	{
		
	}

    public static void Insert(string fecha, int FK_cliente_id, int total) 
    {

        VentaDSTableAdapters.VentaTableAdapter adapter = new VentaDSTableAdapters.VentaTableAdapter();
        adapter.Insert(fecha, FK_cliente_id, total);


        
    }
    public static void Update(string fecha, int FK_cliente_id, int total, int venta_id) { 
        VentaDSTableAdapters.VentaTableAdapter adapter = new VentaDSTableAdapters.VentaTableAdapter();
        adapter.Update(fecha, FK_cliente_id, total, venta_id);
    
    }
    public static void Delete(int venta_id) {
        VentaDSTableAdapters.VentaTableAdapter adapter = new VentaDSTableAdapters.VentaTableAdapter();
        adapter.Delete(venta_id);
    
    }
    public static List<Venta> SelectAll() {
    
        VentaDSTableAdapters.VentaTableAdapter adapter = new VentaDSTableAdapters.VentaTableAdapter();
        VentaDS.VentaDataTable table = adapter.SelectAll();
        List<Venta> listaVentas = new List<Venta>();
        foreach (VentaDS.VentaRow row in table)
        {
            listaVentas.Add(RowToDto(row));
        }
        return listaVentas;

    }

    private static Venta RowToDto(VentaDS.VentaRow row)
    {
        Venta objVenta = new Venta();
        objVenta.Venta_id = row.venta_id;
        objVenta.Fecha = row.fecha;
        objVenta.Fk_cliente_id = row.Fk_cliente_id;
        objVenta.Total = row.total;
        return objVenta;
    }
}