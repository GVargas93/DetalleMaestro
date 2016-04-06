using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DTO { 
    public class Producto
    {
	    public Producto()
	    {

	    }

        public int Producto_id { get; set; }
        public string Nombre { get; set; }
        public int Precio { get; set; }
    }
}