<%@ Page Title="" Language="C#" MasterPageFile="~/Master3CF.Master" AutoEventWireup="true" CodeBehind="Xeberler.aspx.cs" Inherits="_3CFNews.Xeberler" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
         .page-link{
             background-color:black;
             transition:1s;
             transition-property:background-color;

         }
         .page-item{
              background-color:snow;
             transition:1s linear;
             transition-property:color;
         }
        .page-item:hover {
            background-color:goldenrod;
        }

         .page-link{
             background-color:snow;
             transition:1s linear;
             transition-property:color;
         }
        .page-link:hover{
            background-color:goldenrod;
        }
        .fotoxeber {
            transition: 0.4s;
        }

            .fotoxeber:hover {
                -ms-transform: scale(0.9); /* IE 9 */
                -webkit-transform: scale(0.9); /* Safari 3-8 */
                transform: scale(0.9);
            }
        /*----------------Xeber lenti css ---------*/

        .xeberlenti {
            transition: 0.4s;
        }

            .xeberlenti:hover {
                -ms-transform: scale(1.1); /* IE 9 */
                -webkit-transform: scale(1.1); /* Safari 3-8 */
                transform: scale(1.1);
            }

            .card{
                background-color: white;
                transform: scale(0.9);
                transition: .3s linear;
            }
            .card:hover{
                -ms-transform: scale(1); /* IE 9 */
            -webkit-transform: scale(1); /* Safari 3-8 */
            transform: scale(1);
            box-shadow: 0 0 16px black;
            background-color:goldenrod;
               
            }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="row block category">
                        <asp:Repeater ID="RpNews" runat="server">
                            <ItemTemplate>
                                <div class="col-md-4 card" style=" border-radius: 10px; cursor: pointer; height:290px">
                                    <br />
                                    <div>
                                        <a href="NewsDetail.aspx?newsid=<%#Eval("NewsID") %>" style="text-decoration: none; color: black;">
                                            <img class="card-img-top" src="Image/<%#Eval("NewsFoto") %>" style="width: 270px; height: 180px; padding-left: 45px;" alt="Card image cap">

                                            <div class="card-body">
                                                <h5 class="card-title text-center"><%#Eval("NewsHead") %></h5>
                                                <div class="row">
                                                    <div class="date-part">
                                                        <span style="float: left; margin-left: 10px; font-family: Arial;">
                                                            <img src="Image/clock_15px.png" /><%#Eval("NewsDate","{0:HH:MM}")%></span>
                                                        <span style="float: right; margin-right: 10px; font-family: Arial;">
                                                            <img src="Image/calendar_15px.png" /><%#Eval("NewsDate","{0:dd/MM/yy}")%></span>
                                                    </div>
                                                </div>

                                            </div>
                                            <br />
                                        </a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    <%--    ------------%> 
                        <div  style="text-align:center">
                        <nav aria-label="Page navigation example">
                            
                                <ul id="poxu"  class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="Xeberler.aspx?page=1&p=1" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <li  class="page-item"><a class="page-link" href="Xeberler.aspx?page=1&p=1">1</a></li>
                                    <li class="page-item"><a class="page-link" href="Xeberler.aspx?page=2&p=1">2</a></li>
                                    <li class="page-item"><a class="page-link" href="Xeberler.aspx?page=3&p=1">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="Xeberler.aspx?page=4&p=1" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                </ul>
                           
                        </nav>
                             </div>
                    </div>

                </div>
                <%--Sag hissede olan reklam ve xeber lenti hissesi--%>
                <div class="col-md-3 web">
                    <div class="top-rek-block">
                        <div class="top-rek-block">
                            <a href="https://www.bakcell.com/az">
                                <img src="https://newmedia.az/2banner/Bakcell_new/163__612.jpg" alt="Bakcell" />
                            </a>
                        </div>
                    </div>
                    <div class="newsletter">
                        <div class="block-heading">
                            <h2> - Xəbər Lenti - </h2>
                            <hr />
                            <br />
                        </div>
                        <div class="newsletter-body">
                            <a class="module-flash" href="https://sonxeber.az/210812/avtobuslar-araliq-dayanacaqlarda-da-saxlayacaqlar">
                                <div class="row">
                                    <div class="col-md-12 xeberlenti">
                                        <div class="newsletter-left">
                                            <p>Avtobuslar aralıq dayanacaqlarda da saxlayacaqlar</p>
                                            <div class="detail">
                                                <div class="detail-date-block">
                                                    <span class="clock glyphicon glyphicon-time" style="float: left;"><%=DateTime.Now.Hour %>:<%=DateTime.Now.Minute %></span>
                                                    <span class="date glyphicon glyphicon-calendar" style="float: right;"><%=DateTime.Now.Day %>.<%=DateTime.Now.Month %>.<%=DateTime.Now.Year %></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <hr />
                            <a class="module-regular" href="https://sonxeber.az/210808/son-deqiqe-bakida-yasayis-binasi-yanir">
                                <div class="row">
                                    <div class="col-md-12 xeberlenti">
                                        <div class="newsletter-left">
                                            <p>SON DƏQİQƏ! Bakıda yaşayış binası yanır</p>
                                            <div class="detail">
                                                <div class="detail-date-block">
                                                    <span class="clock glyphicon glyphicon-time" style="float: left;"><%=DateTime.Now.Hour %>:<%=DateTime.Now.Minute %></span>
                                                    <span class="date glyphicon glyphicon-calendar" style="float: right;"><%=DateTime.Now.Day %>.<%=DateTime.Now.Month %>.<%=DateTime.Now.Year %></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <hr />
                            <a class="module-regular" href="https://sonxeber.az/210809/bakida-qar-neqliyyati-iflic-etdi-foto-video">
                                <div class="row">
                                    <div class="col-md-12 xeberlenti">
                                        <div class="newsletter-left">
                                            <p>Bakıda qar nəqliyyatı iflic edti - FOTO + VİDEO</p>
                                            <div class="detail">
                                                <div class="detail-date-block">
                                                    <span class="clock glyphicon glyphicon-time" style="float: left;"><%=DateTime.Now.Hour %>:<%=DateTime.Now.Minute %></span>
                                                    <span class="date glyphicon glyphicon-calendar" style="float: right;"><%=DateTime.Now.Day %>.<%=DateTime.Now.Month %>.<%=DateTime.Now.Year %></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <br />
</asp:Content>
