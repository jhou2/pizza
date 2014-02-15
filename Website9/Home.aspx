<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="tiles clearfix" style="font-family: 'Segoe UI Semibold'" >
           
           <div class="tile double bg-red">
               <div class="tile-content">
                <img src="~/images/pizza2.png" runat="server" />
               </div>
           </div>
           <div class="tile double bg-violet">
               <div class="tile-content">
                   <h2>Kicking it up a notch.  Most authentic thin-crust pizza in town!</h2>
               </div>
           </div>
           <div class="tile double bg-orange" style="padding:5px;">     
               <div class="tile-content">
                   <h3 style="font-family: 'Segoe UI Semibold'">Mary's pizza sets a new standard for delicious, fast pizza.</h3>
               </div>
           </div>
           <div class="tile bg-green">
               <div class="tile-content">
                <h2>Order Now!</h2>
                <h2>Free Delivery!</h2>
               </div>
           </div>
           <div class="tile double bg-steel">
               <div class="tile-content" 
                   style="text-align: center;vertical-align: middle;">
                   <h2 >Call</h2>
                <h2>(604) 123-4567</h2>
                   
               </div>
           </div>
           <div class="tile bg-magenta">
               <div class="tile-content">
                   <div class="tile bg-cobalt">
                        <h4>12 Main St</h4>
                        <h4>Vancouver, BC</h4>
                        <h4>V8P 1JT</h4>
                   
                   </div>
               </div>
           </div>
           <div class="tile bg-blue">
               <div class="tile-content image">
                   <img src="~/images/pizza3.jpg" runat="server" />
               </div>
           </div>
           
           
           <div class="tile bg-crimson">
               <div class="tile-content">
                <h3>“Best Eats #1”</h3>
                <h4>-GVRD Daily</h4>
               </div>
           </div>
           <div class="tile bg-amber">
               <div class="tile-content">
                <h3>Mary's pizza can't be beat!</h3>
                   
               </div>
           </div>
           <div class="tile bg-pink">
               <div class="tile-content image">
                   <img src="~/images/pizza1.jpg" runat="server" />
               </div>
           </div>
       </div>
</asp:Content>

