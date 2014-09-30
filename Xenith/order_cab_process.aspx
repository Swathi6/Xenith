<%@ Page Title="" Language="C#" MasterPageFile="~/Xenith.Master" AutoEventWireup="true" CodeBehind="order_cab_process.aspx.cs" Inherits="Xenith.order_cab_process" %>
<%@ PreviousPageType VirtualPath="~/order_cab.aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHMainContainer" runat="server">
<div align="center" style="margin:50px;">PROCESSING...</div> 
<form id = "paypal_checkout" action = "https://www.sandbox.paypal.com/cgi-bin/webscr" method = "post" runat="server">
    <input name = "cmd" value = "_cart" type = "hidden"/>
    <input name = "upload" value = "1" type = "hidden"/>
    <input name = "no_note" value = "0" type = "hidden"/>
    <input name = "bn" value = "PP-BuyNowBF" type = "hidden"/>
    <input name = "tax" value = "0" type = "hidden"/>
    <input name = "rm" value = "2" type = "hidden"/>
 
    <input name = "business" value = "xenith.proj-facilitator@gmail.com" type = "hidden"/>
    <input name = "handling_cart" value = "0" type = "hidden"/>
    <input name = "currency_code" value = "USD" type = "hidden"/>
    <input name = "lc" value = "USD" type = "hidden"/>
    <input name = "return" value = "<%=appurl%>order_cab_done.aspx" type = "hidden"/>
    <input name = "cbt" value = "Return to My Site" type = "hidden"/>
    <input name = "cancel_return" value = "<%=appurl%>order_cab.aspx" type = "hidden"/>
    <input name = "custom" value = "" type = "hidden"/>
 
    <div id = "item_1" class = "itemwrap">
        <input name = "item_name_1" value = "Hotel Eden Valley - Order Cab" type = "hidden"/>
        <input name = "quantity_1" value = "1" type = "hidden"/>
        <input name = "amount_1" value = "<%=item_amount%>" type = "hidden"/>
        <input name = "shipping_1" value = "0" type = "hidden"/>
      
    </div>
    <!--<input id = "ppcheckoutbtn" value = "Checkout" class = "button" type = "submit">-->
</form>
<script type="text/javascript">document.getElementById("paypal_checkout").submit();</script>  

</asp:Content>
