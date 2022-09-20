<%@ Page Title="" Language="C#" MasterPageFile="~/Master3CF.Master" AutoEventWireup="true" CodeBehind="AnaSehife.aspx.cs" Inherits="_3CFNews.AnaSehife" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style>
         .figur {
            transition: .5s ease;
        }

            .figur:hover {
                cursor: pointer;
                -ms-transform: scale(0.9); /* IE 9 */
                -webkit-transform: scale(0.9); /* Safari 3-8 */
                transform: scale(0.9);
                box-shadow: 0 0 16px black;
                border-radius: 30px;
            }

        hr{
            border: 15px solid orange;
        }


        #portfolio .col-md-3 {

    text-align: center;
}

#portfolio h3 {
    font-size: 20px;
    font-weight:300;
}

#portfolio .glyphicon glyphicon-zoom-in {
    margin-bottom: 20px;
}

#portfolio p {
    font-size: 17px;
    font-weight: 300;
}

.img-fluid {
    height: 250px;
    width: 100%;
}

.imageContainer {
    position: relative;
    cursor: pointer;
}

.imageOverlay {
    position: absolute;
    top: 0;
    bottom: 0;
    right: 0;
    left: 0;
    height: 100%;
    width: 100%;
    background-color: rgb(128, 128, 128,0.5);
    /*opacity: 0;*/
    -webkit-transform: scale(0);
  -ms-transform: scale(0);
  transform: scale(0);
  -webkit-transition: .3s ease;
  transition: .3s ease;
    /*transition: 1s ease;*/
}

.imageContainer:hover .imageOverlay {
    /*opacity: 0.7;*/
      -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
}

