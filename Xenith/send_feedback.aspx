<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Xenith.master" AutoEventWireup="true"
    CodeBehind="feedback.aspx.cs" Inherits="Xenith.WebForm1" %>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="CPHMainContainer">
<form id="form1" runat="server" >
    <div class="textarea">
    </div>
    <asp:TextBox ID="TextBox1" runat="server" Height="184px"  Columns="50" Rows="10"
        style="margin-left: 11px; margin-top: 55px; resize:none" Width="525px" 
        TextMode="MultiLine" ></asp:TextBox>
&nbsp;<em><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Provide a Feedback in less than 100 words. All submitted 
      Feedbacks will be read&nbsp; and valued by our management.</strong></em><br />
      <br />
     <asp:RequiredFieldValidator id="check"  runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter some text" ForeColor="Red" />
    <asp:RegularExpressionValidator runat="server" ID="valInput"
    ControlToValidate="TextBox1"
    ValidationExpression="^[\s\S]{0,1000}$"
    ErrorMessage="Please enter a maximum of 1000 characters"
     > </asp:RegularExpressionValidator>

   
      <asp:Button ID="Button1" runat="server" Text="Submit Feedback" Width="260px" 
          style="margin-left: 313px; margin-top: 29px;" Height="45px" 
             onclick="Button1_Click" />
    
    <script language="javascript" type="text/javascript">
     
    </script>

</form>
</asp:Content>
