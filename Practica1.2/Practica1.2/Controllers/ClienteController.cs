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

        public ActionResult ActualizarPerfil()
        {
            using (var context = new AlaPastaDatabaseEntities())
            {
                int Consecutivo = int.Parse(Session["Consecutivo"].ToString());
                var datos = context.tClientes.Where(x => x.Consecutivo == Consecutivo).FirstOrDefault();
                var cliente = new Cliente();

                if (datos != null)
                {
                    cliente.ID = datos.IdCliente;
                    cliente.Nombre = datos.NombreCliente;
                    cliente.Apellido = datos.ApellidoCliente;
                    cliente.Correo = datos.CorreoCliente;
                    cliente.Telefono = datos.TelCliente;
                }
                return View();
            }

        }

        [HttpPost]

        public ActionResult ActualizarPerfil(Cliente model) 
        {
            using (var context = new AlaPastaDatabaseEntities()) { 
            
                int Consecutivo = int.Parse(Session["Consecutivo"].ToString());
                var respuesta=context.ActualizarPerfil(model.ID, model.Nombre, model.Apellido,model.Correo,model.Telefono,Consecutivo,0);

                if (respuesta > 0)
                {
                    Session["NombreUsuario"] = model.Nombre;
                    return RedirectToAction("Index", "Home");

                }
                ViewBag.MensajePantalla = "Su información no se ha podido actualizar correctamente";

                return View();

            }

        }

    }
}