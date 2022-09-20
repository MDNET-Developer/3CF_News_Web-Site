<%@ Page Title="" Language="C#" MasterPageFile="~/Master3CF.Master" AutoEventWireup="true" CodeBehind="NewsDetail.aspx.cs" Inherits="_3CFNews.NewsDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #sekil {
            width: 15cm;
            height: 10cm;
        }

        #IMG {
            margin: auto;
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1><asp:Literal ID="LtlHead" runat="server"></asp:Literal></h1>
            </div>
            <div class="col-lg-12">
                <asp:Label ID="LblImage" runat="server" Text="Label" Visible="false"></asp:Label>
                <div id="IMG"><img id="sekil"  src="Image/<%=LblImage.Text %>" /></div>
               
            </div>
            
            <asp:Literal ID="LtlText" runat="server"></asp:Literal>
            </div>
        
        <hr />
        <div class="col-lg-12">
            <div class="col-md-4">
                <img src="Image/timenews.png" /> <%=DateTime.Now.ToString("yyyy'-'MM'-'dd'T'HH':'mm':'ss") %></div>
            <div class="col-md-4">
                <img src="Image/BaxisSay.png" />32</div>
            <div class="col-md-4"><iframe src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&layout=button&size=small&width=67&height=20&appId" width="100" height="50" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe></div>
        </div>
        <div class="col-lg-12">

         <div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-width="750" data-numposts="10"></div></div>
        </div>
     
       
    
</asp:Content>
