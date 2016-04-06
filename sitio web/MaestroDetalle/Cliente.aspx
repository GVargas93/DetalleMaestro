<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <a href="InsertCliente.aspx">Insertar Cliente</a>
    <form id="form1" runat="server">
    <div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="odsCliente">
                <Columns>
                    <asp:BoundField DataField="Cliente_id" HeaderText="Cliente_id" SortExpression="Cliente_id"></asp:BoundField>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                    <asp:BoundField DataField="Nit" HeaderText="Nit" SortExpression="Nit"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource runat="server" ID="odsCliente" SelectMethod="SelectAll" TypeName="ClienteBLL"></asp:ObjectDataSource>
        </div>
    </div>
    </form>
</body>
</html>