.imageText {
    color: black;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-size:50px;
}
        #ModalAll{
            background-color:rgba(0,0,0,0.7);
        }
         #ModalAll2{
            background-color:rgba(0,0,0,0.7);
        }
                .modaltextbox{
                     width: 550px;
                    height: 50px;
                    outline: none;
                    margin: 22px;
                    transition:0.3s ease;
                }
                .modaltextbox:hover {
                       transform: scale(0.9);
                    outline: none;
                    border:1px solid #1e90ff;
                 box-shadow:0 0 16px snow;
                }
                .FooterLogin{
                    transition:0.3s linear;
                      color:snow;
                      cursor:pointer;
                }
                .FooterLogin:hover{
                    color:#ffa502;
                }
                #ModalSubmitbtn{
                    width:auto;
                }
                @media screen and (max-width: 768px) {
                    #Basliq{
                        display:none;
                    }
                      .modaltextbox{
                          width:400px;
                      }
                }
                 .card{
                background-color: white;
                transform: scale(0.9);
                transition: .3s linear;
            }
            .card:hover{
                -ms-transform: scale(1); /* IE 9 */
            -webkit-transform: scale(1); /* Safari 3-8 */
            transform: scale(0.8);
            box-shadow: 0 0 16px black;
            background-color:goldenrod;
               
            }
    </style>
   

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>
    $(document).ready(function(){
  $(".Ana").click(function(){
    $(".fotohide").toggle(500);
  });</script>

    <div class="container"> 
        <div class="col-lg-12 ">
                            <div style="float:right">
                                <a data-toggle="modal" data-target="#myModal2"  ID="DaxilOlBTN" class="btn btn-warning" runat="server"><img src="Image/DaxilOl35.png" />Daxil ol</a>
                                <a data-toggle="modal" data-target="#myModal" ID="QeydiyyatBTN" class="btn btn-warning" runat="server"><img src="Image/Qeydiyyat35.png" />Qeydiyyatdan keç</a>
                            </div>
        <div class="modal fade" id="myModal" >
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div id="ModalAll" class="modal-content">
                            <div class="modal-header">
                                <button class="close" data-dismiss="modal" style="color:snow; font-size:44px">&times;</button>
                                <h1 style="color:snow" class="modal-title">Qeydiyyatdan keç ✍</h1>
                            </div>
                            <div class="modal-body">
                                <asp:TextBox class="modaltextbox" placeholder=" 👦 İstifadəçi adı" ID="txtUser" runat="server"></asp:TextBox>
                                 <asp:TextBox class="modaltextbox" placeholder=" ✉ Elektron poçt" ID="txtMail" type="email" runat="server"></asp:TextBox>
                                 <asp:TextBox class="modaltextbox" placeholder=" 🔒 Şifrə" ID="txtPass" type="password" runat="server"></asp:TextBox>
                                 <asp:TextBox class="modaltextbox" placeholder=" 🔒 Təkrar Şifrə" ID="xtxRePass" type="password" runat="server"></asp:TextBox>
                            </div>
                            <div class="modal-footer">
                                <asp:LinkButton OnClick="ModalSubmitbtn_Click" ID="ModalSubmitbtn" class="btn btn-success"  runat="server"> ✔ Təsdiqlə</asp:LinkButton>
                               
                            </div>
                        </div>

                    </div>
                </div>
         <div class="modal fade" id="myModal2" >
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div id="ModalAll2" class="modal-content">
                            <div class="modal-header">
                                <button class="close" data-dismiss="modal" style="color:snow; font-size:44px">&times;</button>
                                <h1 style="color:snow" class="modal-title">Daxil ol 👨</h1>
                            </div>
                            <div class="modal-body">
                                <asp:TextBox class="modaltextbox" placeholder=" 👦 İstifadəçi adı" ID="TextBox1" runat="server"></asp:TextBox>
                                <asp:TextBox class="modaltextbox" placeholder=" 🔒 Şifrə" ID="TextBox7" type="password" runat="server"></asp:TextBox>
                                <label onclick="showpassword()" style="margin-left: 20px; cursor: pointer">
                                <img src="Image/GosterSifre.png" /><a style="color:snow" id="goz">Şifrəni göstər</a></label>
                            </div>
                            
                            <div class="modal-footer">
                                <asp:LinkButton OnClick="DaxilOl_Click" ID="LinkButton1" class="btn btn-success"  runat="server">➤ Daxil ol</asp:LinkButton>
                               
                            </div>
                        </div>

                    </div>
                </div>
                        </div></div>
    
<div class="container" style="position:relative">  
    <h1 style="cursor:pointer" class="Ana">Ana səhifə</h1>

          
    <div class="fotohide">
                            <br />
                          <div id="myCarousel" class="carousel slide" style="width:60%; height:13cm;margin-left:5cm" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <asp:Repeater ID="RpSlideIndicator" runat="server">
                                    <ItemTemplate>
                                        <li data-target="#myCarousel" data-slide-to="0" class="<%#Eval("slideshow") %>"></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" style="width:100%; height:13cm;">
                                <asp:Repeater ID="RpSlideInner" runat="server">
                                    <ItemTemplate>
                                        <div style="width:100%; height:10cm; position:relative" class="item <%#Eval("slideshow") %>" >
                                            <img style="width:100%; height:13cm; position:relative" src="slide/<%#Eval("slideurl") %>" alt="<%#Eval("slideName") %>">
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>

                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                              <span class="glyphicon glyphicon-chevron-left"></span>
                              <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                              <span class="glyphicon glyphicon-chevron-right"></span>
                              <span class="sr-only">Next</span>
                            </a>
                          </div>
                        </div>
                        </div>
    <div class="container">
    <div class="col-lg-12">
        <h1>Xəbər Portalı</h1>
        <div class="col-lg-12" style="height:0.2cm; width:100%; background-color:goldenrod"></div>
        <br />
        <div class="row">
        <a href="Xeberler.aspx?p=7"><div class="col-md-4 figur" style="background-image:url(https://img.okezone.com/content/2021/02/16/261/2362801/total-9-pemain-absen-di-laga-barcelona-vs-psg-siapa-saja-k5mukZfeEc.jpg);width:11cm;height:5cm;background-size:cover;font-size:35px;border-radius:10px;margin:10px;color:snow">Idman</div></a>
        <a href="Xeberler.aspx?p=8"><div class="col-md-4 figur" style="background-image:url(https://qymatix.de/wp-content/uploads/2017/02/facts-sales-B2B.png);width:9cm;height:5cm;background-size:cover;font-size:35px;border-radius:10px;margin:10px;color:snow">Maraqlı</div></a>
        <a href="Xeberler.aspx?p=9"><div class="col-md-4 figur" style="background-image:url(https://www.turizmgunlugu.com/wp-content/uploads/2017/12/seyahat-vizyon-turizm-696x420.jpg);width:8.5cm;height:5cm;background-size:cover;font-size:35px;border-radius:10px;margin:10px;color:black">Turizm</div></a>
        <a href="Xeberler.aspx?p=1"><div class="col-md-4 figur" style="background-image:url(https://kafkazh.com/wp-content/uploads/2020/07/dunya_iqtisadiyyati.jpg);width:7cm;height:5cm;background-size:cover;font-size:35px;border-radius:10px;margin:10px;color:black">Iqtisadi</div></a>
        <a href="Xeberler.aspx?p=6"><div class="col-md-4 figur" style="background-image:url(https://abroads.eu/wp-content/uploads/2015/09/mundo-banderas.png);width:11cm;height:5cm;background-size:cover;font-size:35px;border-radius:10px;margin:10px;color:black">Siyasi</div></a>
        <a href="Xeberler.aspx?p=5"><div class="col-md-4 figur" style="background-image:url(https://wallpaperaccess.com/full/2766359.jpg);width:10.5cm;height:5cm;background-size:cover;font-size:35px;border-radius:10px;margin:10px;color:snow">Kriminal</div></a>
        <a href="Xeberler.aspx?p=3"><div class="col-md-4 figur" style="background-image:url(https://i.pinimg.com/originals/90/fc/87/90fc873b81ebb9497ce1999d372334e5.jpg);width:17cm;height:5cm;background-size:cover;font-size:35px;border-radius:10px;margin:10px;color:snow">Şou-biznes</div></a>
        <a href="Xeberler.aspx?p=4"><div class="col-md-4 figur" style="background-image:url(https://baku.ws/uploads/posts/2018-12/1545799763_15457355562186859602_1000x669.jpg);width:12cm;height:5cm;background-size:cover;font-size:35px;border-radius:10px;margin:10px;color:black">Hadisə</div></a>
        </div>
    </div>
        <br />
         <div class="col-lg-12" style="height:auto; background-color:#ededed">
            <h1>Turizm</h1>
        <p  style="height:0.2cm; width:100%; background-color:goldenrod"></p>
        <asp:Repeater ID="RpTurizm" runat="server">
                        <ItemTemplate>
                              <div class="col-md-4 card" style=" border-radius: 10px;  cursor: pointer;  height: 280px;">
                                    <br />
                                    <div>
                                        <a href="Xeberler.aspx?newsid=<%#Eval("NewsID") %>" style="text-decoration: none; color: black;">
                                            <img class="card-img-top" src="Image/<%#Eval("NewsFoto") %>" style="width: 250px; height: 170px;margin-left:50px;" alt="Card image cap">

                                            <div class="card-body">
                                                <h5 class="card-title text-center"><%#Eval("NewsHead") %></h5>
                                                <div class="row">
                                                    <div class="date-part">
                                                        <span style="float: left; margin-left: 10px; font-family: Arial;"><img src="Image/clock_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:HH:MM}") %></span>
                                                        <span style="float: right; margin-right: 10px; font-family: Arial;"><img src="Image/calendar_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:dd/MM/yyyy}")  %></span>
                                                    </div>
                                                </div>

                                            </div>
                                            <br />
                                        </a>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
        </div>
        <br />
        <div class="col-lg-12" style="height:auto; background-color:#ededed">
            <h1>Şou-biznes</h1>
        <p  style="height:0.2cm; width:100%; background-color:goldenrod"></p>
        <asp:Repeater ID="RpSou" runat="server">
                        <ItemTemplate>
                              <div class="col-md-4 card" style=" border-radius: 10px;  cursor: pointer;  height: 280px;">
                                    <br />
                                    <div>
                                        <a href="Xeberler.aspx?newsid=<%#Eval("NewsID") %>" style="text-decoration: none; color: black;">
                                            <img class="card-img-top" src="Image/<%#Eval("NewsFoto") %>" style="width: 250px; height: 170px;margin-left:50px;" alt="Card image cap">

                                            <div class="card-body">
                                                <h5 class="card-title text-center"><%#Eval("NewsHead") %></h5>
                                                <div class="row">
                                                    <div class="date-part">
                                                        <span style="float: left; margin-left: 10px; font-family: Arial;"><img src="Image/clock_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:HH:MM}") %></span>
                                                        <span style="float: right; margin-right: 10px; font-family: Arial;"><img src="Image/calendar_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:dd/MM/yyyy}")  %></span>
                                                    </div>
                                                </div>

                                            </div>
                                            <br />
                                        </a>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
        </div>
        <br />
         <div class="col-lg-12" style="height:auto; background-color:#ededed">
            <h1>İdman</h1>
        <p  style="height:0.2cm; width:100%; background-color:goldenrod;"></p>
        <asp:Repeater ID="Rpİdman" runat="server">
                        <ItemTemplate>
                              <div class="col-md-4 card" style=" border-radius: 10px;  cursor: pointer;  height: 280px;">
                                    <br />
                                    <div>
                                        <a href="NewsDetail.aspx?newsid=<%#Eval("NewsID") %>" style="text-decoration: none; color: black;">
                                            <img class="card-img-top" src="Image/<%#Eval("NewsFoto") %>" style="width: 250px; height: 170px;margin-left:50px;" alt="Card image cap">

                                            <div class="card-body">
                                                <h5 class="card-title text-center"><%#Eval("NewsHead") %></h5>
                                                <div class="row">
                                                    <div class="date-part">
                                                        <span style="float: left; margin-left: 10px; font-family: Arial;"><img src="Image/clock_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:HH:MM}") %></span>
                                                        <span style="float: right; margin-right: 10px; font-family: Arial;"><img src="Image/calendar_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:dd/MM/yyyy}")  %></span>
                                                    </div>
                                                </div>

                                            </div>
                                            <br />
                                        </a>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
        </div>
        <br />
        <div class="col-lg-12" style="height:auto; background-color:#ededed">
            <h1>Maraqlı</h1>
        <p  style="height:0.2cm; width:100%; background-color:goldenrod"></p>
        <asp:Repeater ID="RpMaraq" runat="server">
                        <ItemTemplate>
                              <div class="col-md-4 card" style=" border-radius: 10px;  cursor: pointer;  height: 280px;">
                                    <br />
                                    <div>
                                        <a href="NewsDetail.aspx?newsid=<%#Eval("NewsID") %>" style="text-decoration: none; color: black;">
                                            <img class="card-img-top" src="Image/<%#Eval("NewsFoto") %>" style="width: 250px; height: 170px;margin-left:50px;" alt="Card image cap">

                                            <div class="card-body">
                                                <h5 class="card-title text-center"><%#Eval("NewsHead") %></h5>
                                                <div class="row">
                                                    <div class="date-part">
                                                        <span style="float: left; margin-left: 10px; font-family: Arial;"><img src="Image/clock_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:HH:MM}") %></span>
                                                        <span style="float: right; margin-right: 10px; font-family: Arial;"><img src="Image/calendar_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:dd/MM/yyyy}")  %></span>
                                                    </div>
                                                </div>

                                            </div>
                                            <br />
                                        </a>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
        </div>
        <br />
        <div class="col-lg-12" style="height:auto; background-color:#ededed">
            <h1>Hadisə</h1>
        <p  style="height:0.2cm; width:100%; background-color:goldenrod"></p>
        <asp:Repeater ID="RpHadise" runat="server">
                        <ItemTemplate>
                              <div class="col-md-4 card" style=" border-radius: 10px;  cursor: pointer;  height: 280px;">
                                    <br />
                                    <div>
                                        <a href="NewsDetail.aspx?newsid=<%#Eval("NewsID") %>" style="text-decoration: none; color: black;">
                                            <img class="card-img-top" src="Image/<%#Eval("NewsFoto") %>" style="width: 250px; height: 170px;margin-left:50px;" alt="Card image cap">

                                            <div class="card-body">
                                                <h5 class="card-title text-center"><%#Eval("NewsHead") %></h5>
                                                <div class="row">
                                                    <div class="date-part">
                                                        <span style="float: left; margin-left: 10px; font-family: Arial;"><img src="Image/clock_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:HH:MM}") %></span>
                                                        <span style="float: right; margin-right: 10px; font-family: Arial;"><img src="Image/calendar_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:dd/MM/yyyy}")  %></span>
                                                    </div>
                                                </div>

                                            </div>
                                            <br />
                                        </a>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
        </div>
        <br />
         <div class="col-lg-12" style="height:auto; background-color:#ededed">
            <h1>Siyasət</h1>
        <p  style="height:0.2cm; width:100%; background-color:goldenrod"></p>
        <asp:Repeater ID="RpSiyaset" runat="server">
                        <ItemTemplate>
                              <div class="col-md-4 card" style=" border-radius: 10px;  cursor: pointer;  height: 280px;">
                                    <br />
                                    <div>
                                        <a href="NewsDetail.aspx?newsid=<%#Eval("NewsID") %>" style="text-decoration: none; color: black;">
                                            <img class="card-img-top" src="Image/<%#Eval("NewsFoto") %>" style="width: 250px; height: 170px;margin-left:50px;" alt="Card image cap">

                                            <div class="card-body">
                                                <h5 class="card-title text-center"><%#Eval("NewsHead") %></h5>
                                                <div class="row">
                                                    <div class="date-part">
                                                        <span style="float: left; margin-left: 10px; font-family: Arial;"><img src="Image/clock_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:HH:MM}") %></span>
                                                        <span style="float: right; margin-right: 10px; font-family: Arial;"><img src="Image/calendar_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:dd/MM/yyyy}")  %></span>
                                                    </div>
                                                </div>

                                            </div>
                                            <br />
                                        </a>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
        </div>
        <br />
         <div class="col-lg-12" style="height:auto; background-color:#ededed">
            <h1>Iqtisadiyyat</h1>
        <p  style="height:0.2cm; width:100%; background-color:goldenrod"></p>
        <asp:Repeater ID="RpIqtisadi" runat="server">
                        <ItemTemplate>
                              <div class="col-md-4 card" style=" border-radius: 10px;  cursor: pointer;  height: 280px;">
                                    <br />
                                    <div>
                                        <a href="NewsDetail.aspx?newsid=<%#Eval("NewsID") %>" style="text-decoration: none; color: black;">
                                            <img class="card-img-top" src="Image/<%#Eval("NewsFoto") %>" style="width: 250px; height: 170px;margin-left:50px;" alt="Card image cap">

                                            <div class="card-body">
                                                <h5 class="card-title text-center"><%#Eval("NewsHead") %></h5>
                                                <div class="row">
                                                    <div class="date-part">
                                                        <span style="float: left; margin-left: 10px; font-family: Arial;"><img src="Image/clock_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:HH:MM}") %></span>
                                                        <span style="float: right; margin-right: 10px; font-family: Arial;"><img src="Image/calendar_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:dd/MM/yyyy}")  %></span>
                                                    </div>
                                                </div>

                                            </div>
                                            <br />
                                        </a>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
        </div>
        <br />
         <div class="col-lg-12" style="height:auto; background-color:#ededed">
            <h1>Mədəniyyət</h1>
        <p  style="height:0.2cm; width:100%; background-color:goldenrod"></p>
        <asp:Repeater ID="RpMedeni" runat="server">
                        <ItemTemplate>
                              <div class="col-md-4 card" style=" border-radius: 10px;  cursor: pointer;  height: 280px;">
                                    <br />
                                    <div>
                                        <a href="NewsDetail.aspx?newsid=<%#Eval("NewsID") %>" style="text-decoration: none; color: black;">
                                            <img class="card-img-top" src="Image/<%#Eval("NewsFoto") %>" style="width: 250px; height: 170px;margin-left:50px;" alt="Card image cap">

                                            <div class="card-body">
                                                <h5 class="card-title text-center"><%#Eval("NewsHead") %></h5>
                                                <div class="row">
                                                    <div class="date-part">
                                                        <span style="float: left; margin-left: 10px; font-family: Arial;"><img src="Image/clock_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:HH:MM}") %></span>
                                                        <span style="float: right; margin-right: 10px; font-family: Arial;"><img src="Image/calendar_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:dd/MM/yyyy}")  %></span>
                                                    </div>
                                                </div>

                                            </div>
                                            <br />
                                        </a>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
        </div>
        <br />
        <div class="col-lg-12" style="height:auto; background-color:#ededed">
            <h1>Kriminal</h1>
        <p  style="height:0.2cm; width:100%; background-color:goldenrod"></p>
        <asp:Repeater ID="RpKriminal" runat="server">
                        <ItemTemplate>
                              <div class="col-md-4 card" style=" border-radius: 10px;  cursor: pointer;  height: 280px;">
                                    <br />
                                    <div>
                                        <a href="NewsDetail.aspx?newsid=<%#Eval("NewsID") %>" style="text-decoration: none; color: black;">
                                            <img class="card-img-top" src="Image/<%#Eval("NewsFoto") %>" style="width: 250px; height: 170px;margin-left:50px;" alt="Card image cap">

                                            <div class="card-body">
                                                <h5 class="card-title text-center"><%#Eval("NewsHead") %></h5>
                                                <div class="row">
                                                    <div class="date-part">
                                                        <span style="float: left; margin-left: 10px; font-family: Arial;"><img src="Image/clock_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:HH:MM}") %></span>
                                                        <span style="float: right; margin-right: 10px; font-family: Arial;"><img src="Image/calendar_15px.png" style="padding-right: 3px;" /><%#Eval("NewsDate", "{0:dd/MM/yyyy}")  %></span>
                                                    </div>
                                                </div>

                                            </div>
                                            <br />
                                        </a>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
        </div>
        <br />
        </div>
