using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MaestroDetalle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        LinkButton objBotonClickeado = (LinkButton)sender;
        int id = Convert.ToInt32(objBotonClickeado.CommandArgument);
        ProductoBLL.Delete(id);
        grvProducto.DataBind();
    }
}