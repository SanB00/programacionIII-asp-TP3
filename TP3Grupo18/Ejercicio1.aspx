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

        .auto-style2 {
            width: 152px;
        }

        .auto-style3 {
            width: 124px;
        }

        .auto-style4 {
            width: 71px;
        }

        .auto-style6 {
            width: 124px;
            height: 26px;
        }

        .auto-style7 {
            width: 71px;
            height: 26px;
        }

        .auto-style9 {
            width: 107px;
        }

        .auto-style10 {
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
            width: 124px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <h3>Localidades</h3>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblNombreLocalidad" runat="server" Style="font-weight: 700" Text="Nombre de la localidad"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtLocalidad" runat="server" Width="198px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
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
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
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
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <h3>Usuarios</h3>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Nombre usuario: </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtNombreUsuario" runat="server" Width="198px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombreUsuario">Ingrese Nombre</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Contraseña: </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtContrasena" runat="server" Width="198px"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Repetir Contraseña: </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtContrasenaRepetida" runat="server" Width="198px"></asp:TextBox></td>
                    <td>
                        <asp:CompareValidator ID="cvContrasenia" runat="server" ControlToCompare="txtContrasenaRepetida" ControlToValidate="txtContrasena">Las contraseñas no coinciden</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Correo Electrónico: </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCorreoElectronico" runat="server" Width="198px"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>CP Código Postal: </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCodigoPostal" runat="server" Width="198px"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Localidades: </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlLocalidades" runat="server"></asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" OnClick="btnGuardarUsuario_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnInicio" runat="server" Text="Ir al Inicio" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

            </table>
        </div>

    </form>
</body>
</html>