<!------Foto qalereya hissesi--------->

   <%-- <script>

$(document).ready(function(){
  $("h2").click(function(){
    $(".fotohide").toggle(500);
  });
});

    </script>--%>
    
          <script>

function showpassword() {
  var x = document.getElementById("txtPass");
  if (x.type === "password") {
    x.type = "text";

  } else {
    x.type = "password";
  }
}

$(document).ready(function(){
  $("#FotoDuyme").click(function(){
    $("#Fotolar").toggle(700);
  });
});

function mesaj1() {

            alert("😃 Təbriklər qeydiyyat uğurla başa çatdı.");
        }
        function mesaj() {

            alert("Yazdığınız şifrə və təkrar şifrə doğru deyil. Zəhmət olmasa dəqiqləşdirdikdən sonra qeydiyyatdan keçməyə cəhd edin. ");
        }
  function mesaj2() {

            alert("Yazdığınız şifrə vəya istifadəçi adı doğru  doğru deyil. Zəhmət olmasa dəqiqləşdirdikdən sonra daxil olmağa cəhd edin. Əgər siz şifrəni unutmusuzsa Şifrəni unutmusuz ? düyməsinə klikləyin. ");
        }
      
</script>
    <section id="portfolio">
        <div class="container-fluid">
            
                <div style="cursor:pointer" class="col-lg-12 col-md-12 col-sm-12 text-center"><h2 id="FotoDuyme">Foto qalereya</h2><hr/></div>
            
                    <!--Tekrarlanan hisse-->
            <div id="Fotolar">
                    <asp:Repeater ID="FotoRepeaterID"  runat="server">
                        <ItemTemplate>
                <div class="col-md-3">
                    <div class="imageContainer">
                       <img src="Galery/<%#Eval("FotoURL") %>" class="img-fluid" alt="Foto" />
                        <div class="imageOverlay">
                            <div class="imageText">
                                <i class="glyphicon glyphicon-zoom-in"></i>
                                <h3><%#Eval("FotoHeader") %></h3>
                                <p><em><%#Eval("FotoText") %></em></p>
                            </div>
                        </div>
                    </div>
                </div>
                         
                            </ItemTemplate>
                        </asp:Repeater>
               </div>
            </div>
    </section>
    


</asp:Content>
