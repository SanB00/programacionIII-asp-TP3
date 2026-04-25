<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3Grupo18.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 109%;
        }

        .auto-style2 {
            width: 122px;
        }

        .auto-style6 {
            width: 249px;
            height: 26px;
        }

        .auto-style7 {
            width: 158px;
            height: 26px;
        }

        .auto-style10 {
            height: 23px;
            width: 122px;
        }
        .auto-style12 {
            height: 24px;
            width: 122px;
        }
        .auto-style17 {
            height: 65px;
            width: 122px;
        }
        .auto-style19 {
            height: 24px;
            width: 158px;
        }
        .auto-style20 {
            height: 65px;
            width: 158px;
        }
        .auto-style21 {
            height: 23px;
            width: 158px;
        }
        .auto-style22 {
            width: 158px;
        }
        .auto-style23 {
            width: 12px;
        }
        .auto-style24 {
            height: 24px;
            width: 12px;
        }
        .auto-style25 {
            height: 65px;
            width: 12px;
        }
        .auto-style26 {
            height: 23px;
            width: 12px;
        }
        .auto-style28 {
            height: 24px;
            width: 249px;
        }
        .auto-style29 {
            height: 65px;
            width: 249px;
        }
        .auto-style30 {
            height: 23px;
            width: 249px;
        }
        .auto-style31 {
            width: 249px;
        }
        .auto-style32 {
            width: 12px;
            height: 26px;
        }
        .auto-style33 {
            width: 122px;
            height: 26px;
        }
        .auto-style34 {
            width: 307px;
        }
        .auto-style35 {
            width: 307px;
            height: 26px;
        }
        .auto-style36 {
            height: 24px;
            width: 307px;
        }
        .auto-style37 {
            height: 65px;
            width: 307px;
        }
        .auto-style38 {
            height: 23px;
            width: 307px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style31">
                        <h3>Localidades</h3>
                    </td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblNombreLocalidad" runat="server" Style="font-weight: 700" Text="Nombre de la localidad"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtLocalidad" runat="server" Width="198px"></asp:TextBox>
                    </td>
                    <td class="auto-style35">
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
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style31">
                        <asp:Button ID="btnGuardarLocalidad" 
                            ValidationGroup="vgLocalidad" 
                            Text="Guardar Localidad" 
                            ToolTip=":)" 
                            runat="server" 
                            Style="font-weight: 700" 
                            Font-Bold="False" 
                            OnClick="btnGuardarLocalidad_Click" 
                            Width="205px" 
                            />
                    </td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style28">
                        <h3>Usuarios</h3>
                    </td>
                    <td class="auto-style36"></td>
                    <td class="auto-style19">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style2">Nombre usuario: </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="txtNombreUsuario" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="auto-style34">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Ingrese un Nombre" Font-Bold="False">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style2">Contraseña: </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="txtContrasena" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="auto-style34">
                        <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContrasena"  ValidationGroup="vgUsuario" ErrorMessage="Debe Ingresar una contrasenia" Font-Bold="False">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style17">Repetir Contraseña: </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txtContrasenaRepetida" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="auto-style37">
                        <asp:RequiredFieldValidator ID="rfvContraseniaRepetida" runat="server" ControlToValidate="txtContrasenaRepetida" ValidationGroup="vgUsuario"  ErrorMessage="Debe Validar la contrasenia" Font-Bold="False">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvContrasenia" runat="server" ControlToCompare="txtContrasenaRepetida"  ValidationGroup="vgUsuario" ControlToValidate="txtContrasena">* Las contraseñas no coinciden</asp:CompareValidator>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style2">Correo Electrónico: </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="txtCorreoElectronico" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="auto-style34">
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ValidationGroup="vgUsuario" ErrorMessage="Debe ingresar un Correo Electronico" Font-Bold="False">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ValidationGroup="vgUsuario" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Correo electronico no valido</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style2">CP Código Postal: </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="txtCodigoPostal" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="auto-style34">
                        <asp:RequiredFieldValidator ID="rfvCodPostal" runat="server" ControlToValidate="txtCodigoPostal" ValidationGroup="vgUsuario"  ErrorMessage="Debe Ingresar un Codigo Postal" Font-Bold="False">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCp" runat="server" ControlToValidate="txtCodigoPostal" ValidationGroup="vgUsuario" ValidationExpression="\d{4}">Codigo postal no valido, debe tener 4 digitos</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style32"></td>
                    <td class="auto-style33">Localidades: </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlLocalidades" runat="server"></asp:DropDownList>
                    </td>
                    <td class="auto-style35">
                        <asp:RequiredFieldValidator
                            ID="rfvLocalidadSeleccionada"
                            runat="server"
                            ControlToValidate="ddlLocalidades"
                            ErrorMessage="Seleccione una Localidad"
                            ValidationGroup="vgUsuario"
                            Display="Dynamic"
                            ForeColor="Red"
                            Font-Bold="False">*</asp:RequiredFieldValidator>
                    <td class="auto-style7">&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style26"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style30"></td>
                    <td class="auto-style38"></td>
                    <td class="auto-style21">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style31">
                        <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" ValidationGroup="vgUsuario" OnClick="btnGuardarUsuario_Click" />
                    </td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnInicio" runat="server" Text="Ir al Inicio" />
                    </td>
                    <td class="auto-style31">
                        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="vgUsuario" runat="server" ShowMessageBox="True" ShowSummary="True" Width="198px" />
                    </td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>

            </table>
        </div>

    </form>
</body>
</html>
