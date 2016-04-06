<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ventas.aspx.cs" Inherits="Ventas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="cliente">
        <div>
            <asp:TextBox runat="server" ID="txtId" />
        </div>
        <div>
            <asp:Label Text="Nit:" runat="server" />
        </div>
        <div>
            <asp:TextBox runat="server" ID="txtNit" />
        </div>
        <div>
            <asp:Label Text="Nombre:" runat="server" />
        </div>
        <div>
            <asp:TextBox runat="server" ID="txtNombre" AutoPostBack="False" />
            <asp:Button ID="btnNit" runat="server" Text="Buscar CLiente" OnClick="buscarCliente" />
        </div>

    </div>

    <div class="productos">
        <div>
            <asp:Label Text="Producto:" runat="server" />
        </div>
        <div>
            <asp:TextBox runat="server" ID="txtProducto" AutoPostBack="False" />
            <asp:Button ID="btnProducto" runat="server" Text="Buscar Producto" OnClick="buscarProductos" />
        </div>

    </div>

    <div class="tablaDatos">
        <asp:Table ID="tablaProductos" runat="server">
            <asp:TableRow ID="TableRow1" Runat="server" Font-Bold="True" ForeColor="Black" BackColor="Silver">
              <asp:TableHeaderCell>Nit</asp:TableHeaderCell>
              <asp:TableHeaderCell>Nombre Producto</asp:TableHeaderCell>
              <asp:TableHeaderCell>Cantidad</asp:TableHeaderCell>
              <asp:TableHeaderCell>Precio</asp:TableHeaderCell>
              <asp:TableHeaderCell>Subtotal</asp:TableHeaderCell>
           </asp:TableRow>
        </asp:Table>
    </div>
    <div>
        <asp:Button ID="btnGuardarDAtos" runat="server" Text="Guardar Datos" OnClick="guardarDatos" />
    </div>
    </form>
</body>
</html>
