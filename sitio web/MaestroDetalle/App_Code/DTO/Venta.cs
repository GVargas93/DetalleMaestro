using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DTO
{
public class Venta
{
	public Venta()
	{
		
	}

    public int Venta_id { get; set; }

    public string Fecha { get; set; }

    public int Fk_cliente_id { get; set; }

    public int Total { get; set; }
}

}