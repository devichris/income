<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stat2015.aspx.cs" Inherits="WebApplication1.stats" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <title>Statistics</title>
    <style type="text/css">
        #form1 {
            height: 707px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
     <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    Stats
                </h1>
            </div>
            <div class="clear hideSkiplink">
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home"/>
                       
                    </Items>
                </asp:Menu>
            </div>
        </div>
         <span class="newStyle3" style="font-size: 15px; font-family: 'Comic Sans MS'">
         <br />
         <br />
         These are your stats</span> <span class="newStyle4">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" style="text-align: center; position: relative; top: 90px; left: 196px; height: 268px; width: 582px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Total_Money_Earned" HeaderText="Total Money Earned" SortExpression="Total_Money_Earned" />
                <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
             <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" style="position: relative; top: 8px; left: 201px; width: 578px">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:CommandField ShowSelectButton="True" />
                 <asp:BoundField DataField="Earned_Total" HeaderText="Earned Total" SortExpression="Earned_Total" />
             </Columns>
             <EditRowStyle BackColor="#7C6F57" />
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F8FAFA" />
             <SortedAscendingHeaderStyle BackColor="#246B61" />
             <SortedDescendingCellStyle BackColor="#D4DFE1" />
             <SortedDescendingHeaderStyle BackColor="#15524A" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:neeneeConnectionString %>" ProviderName="<%$ ConnectionStrings:neeneeConnectionString.ProviderName %>" SelectCommand="SELECT [Earned Total] AS Earned_Total FROM [yeartotal2015]"></asp:SqlDataSource>
         <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:neeneeConnectionString %>" ProviderName="<%$ ConnectionStrings:neeneeConnectionString.ProviderName %>" SelectCommand="SELECT [Total Money Earned] AS Total_Money_Earned, [Month] FROM [yearlyearnings2015]">

        </asp:SqlDataSource>
         <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" style="position: relative; top: 21px; left: 198px; width: 577px">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:CommandField ShowSelectButton="True" />
                 <asp:BoundField DataField="Save_Total" HeaderText="Save Total" SortExpression="Save_Total" />
             </Columns>
             <EditRowStyle BackColor="#7C6F57" />
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F8FAFA" />
             <SortedAscendingHeaderStyle BackColor="#246B61" />
             <SortedDescendingCellStyle BackColor="#D4DFE1" />
             <SortedDescendingHeaderStyle BackColor="#15524A" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:neeneeConnectionString %>" ProviderName="<%$ ConnectionStrings:neeneeConnectionString.ProviderName %>" SelectCommand="SELECT [Save Total] AS Save_Total FROM [savetotal2015]"></asp:SqlDataSource>
         <br />
         <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource5" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" style="position: relative; top: 20px; left: 197px; width: 578px">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:CommandField ShowSelectButton="True" />
                 <asp:BoundField DataField="Tax" HeaderText="Tax Total" SortExpression="Tax" />
             </Columns>
             <EditRowStyle BackColor="#7C6F57" />
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F8FAFA" />
             <SortedAscendingHeaderStyle BackColor="#246B61" />
             <SortedDescendingCellStyle BackColor="#D4DFE1" />
             <SortedDescendingHeaderStyle BackColor="#15524A" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:neeneeConnectionString %>" ProviderName="<%$ ConnectionStrings:neeneeConnectionString.ProviderName %>" SelectCommand="SELECT [Tax] FROM [taxtotal2015]"></asp:SqlDataSource>
         <br />
         <br />
         <br />
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:neeneeConnectionString %>" ProviderName="<%$ ConnectionStrings:neeneeConnectionString.ProviderName %>" SelectCommand="SELECT [Earned Total] AS Earned_Total, [Saved Total] AS Saved_Total, [Taxed Total] AS Taxed_Total FROM [yeartotal2015]"></asp:SqlDataSource>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton2_Click">Click Here To Update</asp:LinkButton>
             </span>
        </div>
        
    </form>
        </body>
</html>
