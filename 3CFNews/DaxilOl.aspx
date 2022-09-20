<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DaxilOl.aspx.cs" Inherits="_3CFNews.DaxilOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <style>
                 body {
                    background-image: url(https://i.pinimg.com/originals/e5/79/96/e5799698e1255e1dfefd6c87b4fa8244.jpg);
                    background-size:cover;
                    margin:0;
                    padding:0;
                }
                 #loginbox{
                    position:absolute;
                    top:50%;
                    left:50%;
                    transform:translate(-50%,-50%);
                    background-color:goldenrod;
                    width:350px;
                    height:450px;
                    opacity:0.8;
                }
                 .texbox {
                    width: 300px;
                    height: 50px;
                    outline: none;
                    margin: 22px;
                    transition:0.3s ease;
                }
                .texbox:hover{
                transform: scale(0.9);
                    outline: none;
                    border:1px solid #1e90ff;
                 box-shadow:0 0 16px black;
                }
                  .btn{
                     width: 300px;
                    height: 40px;
                    outline: none;
                    margin: 22px;
                    text-align:center;
                    font-size:22px;
                       
                }
                  #goz{
                      color:snow;
                  }
                   #goz:hover{
                       transition:0.3s linear;
                    color:#e84118;
                }
                .FooterLogin{
                    transition:0.3s linear;
                      color:snow;
                      cursor:pointer;
                }
                .FooterLogin:hover{
                    color:#e84118;
                }
            </style>
                <div id="loginbox">
                    <h1 style="color: snow; text-align: center"> - Daxil ol - </h1>
                    <asp:TextBox placeholder=" 👦 İstifadəçi adı" class="texbox" ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:TextBox placeholder=" 🔒 Şifrə" class="texbox" ID="TextBox2" type="password" runat="server"></asp:TextBox>
                    <label onclick="myFunction()" style="margin-left: 20px; cursor: pointer">
                    <img src="Image/ShowPass.png" /><a id="goz">Şifrəni göstər</a></label>
                    <asp:LinkButton OnClick="LinkButton1_Click"  ID="LinkButton1" class="btn btn-success" runat="server">Daxil ol</asp:LinkButton>
                
                    <a class="FooterLogin" style="float: left; margin-left: 22px">Şifrəni unutmusuz ?</a>
                    <a href="Qeydiyyat.aspx" data-toggle="modal" data-target="#myModal" class="FooterLogin" style="float: right; margin-right: 22px;">Qeydiyyatdan keç</a>
            </div>
        </div>
        <script> function myFunction() {
  var x = document.getElementById("TextBox2");
  if (x.type === "password") {
    x.type = "text";

  } else {
    x.type = "password";
  }
}


        function mesaj() {

            alert("Yazdığınız şifrə və istifadəçi adı doğru deyil. Zəhmət olmasa dəqiqləşdirdikdən sonra daxil olmağa keçməyə cəhd edin. Əgər şifrəni unutmusuzsa aşağı hissədə olan  /Şifrəni unutmusuz ?/ düyməsinə tıklayıb şifrənu bərpa eliyə bilərsiz. ");
        }
     
 </script>
    </form>
</body>
</html>
