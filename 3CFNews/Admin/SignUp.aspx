<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="_3CFNews.Admin.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Qeydiyyat</title>
    <link rel="icon" href="Image/1606411452556.png" />
</head>
      
<body>
    <form id="form1" runat="server">
          <link rel="icon" href="Image/1606411452556.png" />
        <div>

             <style>
        body {
            background: url(https://i.pinimg.com/originals/04/ef/5e/04ef5e1743f2123165f573616c533885.jpg);
            background-size: cover;
        }

        div {
            text-align: center;
            padding: 10px;
            margin: 5px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            font-size: 30px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            width: 4.5cm;
            height: 1cm;
            outline: none;
            font-family: Arial;
            font-size: 10px;
            transition-property : font-size , width , background-color , color;
            transition:  0.5s ease;
        }
            button:hover {
                background-color: chartreuse;
                width: 5cm;
                color: black;
               font-size:15px;
               box-shadow:0 0   16px #fff200;
             
            }

            button:active {
                background-color: yellow;
                width: 5cm;
                color: black;
            }

        #Qeydiyyat {
            border: 3px solid black;
            border-radius: 5px;
            width: 8cm;
            height: 13.2cm;
            align-items: center;
            margin-left: 13cm;
            margin-bottom: 10cm;
            background-color: rgb(128, 128, 128,0.5);
            box-shadow: 0 0 16px snow;
       
        }

        .element {
            margin-bottom: 1cm;
            padding-bottom: 10px;
            outline: none;
            border-radius: 15px;
            border: none;
            width: 5cm;
            transition: width 0.4s ease-in-out;
            font-size:14px;
            padding-left:10px;
            padding-top:3px;
        }

            .element:focus {
                width: 7cm;
                border: 2px solid green;
                box-shadow: 0 0 16px #27fa00;
            }

        .Elave {
            text-decoration-line: none;
            color: black;
        }

            .Elave:hover {
                cursor: pointer;
                color: #0652DD;
            }

            .Elave:active {
                cursor: pointer;
                color: #EE5A24;
            }

                 .Elave .tooltiptext {
                     visibility: hidden;
                     position: absolute;
                     background-color: rgb(255,124,0,0.6);
                     color: #fff;
                     text-align: center;
                     border-radius: 10px;
                     padding: 4px 0.8cm 4px 0.8cm;
                     opacity: 0;
                     transition: 2s;
                     text-align: center;
                     bottom: 6cm;
                     margin-left: -10px;
                 }

            .Elave:hover .tooltiptext {
                visibility: visible;
                opacity: 1;
            }
             .sosial{
               transition: 0.4s;
             }
                .sosial:hover{
                     -ms-transform: scale(1.3); /* IE 9 */
                -webkit-transform: scale(1.3); /* Safari 3-8 */
                transform: scale(1.3);
                }


    </style>


        <div class="container">
            <div id="Qeydiyyat">
                <h2> - Sign Up - </h2>

             <%-- Full Name--%>
                
                <asp:TextBox  placeholder="Tam ad" class="element" ID="TextBox1" runat="server"></asp:TextBox>
                <br />
           <%-- User Name--%>
                <asp:TextBox placeholder="İstifadəçi adı" class="element" ID="TextBox2" runat="server" type="text"  ></asp:TextBox>
                <br />

                 <%-- Password--%>
                <asp:TextBox placeholder="Şifrə" class="element" ID="TextBox3" runat="server" type="password"  ></asp:TextBox>
                <br />

                 <%-- RePassword--%>
                <asp:TextBox placeholder=" Təkrar Şifrə" class="element" ID="TextBox4" runat="server" type="password"  ></asp:TextBox>
                <br />

                 <%-- Email--%>
                <asp:TextBox placeholder="e-mail" class="element" ID="TextBox5" runat="server"  type="email"  ></asp:TextBox>
                <br />


               <%-- Log in button--%>
                <button type="submit" id="duyme"><strong style="font-size: 15px">Qeydiyyatdan keç</strong></button><br />
      
                <hr />
                <div style="word-spacing:20px">
                    <img class="sosial" style="cursor: pointer" src="../Image/facebook_40px.png" />
                    <img  src="../Image/ampersand_30px.png" />
                    <img class="sosial" style="cursor: pointer" src="../Image/google_40px.png" />
                </div>
            </div>
        </div>


        </div>
    </form>
</body>
</html>
