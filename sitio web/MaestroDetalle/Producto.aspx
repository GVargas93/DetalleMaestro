<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Producto.aspx.cs" Inherits="MaestroDetalle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type='text/javascript' src='js/jquery.min.js'></script>
	<script type='text/javascript' src='js/jquery.easing.1.3.js'></script> 
	<script type='text/javascript' src='js/bootstrap.min.js'></script>
	<script type='text/javascript' src='js/camera.min.js'></script>   

	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/bootstrap.min.css"> 
	<link rel="stylesheet" href="css/camera.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <a href="InsertProducto.aspx">Insertar Producto</a>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <form id="form1" runat="server">
                <div>
                    <asp:GridView ID="grvProducto" runat="server" AutoGenerateColumns="False" DataSourceID="odsProducto">
                        <Columns>
                            <asp:BoundField DataField="Producto_id" HeaderText="Producto_id" SortExpression="Producto_id" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <a href="ActualizarProducto.aspx?Producto_id=<%# Eval("Producto_id") %>">Actualizar</a>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton Text="Eliminar" CommandArgument='<%# Eval("Producto_id") %>' OnClick="btnEliminar_Click" ID="btnEliminar" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                    <asp:ObjectDataSource ID="odsProducto" runat="server" SelectMethod="SelectAll" TypeName="ProductoBLL"></asp:ObjectDataSource>
                </div>
                </form>
            </div>
         </div>
    </div>
</body>
</html>
