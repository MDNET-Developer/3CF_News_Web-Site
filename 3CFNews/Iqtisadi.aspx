<%@ Page Title="" Language="C#" MasterPageFile="~/Master3CF.Master" AutoEventWireup="true" CodeBehind="Iqtisadi.aspx.cs" Inherits="_3CFNews.Iqtisadi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

       <script>src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 

    <style>
table {
    font-size:20px;
  font-family: arial;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid goldenrod;
  text-align: left;
  padding: 10px;
}

tr:nth-child(even) {
  background-color:goldenrod;
}
tr:nth-child(odd) {
  background-color:white;
}
</style>

 



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
    
    <h2> - Iqtisadi xəbərlər - </h2>
          <a href="https://www.cbar.az/" target="_blank"><img style="height:3cm;width:5cm; cursor:pointer" src="Image/Banklogo.png" /></a>

          <script>

$(document).ready(function(){
  $("#hideshow").click(function(){
    $("#valyuta").toggle(500);
  });
});
</script>
        

          <h3>Valyuta</h3><p id="hideshow" style="font-size:35px;cursor:pointer" class="glyphicon glyphicon-zoom-in"></p>
        
    <div id="valyuta" class="col-lg-12; col-md-12; col-sm-12">
        

        <table>


            <tr>
                <th>Valyuta</th>
                <th>Kod</th>
                <th>Kurs</th>
            </tr>


            <asp:Repeater ID="ValyutaRepeatorID" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Valyuta") %></td>
                        <td><%#Eval("Kod") %></td>
                        <td><%#Eval("Kurs") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>


        </table>


    </div>

    </div>
</asp:Content>
