

<%@ Page Title="" Language="C#" MasterPageFile="~/Master3CF.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="_3CFNews.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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

    </style>

</asp:Content>


<%--HTML --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
