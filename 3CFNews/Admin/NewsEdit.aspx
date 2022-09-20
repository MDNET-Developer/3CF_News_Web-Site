<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/GirisAdmin.Master" AutoEventWireup="true" CodeBehind="NewsEdit.aspx.cs" Inherits="_3CFNews.Admin.NewsEdit" ValidateRequest="false" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <%-- Photo show--%>
    <script src="../Scripts/ckeditor/ckeditor.js"></script>
         <script>
          var openFile = function(file) {
    var input = file.target;

    var reader = new FileReader();
    reader.onload = function(){
      var dataURL = reader.result;
      var output = document.getElementById('ContentPlaceHolder1_imgnews');
      output.src = dataURL;
    };
    reader.readAsDataURL(input.files[0]);
  };
    </script>
    <style>
        .col-lg-12{
            margin-bottom:15px;

        } 
        #DDLNewsType {
            transition: transform .2s;
        }

            #DDLNewsType:hover {
               box-shadow:0 0 16px #4666FF;
            }
            .btn{
                  transition: transform .2s;
            }

        .btn:hover {
            -ms-transform: scale(1.2); /* IE 9 */
            -webkit-transform: scale(1.2); /* Safari 3-8 */
            transform: scale(1.2);
        }
        .Fotozoom {
            transition: transform .2s;
           
        }

            .Fotozoom:hover {
                -ms-transform: scale(5.5); /* IE 9 */
                -webkit-transform: scale(5.5); /* Safari 3-8 */
                transform: scale(5.5);
            }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid">
    <div class="row">
        <br />
   
        <div class="col-lg-12 p-1 DDLNewsType">
            <asp:DropDownList ID="DDLNewsType" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
    
        <div class="col-lg-12 p-1">
            <asp:TextBox ID="txtNewsHead" runat="server" CssClass="form-control" placeholder="Xəbərin başlığı"></asp:TextBox>
        </div>
        <div class="col-lg-12 p-1">
            <img src="../Image/fileupload.png" />
          <%--  Main kod--%>
            <asp:Image ID="imgnews" runat="server" />
            <asp:FileUpload ID="fileimg" runat="server" onchange='openFile(event)' />
        </div>

        <div class="col-lg-12 p-1">
            <%--<asp:TextBox ID="tvtNewsText" runat="server" TextMode="MultiLine"></asp:TextBox>--%>
            <CKEditor:CKEditorControl Class="form-control" ID="tvtNewsText" runat="server" placeholder="Xəbər mətni ..."></CKEditor:CKEditorControl>

        </div>
        <div class="col-lg-12 p-1">
            <asp:TextBox ID="txtdate" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
        </div>
        <div class="col-lg-12 p-1">
            <asp:Button ID="btnok" runat="server" Text="Təsdiqlə" CssClass="btn btn-success" OnClick="btnok_Click" />
        </div>
    </div>
    <div class="row">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Sıra nömrəsi</th>
                    <th>Xəbər başlığı</th>
                    <th>Şəkil</th>
                    <th>Xəbərin tarixi</th>
                    <th>Xəbərin oxunma sayi</th>
                    <th>Baxış</th>
                    <th>Dəyiş</th>
                    <th>Sil</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="RPNews" runat="server" OnItemCommand="RPNews_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("sn")%></td>
                            <td><%# Eval("NewsHead")%></td>
                            <td ><img class="Fotozoom" src='..\NewsImage\<%#Eval("NewsFoto")%>' width="70"/></td>
                            <td><%# Eval("NewsDate")%></td>
                            <td><%# Eval("NewsView")%></td>
                            <td>
                                <asp:LinkButton  ID="LinkButton1" runat="server" CommandArgument='<%#Eval("NewsID") %>' CommandName="Baxish" CssClass="btn"><img src="../Image/search_property_40px.png" /></asp:LinkButton></td>
                            <td>
                                <asp:LinkButton  ID="LinkButton2" runat="server" CommandArgument='<%#Eval("NewsID") %>' CommandName="Edit" CssClass="btn"><img src="../Image/edit_property_40px.png" /></asp:LinkButton></td>
                            <td>
                                <asp:LinkButton  ID="LinkButton3" runat="server" CommandArgument='<%#Eval("NewsID") %>' CommandName="Delete" CssClass="btn"><img src="../Image/Delete%20Bin_40px.png" /></asp:LinkButton></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>
        </div>
</asp:Content>
