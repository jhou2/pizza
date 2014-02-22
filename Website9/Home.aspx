<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="tiles clearfix container" style="font-family: 'Segoe UI Semibold'" >
           <div class="row">
               <div class="tile double bg-red col-md-2">
                   <div class="tile-content">
                    <img src="~/images/pizza2.png" runat="server" />
                   </div>
               </div>
               <div class="tile double bg-violet col-md-2">
                   <div class="tile-content">
                       <h2>Kicking it up a notch.  Most authentic thin-crust pizza in town!</h2>
                   </div>
               </div>
               <div class="tile double bg-orange col-md-2" style="padding:5px;">     
                   <div class="tile-content">
                       <h3 style="font-family: 'Segoe UI Semibold'">Mary's pizza sets a new standard for delicious, fast pizza.</h3>
                   </div>
               </div>
               <div class="tile bg-amber visible-lg visible-sm col-xs-1">
                   <div class="tile-content">
                    <h3>Mary's pizza can't be beat!</h3>
                   
                   </div>
               </div>
               <div class="tile bg-pink visible-lg visible-sm col-xs-1">
                   <div class="tile-content image">
                       <img id="Img1" src="~/images/pizza1.jpg" runat="server" />
                   </div>
               </div>
            </div>
           <div class="row">
               <div class="tile double bg-steel col-sm-3">
                   <div class="tile-content" 
                       style="text-align: center;vertical-align: middle;">
                       <h2 >Call</h2>
                    <h2>(604) 123-4567</h2>
                   
                   </div>
               </div>
               <div class="tile double bg-magenta col-sm-3">
                   <div class="tile-content">
                       <div class="tile-content bg-cobalt">
                            <h4>12 Main St</h4>
                            <h4>Vancouver, BC</h4>
                            <h4>V8P 1JT</h4>
                   
                       </div>
                   </div>
               </div>
               <div class="tile double bg-green col-md-2">
                   <div class="tile-content">
                    <h2>Order Now!</h2>
                    <h2>Free Delivery!</h2>
                   </div>
               </div>
               <div class="tile bg-crimson visible-lg visible-sm col-xs-1">
                   <div class="tile-content">
                    <h3>“Best Eats #1”</h3>
                    <h4>-GVRD Daily</h4>
                   </div>
               </div>               
               <div class="tile bg-blue visible-lg visible-sm col-xs-1">
                   <div class="tile-content image">
                       <img id="Img2" src="~/images/pizza3.jpg" runat="server" />
                   </div>
               </div>
            </div>
       </div>
</asp:Content>

