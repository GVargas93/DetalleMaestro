using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ActualizarCliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnActualizarCliente_Click(object sender, EventArgs e)
    {
        ClienteBLL.Update
            (
            Convert.ToInt32(hdnClienteId.Value),
            txtNombre.Text,
            Convert.ToInt32(txtNit.Text)
            );
    }
}