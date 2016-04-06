<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertVenta.aspx.cs" Inherits="InsertVenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <asp:Label Text="Fecha:" runat="server" />
        </div>
        <div>
            <asp:TextBox runat="server" ID="txtFecha" />
        </div>
        <div>
            <asp:Label Text="Total:" runat="server" />
        </div>
        <div>
            <asp:TextBox runat="server" ID="txtTotal" />
        </div>
        <div>
            <asp:Button Text="Insertar" runat="server" ID="btnInsertarVenta" OnClick="btnInsertarVenta_Click"/>
        </div>
    </div>
    </form>
</body>
</html>
