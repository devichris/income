<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="currentearnings.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>
<body>
    <div id =" body">
<script runat="server">
 private void OnDSUpdatedHandler(Object source, SqlDataSourceStatusEventArgs e) {
    if (e.AffectedRows > 0) {
        // Perform any additional processing, 
        // such as setting a status label after the operation.
        Label1.Text = (" You have changed user information successfully!");    
    }
    else {
        Label1.Text = "No data updated!";
    }
 }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Current Earnings</title>
    <style type="text/css">
        .newStyle1 {
            font-family: "Comic Sans MS";
            font-size: xx-large;
        }
        #form1 {
            height: 818px;
        }
        .newStyle2 {
            font-family: Constantia;
            font-weight: bold;
        }
        .auto-style1 {
            font-family: Constantia;
            font-weight: bold;
            font-size: large;
        }
        .newStyle3 {
            font-family: Andalus;
            font-weight: 200;
            text-decoration: underline;
        }
        .newStyle4 {
            font-family: FrankRuehl;
            font-size: xx-large;
            font-weight: bold;
            text-decoration: underline;
        }
        .newStyle5 {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            text-align: left;
        }
        .menu {
            z-index: 1;
            left: 10px;
            top: 143px;
            position: absolute;
            height: 49px;
            width: 122px;
        }
        .auto-style2 {
            height: 5322px;
            margin-top: 0px;
            width: 962px;
            margin-left: 0px;
            background-color: #660033;
        }
        .auto-style3 {
            font-family: "Comic Sans MS";
        }
        .auto-style4 {
            font-family: FrankRuehl;
            font-size: small;
            font-weight: bold;
            text-decoration: underline;
        }
        .auto-style5 {
            font-family: "Times New Roman", Times, serif;
            font-size: small;
            text-align: left;
        }
        .auto-style6 {
            font-family: FrankRuehl;
            font-weight: bold;
            text-decoration: underline;
        }
        </style>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <form id="Form1" runat="server">
    <div class="page">
   <div class="header">
            <div class="title">
                <h1>
                   2015 Earnings
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
   
        <asp:Label
          id="Label1"
          runat="server">
      </asp:Label>
        <span class="newStyle4">
        <div class="auto-style2">
        <span class="auto-style1" style="font-family: FrankRuehl; font-size: medium">

        <br />
        <br />
        <br />
            <span class="newStyle2">
        <span class="newStyle4">
            <span class="auto-style1" style="font-family: FrankRuehl; font-size: medium; text-align: left;">

    <a href="select.aspx">Datasheets</a>&gt;<a href="currentearnings.aspx">2015</a></span></span></span></span><span class="newStyle4" aria-checked="mixed"><br />
        <span class="newStyle4">
            <asp:Chart ID="Chart1" runat="server" BackGradientStyle="LeftRight" BackHatchStyle="DottedGrid" BackImageAlignment="Bottom" BackImageTransparentColor="Maroon" BackSecondaryColor="White" BorderlineColor="Maroon" BorderlineDashStyle="Dash" BorderlineWidth="4" DataSourceID="SqlDataSource1" Width="716px">
                <series>
                    <asp:Series ChartType="StackedColumn" Name="Series1" XValueMember="Date" YValueMembers="Money_Earned" YValuesPerPoint="2">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" ChartType="StackedColumn" Name="Series2" XValueMember="Date" YValueMembers="Money_Saved">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" ChartType="StackedColumn" Name="Series3" XValueMember="Date" YValueMembers="Money_Used_As_Taxes">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea BackColor="WhiteSmoke" BackImageTransparentColor="White" IsSameFontSizeForAllAxes="True" Name="ChartArea1">
                        <AxisX Title="Money Earned" TitleAlignment="Near" TitleFont="Georgia, 10pt">
                        </AxisX>
                        <Position Height="86.22408" Width="91.0629349" X="3" Y="7.264214" />
                        <InnerPlotPosition Height="85.14046" Width="91.96168" X="6.88" Y="3.65327" />
                    </asp:ChartArea>
                </chartareas>
                <BorderSkin BackColor="CornflowerBlue" PageColor="Transparent" SkinStyle="Sunken" />
            </asp:Chart>
        </span>
        </span>
        <span class="newStyle4">
            <span class="newStyle4" aria-checked="mixed">
            <asp:GridView ID="GridView3" runat="server" 
            AutoGenerateColumns="False" CellPadding="1" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." 
            ForeColor="White" 
            GridLines="None" 
            BackColor="White" 
            BorderStyle="Dashed" 
            BorderWidth="4px" 
            Caption="Recorded Earnings For The Year" 
            Font-Size="Large" 
            Font-Underline="False"
            DataKeyNames="ID" style="position: relative; top: 42px; left: 95px; height: 142px; z-index: 1; width: 777px; margin-top: 0px; text-align: center;" OnSelectedIndexChanged="GridView3_SelectedIndexChanged"
             
            >
            <AlternatingRowStyle BackColor="#333333" BorderColor="Black" BorderStyle="Groove" BorderWidth="2px" />
            <Columns>
                
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Money_Earned" HeaderText="Money Earned" SortExpression="Money_Earned" />
                <asp:BoundField DataField="Money_Saved" HeaderText="Money Saved" SortExpression="Money_Saved" />
                <asp:BoundField DataField="Money_Used_As_Taxes" HeaderText="Money Claimed For Taxes" SortExpression="Money_Used_As_Taxes" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#666666" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </span>
        </span>
            <span class="newStyle5">
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
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </span>
        </span>
        <span class="auto-style6">
            <span class="auto-style5">
            Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Money Earned &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Money Saved&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Money Claimed For Taxes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        </span>
            <span class="auto-style3">
        <span class="auto-style4">
            &nbsp;&nbsp;
            <br />
        </span>
</span>
        <span class="newStyle4">
            <span class="newStyle1">
        <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" style="margin-left: 0px" Width="120px"></asp:TextBox>
</span>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-bottom: 0px; margin-left: 0px;" Width="108px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Width="166px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" Width="148px"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Width="88px" style="margin-left: 0px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="newStyle3">Click Here to Add New record</asp:LinkButton>
            <br />
            <br />
        </span>
        <span class="auto-style6">
        <span class="auto-style4">
            The table will not update untill you leave this page and come back. The Graph will update immediatly.</span></div>
        </span>
    </form>
</head>
<body>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <span class="newStyle4">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:neeneeConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:neeneeConnectionString.ProviderName %>" 
            SelectCommand="SELECT [Date], [Money Earned] AS Money_Earned, [Money Saved] AS Money_Saved, [Money Used As Taxes] AS Money_Used_As_Taxes, [ID] AS ID FROM [summerearnings2015]"
            OnUpdated= "OnDSUpdatedHandler" 
            UpdateCommand= " Update summerearnings2015 SET [Date] = @Date, [Money Earned] = @Money_Earned, [Money Saved] = @Money_Saved, [Money Used As Taxes] = @Money_Used_As_Taxes  WHERE [ID] = @ID ;"  
            DeleteCommand= " DELETE  FROM [summerearnings2015]  WHERE [ID]=@ID ;"
            
            >
            
            <UpdateParameters>
                 <asp:Parameter Name="Date" Type="String" />
                 <asp:Parameter Name="Money_Earned" Type="String" />
                 <asp:Parameter Name="Money_Saved" Type="String" />
                <asp:Parameter Name="Money_Used_As_Taxes" Type="string" />
                <asp:Parameter Name="ID" Type="String" />
            </UpdateParameters> 

        </asp:SqlDataSource>
    </span>
    </body>
    </div>
    </body>

 
</html>
