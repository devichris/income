<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication12._Default" %>

  
    <asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
<compilation debug="true" targetFramework="4.0">
   
</compilation>
    <asp:GridView ID="GridView1"  
            runat="server" 
            AllowPaging="True" 
            AllowSorting="True" 
            AutoGenerateColumns="False" 
            CellPadding="4" 
            DataSourceID="SqlDataSource2" 
            EmptyDataText="There are no data records to display." 
            ForeColor="#333333" 
            GridLines="None">
             <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Money Earned" HeaderText="Money Earned" SortExpression="Money Earned" />
                <asp:BoundField DataField="Money Saved" HeaderText="Money Saved" SortExpression="Money Saved" />
                <asp:BoundField DataField="Money Claimed for Taxes" 
                    HeaderText="Money Claimed for Taxes" SortExpression="Money Claimed for Taxes" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
    SelectCommand="SELECT * FROM [Summer Earnings]"></asp:SqlDataSource>
        <asp:Label
          id="Label1"
          runat="server">
      </asp:Label>
        
</asp:Content>

        
    
