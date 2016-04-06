using DTO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Ventas : System.Web.UI.Page
{

    private static List<Producto> listaProducto = new List<Producto>();
    private DTO.Cliente cliente = new DTO.Cliente();
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void buscarCliente(object sender, System.EventArgs e)
    {
        cliente = ClienteBLL.SelectByNit(Convert.ToInt32(txtNit.Text));
        txtId.Text = ""+cliente.Cliente_id;
        txtNombre.Text = cliente.Nombre;
    }

    protected void buscarProductos(object sender, System.EventArgs e)
    {
        Producto producto = ProductoBLL.SelectById(Convert.ToInt32(txtProducto.Text));
        listaProducto.Add(producto);

        for (int i = 0; i < listaProducto.Count; i++)
        {
            TableCell columnaIdProductos = new TableCell();
            columnaIdProductos.Text = "" + listaProducto[i].Producto_id;

            TableCell columnaNombreProducto = new TableCell();
            columnaNombreProducto.Text = "" + listaProducto[i].Nombre;

            TableCell columnaCantidad = new TableCell();
            columnaCantidad.Text = "0";

            TableCell columnaPrecio = new TableCell();
            columnaPrecio.Text = "" + listaProducto[i].Precio;

            TableCell columnaSubtotal = new TableCell();
            columnaSubtotal.Text = "0";

            TableRow fila = new TableRow();
            fila.Controls.Add(columnaIdProductos);
            fila.Controls.Add(columnaNombreProducto);
            fila.Controls.Add(columnaCantidad);
            fila.Controls.Add(columnaPrecio);
            fila.Controls.Add(columnaSubtotal);

            tablaProductos.Controls.Add(fila);
        }
        
    }

    protected void guardarDatos(object sender, System.EventArgs e)
    {
        VentaBLL.Insert("1999-05-02", Convert.ToInt32(txtId.Text), 10);

    }
}