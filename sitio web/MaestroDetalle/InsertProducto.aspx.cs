using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInsertarProducto_Click(object sender, EventArgs e)
    {
        ProductoBLL.Insert(txtNombre.Text, Convert.ToInt32(txtPrecio.Text));
        Response.Redirect("Producto.aspx");
    }
}