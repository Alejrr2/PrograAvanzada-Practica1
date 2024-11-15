using Practica1._2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Practica1._2.Controllers
{
    public class ClienteController : Controller
    {
        [HttpGet]

        public ActionResult ActualizarPerfil(long q)
        {
            using (var context = new AlaPastaDatabaseEntities())
            {

                var datos = context.tClientes.Where(x => x.Consecutivo == q).FirstOrDefault();
                var cliente = new Cliente();

                if (datos != null)
                {
                    cliente.Consecutivo=datos.Consecutivo;
                    cliente.ID = datos.IdCliente;
                    cliente.Nombre = datos.NombreCliente;
                    cliente.Apellido = datos.ApellidoCliente;
                    cliente.Correo = datos.CorreoCliente;
                    cliente.Telefono = datos.TelCliente;
                }
                return View(cliente);
            }

        }

        [HttpPost]

        public ActionResult ActualizarPerfil(Cliente model) 
        {
            using (var context = new AlaPastaDatabaseEntities()) { 
            
                var datos=context.tClientes.Where(x=>x.Consecutivo==model.Consecutivo).FirstOrDefault();

                if (datos != null)
                {
                    datos.NombreCliente = model.Nombre;
                    datos.ApellidoCliente=model.Apellido;
                    datos.CorreoCliente=model.Correo;
                    datos.TelCliente=model.Telefono;

                    var respuesta=context.SaveChanges();

                    if (respuesta > 0)
                    {
                        return RedirectToAction("Index", "Home");
                    }
                }
                ViewBag.MensajePantalla = "Su información no se ha podido actualizar correctamente";

                return View();

            }

        }

    }
}