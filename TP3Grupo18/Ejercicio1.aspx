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
            width: 240px;
        }

        .auto-style3 {
            width: 244px;
        }

        .auto-style4 {
            width: 71px;
        }

        .auto-style5 {
            width: 240px;
            height: 26px;
        }

        .auto-style6 {
            width: 244px;
            height: 26px;
        }

        .auto-style7 {
            width: 71px;
            height: 26px;
        }

        .auto-style8 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblLocalidadesTitulo" runat="server" Style="font-weight: 700" Text="Localidades"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblLocalidades" runat="server" Style="font-weight: 700" Text="Nobre de la localidad"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtProducto1" runat="server" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <br />
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" Style="font-weight: 700" Text="GuardarLocalidad" Font-Bold="False" ToolTip=":)" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
