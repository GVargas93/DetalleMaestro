using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class ClienteBLL
{
	public ClienteBLL()
	{
		
	}
    public static void Insert(string nombre, int nit) {
        ClienteDSTableAdapters.ClienteTableAdapter adapter = new ClienteDSTableAdapters.ClienteTableAdapter();
        adapter.Insert(nombre, nit);
    }
    public static void Update(int cliente_id, string nombre, int nit) {
        ClienteDSTableAdapters.ClienteTableAdapter adapter = new ClienteDSTableAdapters.ClienteTableAdapter();
        adapter.Update(nombre, nit, cliente_id);
    }
    public static void Delete(int cliente_id)
    {
        ClienteDSTableAdapters.ClienteTableAdapter adapter = new ClienteDSTableAdapters.ClienteTableAdapter();
        adapter.Delete(cliente_id);
    }
    public static List<Cliente> SelectAll() {
        ClienteDSTableAdapters.ClienteTableAdapter adapter = new ClienteDSTableAdapters.ClienteTableAdapter();
        ClienteDS.ClienteDataTable table = adapter.SelectAll();
        List<Cliente> ListaCliente = new List<Cliente>();
        foreach (ClienteDS.ClienteRow row in table)
        {
            ListaCliente.Add(RowToDto(row));   
        }
        return ListaCliente;
    }
    public static Cliente Select(int cliente_id) {

        ClienteDSTableAdapters.ClienteTableAdapter adapter = new ClienteDSTableAdapters.ClienteTableAdapter();
        ClienteDS.ClienteDataTable table = adapter.SelectById(cliente_id);
        Cliente objCliente = RowToDto(table[0]);
        return objCliente;


    }

    public static Cliente SelectByNit(int cliente_nit)
    {

        ClienteDSTableAdapters.ClienteTableAdapter adapter = new ClienteDSTableAdapters.ClienteTableAdapter();
        ClienteDS.ClienteDataTable table = adapter.SelectByNit(cliente_nit);
        Cliente objCliente = RowToDto(table[0]);
        return objCliente;


    }

    private static Cliente RowToDto(ClienteDS.ClienteRow row)
    {
        Cliente objCliente = new Cliente();
        objCliente.Cliente_id = row.cliente_id;
        objCliente.Nombre = row.nombre;
        objCliente.Nit = row.nit;
        return objCliente;
    }



}