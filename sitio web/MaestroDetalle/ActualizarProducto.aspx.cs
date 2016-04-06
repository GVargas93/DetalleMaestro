using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ActualizarProducto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = Convert.ToInt32(Request.QueryString["Producto_id"]);
            Producto objProducto = ProductoBLL.Select(id);
            txtNombre.Text = objProducto.Nombre;
            txtPrecio.Text = objProducto.Precio.ToString();
            hdnProductoId.Value = id.ToString();
        }
    }
    protected void btnActualizarProducto_Click(object sender, EventArgs e)
    {
        ProductoBLL.Update(
            Convert.ToInt32(hdnProductoId.Value),
            txtNombre.Text, 
            Convert.ToInt32(txtPrecio.Text)
            );
        Response.Redirect("Producto.aspx");
    }
}