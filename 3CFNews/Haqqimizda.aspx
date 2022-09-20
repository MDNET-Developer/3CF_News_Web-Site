<%@ Page Title="" Language="C#" MasterPageFile="~/Master3CF.Master" AutoEventWireup="true" CodeBehind="Haqqimizda.aspx.cs" Inherits="_3CFNews.Haqqimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .map{
            float:right;
        }
        .video{
            float:right;
            width:3cm;
            height:3cm;
        }
        .elaqe{
            float:left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
    <h2>Haqqimizda</h2>



<%--    <div class="row">
       <div class="col-lg-6">
           <br />
           <b>050-772-83-19</b><br />
           <b>055-272-16-64</b>
       </div>
       <div class="col-lg-6">
           <br />
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3046.3167567587725!2d49.57633136663016!3d40.22425888969397!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x403a88af6bc2712f%3A0xd22e7c3c29d1b23a!2sEmin%20Quliyev%2C%20Az%C9%99rbaycan!5e0!3m2!1saz!2s!4v1613391342101!5m2!1saz!2s" width=400 height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
           <iframe width="400" height="300" src="https://www.youtube.com/embed/VpcrmAja6bY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
           <br />
       </div>
    </div>--%>

    <div class="row">


    <div class="map; " >
    
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12157.08920496344!2d49.94455182685852!3d40.38065716552022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40306367e92de657%3A0xc6159ae7f4a0fee4!2sAhmadli%2C%20Baku%2C%20Azerbaijan!5e0!3m2!1sen!2s!4v1613391206679!5m2!1sen!2s" width="400" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

      
        <iframe width="400" height="300" src="https://www.youtube.com/embed/VpcrmAja6bY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>

    <div class="elaqe;">

       <a href="https://api.whatsapp.com/send?phone=00994557696548" style="display: table;float:left; font-family: sans-serif; text-decoration: none; margin: 1em auto; color: #fff; font-size: 0.9em; padding: 1em 2em 1em 3.5em; border-radius: 2em; font-weight: bold; background: #25d366 url('https://tochat.be/click-to-chat-directory/css/whatsapp.svg') no-repeat 1.5em center; background-size: 1.6em;">Whastapp nömrəmiz ilə əlaqə saxla</a>
        <a style="margin-left:1cm ; margin-bottom:2px;" href="https://www.facebook.com/murad.aliyev.58173" target="_blank"><img src="Image/face.png" /></a>
    </div>

        </div>
        </div>
</asp:Content>
