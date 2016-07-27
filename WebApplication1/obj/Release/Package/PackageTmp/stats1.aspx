<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="stats1.aspx.cs" Inherits="WebApplication12._Default" %>

  
    <asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
        <style type="text/css">
    .newStyle1 {
        font-family: "Comic Sans MS";
        font-variant: normal;
        text-decoration: underline;
    }
    .newStyle2 {
        font-family: "Comic Sans MS";
        text-decoration: underline;
        text-align: left;
    }
    .newStyle3 {
        font-size: 25px;
    }
</style>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
   
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:neeneeConnectionString %>" SelectCommand="SELECT * FROM [summerearnings]" OnSelecting="SqlDataSource1_Selecting1"></asp:SqlDataSource>
<span class="newStyle3" style="font-size: 15px; font-family: 'Comic Sans MS'">Choose the year you would like view</span><span class="newStyle2"><br />

    <a href="stat2015.aspx">2015</a><br />
    <br />
    <a href="stat2016.aspx">2016</a><br />
</span>
<br />
   
        
</asp:Content>

        
    
