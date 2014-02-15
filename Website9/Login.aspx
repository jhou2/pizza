<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Login</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table"> 
    <tr class="row">
        <asp:Login ID="Login1" runat="server" ></asp:Login>
    
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </tr>
    </table>
</asp:Content>

