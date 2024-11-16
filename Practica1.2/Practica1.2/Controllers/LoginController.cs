using Practica1._2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;



namespace Practica1._2.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login/InicioSesion
        [HttpGet]
        public ActionResult InicioSesion()
        {
            return View();
        }

        // POST: Login/InicioSesion
        [HttpPost]
        public ActionResult InicioSesion(Cliente model)
        {
            if (string.IsNullOrEmpty((string)model.Identificacion) || string.IsNullOrEmpty((string)model.Contrasenna))
            {
                ViewBag.Error = "Por favor, ingrese su usuario y contraseña.";
                return View();
            }

            using (var context = new AlaPastaDatabaseEntities())
            {
                // Llama al procedimiento almacenado `InicioSesion` para validar las credenciales
                var resultado = context.InicioSesion(model.Identificacion, model.Contrasenna)
                    .FirstOrDefault();

                if (resultado != null)
                {
                    // Credenciales correctas: redirige al Home o dashboard
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    // Credenciales incorrectas: muestra un mensaje de error
                    ViewBag.Error = "Usuario o contraseña incorrectos.";
                }
            }

            return View();
        }

        // GET: Login/Registro
        [HttpGet]
        public ActionResult Registro()
        {
            return View();
        }

        // POST: Login/Registro
        [HttpPost]
        public ActionResult Registro(Cliente model)
        {
            if (ModelState.IsValid)
            {
                using (var context = new AlaPastaDatabaseEntities())
                {
                    // Llama al procedimiento almacenado `RegistroUsuario`
                    context.RegistroUsuario(model.Identificacion, model.Nombre, model.CorreoElectronico, model.Contrasenna);
                }

                return RedirectToAction("InicioSesion", "Login");
            }

            return View(model);
        }

        // GET: Login/RecuperarAcceso
        [HttpGet]
        public ActionResult RecuperarAcceso()
        {
            return View();
        }

        // POST: Login/RecuperarAcceso
        [HttpPost]
        public ActionResult RecuperarAcceso(Cliente model)
        {
            using (var context = new AlaPastaDatabaseEntities())
            {
                var cliente = context.tClientes.FirstOrDefault(x => x.IdCliente == model.Identificacion);

                if (cliente != null)
                {
                    ViewBag.Mensaje = "Se enviaron las instrucciones de recuperación a su correo.";
                    return RedirectToAction("InicioSesion", "Login");
                }
                else
                {
                    ViewBag.Error = "No se encontró un cliente con esa identificación.";
                }
            }

            return View();
        }
    }
}

