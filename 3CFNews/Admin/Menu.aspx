<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/GirisAdmin.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="_3CFNews.Admin.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    
        #duyme:hover{
            background-color: chartreuse;
                
                color: black;
         
               box-shadow:0 0   16px #fff200;
        }
        #duyme:active{
             background-color: yellow;
                
                color: black;
        }
        .element{
            border-radius:15px; 
            outline:none;
            border:2px solid snow;
            transition:0.3s ease-in-out;
                
        }
         .element:focus {
                transform: scale(1.2);
                border: 2px solid lightblue;
                box-shadow: 0 0 16px lightblue;
            }
        tr:hover {
            background-color: #D3D3D3;
        }

        td:hover {
            background-color: #AFAFAF;
        }
    </style>

    <script>
 function tesdiqle() {

            alert("Məlumat uğurla əlavə olundu ");
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h2>Menu</h2>
    <div class="row p-3 container">
        <div class="col-lg-3">
            <asp:TextBox class="element" ID="TextBox1" runat="server"></asp:TextBox>
        </div>

        <div class="col-lg-3">
            <asp:TextBox class="element" ID="TextBox2" runat="server"></asp:TextBox>
        </div>

        <div class="col-lg-3">
            <asp:TextBox textmode="Number" class="element" ID="TextBox3" runat="server"></asp:TextBox>
        </div>

        <div class="col-lg-3">
            <asp:Button  class="btn btn-success" ID="duyme" runat="server" Text="✔ Təsdiq et" OnClick="duyme_Click" />
        </div>

    </div>
    <br />

    <div class="row container-fluid">
        <table class="table table-bordered">

            <thead>
                <tr>
                    <th>Menu adı</th>
                    <th>Menu URL</th>
                    <th>Menu sıra</th>
                    <th>Düzəliş et</th>
                    <th>Sil</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="RepeatMenu" runat="server" OnItemCommand="RepeatMenu_ItemCommand">
                    <ItemTemplate>

                        <tr>
                            <td><%#Eval("MenuName") %></td>
                            <td><%#Eval("MenuURL") %></td>
                            <td><%#Eval("MenuRow") %></td>

                            <td>
                                <asp:Button  ID="Button1"  runat="server" CssClass="btn btn-warning" Text="✎ Düzəliş et" CommandName="edit" CommandArgument='<%#Eval("MenuID") %>'/>

                            </td>

                            <td>
                                <asp:Button  ID="Button2" runat="server" CssClass="btn btn-danger" Text="⌫ Sil" CommandName="delete" CommandArgument='<%#Eval("MenuID") %>'/>
                            </td>
                        </tr>


                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
  </table>

        </div>

   
</asp:Content>
