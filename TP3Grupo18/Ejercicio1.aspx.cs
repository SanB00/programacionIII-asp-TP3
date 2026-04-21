using System;
using System.Data;

namespace TP3Grupo18
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void btnGuardarLocalidad_Click(object sender, EventArgs e) {
            #region 1) Preparar variables y limpiar inputs
            String strLocalidad = Common.eliminarEspaciosDelTexto(txtLocalidad.Text);
            #endregion

            #region 2) Validar campos
            string msgDeErrores = String.Empty;
            if (string.IsNullOrEmpty(strLocalidad)) { msgDeErrores += "\n * La localidad no debe tener espacios o quedar en blanco."; }
            if (!Common.estaElTextoDentroDelRango(strLocalidad)) { msgDeErrores += $"\n * La localidad debe tener entre {Common.MIN_CHARS_TEXTO} y {Common.MAX_CHARS_TEXTO} caracteres."; }
            if (!string.IsNullOrEmpty(msgDeErrores)) {
                Common.mostrarMensajeEnAlerta(msgDeErrores, this);
                return;
            }
            #endregion

            #region 3) Cargar listado de localidades
            #endregion

            #region 4) Limpiar campos después de cargar la tabla
            this.btnLimpiar_Click(this, e);
            #endregion
        }

        protected void btnLimpiar_Click(object sender, EventArgs e) {
            txtLocalidad.Text = string.Empty;
        }
    }
}