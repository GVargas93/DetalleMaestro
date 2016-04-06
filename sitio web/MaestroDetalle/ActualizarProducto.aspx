<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ActualizarProducto.aspx.cs" Inherits="ActualizarProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HiddenField runat="server" ID="hdnProductoId" />

        <div>
            <asp:Label Text="Nombre:" runat="server" />
        </div>
        <div>
            <asp:TextBox runat="server" ID="txtNombre" />
        </div>
        <div>
            <asp:Label Text="Precio:" runat="server" />
        </div>
        <div>
            <asp:TextBox runat="server" ID="txtPrecio" />
        </div>
        <div>
            <asp:Button Text="Actualizar" runat="server" ID="btnActualizarProducto" OnClick="btnActualizarProducto_Click"/>
        </div>
    </div>
    </form>
</body>
</html>
