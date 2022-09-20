<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInn.aspx.cs" Inherits="_3CFNews.Admin.LogInn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
     <link rel="icon" href="Image/1606411452556.png" />
</head>
<body>
    <form id="form1" runat="server">
  

             <style>
        body {
            background: url(https://centerforearthethics.org/wp-content/uploads/2018/09/CEE-Resources_Background.jpg);
            background-size: cover;
        }

        div {
            text-align: center;
            padding: 10px;
            margin: 5px;
        }

        #duyme {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            font-size: 30px;
            border: none;
            border-radius: 15px;
            cursor: pointer;
            width: 4.5cm;
            height: 1cm;
            outline: none;
            font-family: 'Times New Roman';
            
            transition-property:width color;
            transition: 0.5s;
        }
             #duyme:hover {
                background-color: chartreuse;
                width: 3.5cm;
                color: black;
            }

             #duyme:active {
                background-color: yellow;
                width: 3.5cm;
                color: black;
            }

        #Qeydiyyat {
            border: 3px solid black;
            border-radius: 5px;
            width: 8cm;
            height: 11cm;
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
        }

            .element:focus {
                width: 7cm;
                border: 2px solid green;
                box-shadow: 0 0 16px lightgreen;
            }

        .Elave {
            text-decoration-line: none;
            color: black;
            cursor:pointer;
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

        
    </style>

      <%--  <script>
function myFunction() {
 document.getElementById("anima");
}
</script>
<div id="anima" class="spinner-border spinner-border-sm"></div>--%>

       <%-- Show password JS code--%>


        <script>
        function myFunction() {
  var x = document.getElementById("TextBox2");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}

//Bilridis mesaji
        function mesaj() {

            alert("Yazdığınız istifadəçi adı vəya şifrəniz doğru deyil. Zəhmət olmasa dəqiqləşdirdikdən sonra daxil olmağa cəhd edin. Əgər siz istifadəçi şifrəsini unutmusuzsa aşğıda Şifrəni unutmusuz ? düyməsinə daxil olub şifrəni bərpa eliyə bilərsiz");
        }

    </script>

        <script src="https://www.gstatic.com/charts/loader.js"></script>
      


        <div class="container">
            <div id="Qeydiyyat">
                <h2>Log in</h2>

             <%-- User Name Box--%>
                <asp:TextBox  placeholder="Istifadəçi adı" class="element" ID="TextBox1" runat="server"></asp:TextBox>
                <br />
           <%-- User Password Box--%>
                <asp:TextBox placeholder="Şifrə" class="element" ID="TextBox2" runat="server" type="password"  ></asp:TextBox> <img id="goz" onclick="myFunction()" style="cursor:pointer;margin-right:-18px;" src="../Image/eye_20px.png" />
                <br />
               <%-- Log in button--%>
               
                <asp:Button style="font-size: 15px" ID="duyme" runat="server" Text="Daxil ol" OnClick="duyme_Click" />
                <br />
  
                <br />
                <hr />
           
                    <%--     Forgot Password button--%>
                <label class="Elave">Şifrəni unutmusuz ?</label>
                <label> / </label>
                <%--Make Regestration Button--%>
                <a style="cursor:pointer" target="_blank" class="Elave" href="SignUp.aspx">Qeydiyyatdan keç<br /></a>
         
                
              
            </div>
        </div>




    </form>
</body>
</html>
