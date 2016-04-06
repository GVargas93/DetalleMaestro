using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class ProductoBLL
{
	public ProductoBLL()
	{
		
	}

    public static void Insert( string nombre, int precio) {
        ProductoDSTableAdapters.ProductoTableAdapter adapter = new ProductoDSTableAdapters.ProductoTableAdapter();
        adapter.Insert(nombre, precio);
    
        }
    public static void Update(int producto_id, string nombre, int precio) {
        ProductoDSTableAdapters.ProductoTableAdapter adapter = new ProductoDSTableAdapters.ProductoTableAdapter();
        adapter.Update(nombre, precio, producto_id);
    }
    public static void Delete(int producto_id) {
        ProductoDSTableAdapters.ProductoTableAdapter adapter = new ProductoDSTableAdapters.ProductoTableAdapter();
        adapter.Delete(producto_id);
    }
    public static List<Producto> SelectAll() {
        ProductoDSTableAdapters.ProductoTableAdapter adapter = new ProductoDSTableAdapters.ProductoTableAdapter();
        ProductoDS.ProductoDataTable table= adapter.SelectAll();
        List<Producto> listaProductos = new List<Producto>();
        foreach(ProductoDS.ProductoRow row in table)
        {
            listaProductos.Add(RowToDto(row));    
        }
        return listaProductos;
    }


    public static Producto Select(int producto_id) {

        ProductoDSTableAdapters.ProductoTableAdapter adapter = new ProductoDSTableAdapters.ProductoTableAdapter();
        ProductoDS.ProductoDataTable table = adapter.SelectById(producto_id);       
        Producto objProducto  = RowToDto(table[0]);
        return objProducto;
    }

    public static Producto SelectById(int producto_id)
    {

        ProductoDSTableAdapters.ProductoTableAdapter adapter = new ProductoDSTableAdapters.ProductoTableAdapter();
        ProductoDS.ProductoDataTable table = adapter.SelectByIdProducto(producto_id);
        Producto objProducto = RowToDto(table[0]);
        return objProducto;
    }

    private static Producto RowToDto(ProductoDS.ProductoRow row)
    {
        Producto objProducto = new Producto();
        objProducto.Producto_id = row.producto_id;
        objProducto.Nombre = row.nombre;
        objProducto.Precio = row.precio;
        return objProducto;
    }




}