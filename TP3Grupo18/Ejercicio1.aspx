<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3Grupo18.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .colBordes {
            width: 15%;
        }
        .colCampos {
            width: 25%;
        }
        .colValidacion {
            width: 35%;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">


        <div>
            <table class="auto-style1">
                <tr>
                    <td class="colBordes">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colCampos">
                        <h3>Localidades</h3>
                    </td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colCampos">
                        <asp:Label ID="lblNombreLocalidad" runat="server" Style="font-weight: 700" Text="Nombre de la localidad"></asp:Label>
                    </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtLocalidad" runat="server" Width="198px"></asp:TextBox>
                    </td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator
                            ID="rfvLocalidad"
                            runat="server"
                            ControlToValidate="txtLocalidad"
                            ErrorMessage="La localidad es un campo requerido"
                            ValidationGroup="vgLocalidad"
                            Display="Dynamic"
                            ForeColor="Red" />

                        <asp:RegularExpressionValidator
                            ID="revLocalidad"
                            runat="server"
                            ValidationGroup="vgLocalidad"
                            ControlToValidate="txtLocalidad"
                            Display="Dynamic"
                            ForeColor="Red" />
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colCampos">
                        <asp:Button ID="btnGuardarLocalidad"
                            ValidationGroup="vgLocalidad"
                            Text="Guardar Localidad"
                            ToolTip=":)"
                            runat="server"
                            Style="font-weight: 700"
                            Font-Bold="False"
                            OnClick="btnGuardarLocalidad_Click"
                            Width="205px" />
                    </td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes "></td>
                    <td class="colCampos"></td>
                    <td class="colCampos">
                        <h3>Usuarios</h3>
                    </td>
                    <td class="colValidacion"></td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colCampos">Nombre usuario: </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtNombreUsuario" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Ingrese un Nombre" Font-Bold="False">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colCampos">Contraseña: </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtContrasena" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContrasena" ValidationGroup="vgUsuario" ErrorMessage="Debe Ingresar una contrasenia" Font-Bold="False">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes "></td>
                    <td class="colCampos">Repetir Contraseña: </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtContrasenaRepetida" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator ID="rfvContraseniaRepetida" runat="server" ControlToValidate="txtContrasenaRepetida" ValidationGroup="vgUsuario" ErrorMessage="Debe Validar la contrasenia" Font-Bold="False">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvContrasenia" runat="server" ControlToCompare="txtContrasenaRepetida" ValidationGroup="vgUsuario" ControlToValidate="txtContrasena">* Las contraseñas no coinciden</asp:CompareValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colCampos">Correo Electrónico: </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtCorreoElectronico" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ValidationGroup="vgUsuario" ErrorMessage="Debe ingresar un Correo Electronico" Font-Bold="False">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ValidationGroup="vgUsuario" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Correo electronico no valido</asp:RegularExpressionValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colCampos">CP Código Postal: </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtCodigoPostal" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator ID="rfvCodPostal" runat="server" ControlToValidate="txtCodigoPostal" ValidationGroup="vgUsuario" ErrorMessage="Debe Ingresar un Codigo Postal" Font-Bold="False">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCp" runat="server" ControlToValidate="txtCodigoPostal" ValidationGroup="vgUsuario" ValidationExpression="\d{4}">Codigo postal no valido, debe tener 4 digitos</asp:RegularExpressionValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes "></td>
                    <td class="colCampos">Localidades: </td>
                    <td class="colCampos">
                        <asp:DropDownList ID="ddlLocalidades" runat="server"></asp:DropDownList>
                    </td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator
                            ID="rfvLocalidadSeleccionada"
                            runat="server"
                            ControlToValidate="ddlLocalidades"
                            ErrorMessage="Seleccione una Localidad"
                            ValidationGroup="vgUsuario"
                            Display="Dynamic"
                            ForeColor="Red"
                            Font-Bold="False">*</asp:RequiredFieldValidator>
                        <td class="colBordes">&nbsp;</td>
                </tr>

                <tr>
                    <td class="colBordes "></td>
                    <td class="colCampos"></td>
                    <td class="colCampos"></td>
                    <td class="colValidacion"></td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colCampos">
                        <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" ValidationGroup="vgUsuario" OnClick="btnGuardarUsuario_Click" />
                    </td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colCampos">
                        <asp:Button ID="btnInicio" runat="server" Text="Ir al Inicio" />
                    </td>
                    <td class="colCampos">
                        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="vgUsuario" runat="server" ShowMessageBox="True" ShowSummary="True" Width="198px" />
                    </td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>

            </table>
        </div>

    </form>
</body>
</html>
