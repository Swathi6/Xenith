<%@ Page Title="" Language="C#" MasterPageFile="~/Xenith.Master" AutoEventWireup="true"
    CodeBehind="order_cab.aspx.cs" Inherits="Xenith.order_cab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHMainContainer" runat="server">
    <div id="maincontent1" class="maincontent1">
        <span>Order A Cab</span>
        <hr class="hrline" />
        <form id="frm" runat="server" method="post">
        <div align="center" class="control-group errMsg">
            <asp:Label ID="ValidationMsg" runat="server" Text=""></asp:Label>
        </div>
        <div style='width: 120px; float: left'>
            <asp:Label ID="Label2" runat="server" Style="" Text="Date "></asp:Label>
        </div>
        <div style='float: left'>
            <asp:TextBox ID="datepicker1" runat="server" Style=""></asp:TextBox>
        </div>
        <br />
        <br />
        <div style='width: 120px; float: left'>
            <asp:Label ID="Label3" runat="server" Style="" Text="Time "></asp:Label>
        </div>
        <div style='float: left'>
            <asp:TextBox ID="timepicker1" runat="server" Style=""></asp:TextBox>
            <i id="icon_cal" class="icon-time"></i>
        </div>
        <br />
        <br />
        <div style='width: 120px; float: left'>
            <asp:Label ID="Label4" runat="server" Style="" Text="Prices "></asp:Label>
        </div>
        <div style='float: left'>
            <asp:DropDownList ID="oc_package_ddl" runat="server">
            </asp:DropDownList>
        </div>
        <br />
        <br />
        <br />
        <div align="center">
        <asp:Button ID="Button1" runat="server" Text="Make Payment" OnClick="Button1_Click"
            CssClass="btn" PostBackUrl="order_cab_process.aspx"></asp:Button>
        </div>
        </form>
    </div>
</asp:Content>
