<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Xenith.master" CodeBehind="forum.aspx.cs" Inherits="Xenith.forum" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="CPHMainContainer">
    <form id="form1" runat="server">
    <div style="width: 964px; font-size: medium">
    
  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong style="font-size: medium; font-family: 'Times New Roman', Times, serif;">&nbsp;<span class="style1" 
            style="font-size: large"><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FORUM<br />
        <br />
        <br />
        </span>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="forum_post_id" Height="139px" 
            Width="670px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
            BorderWidth="1px" CellPadding="4">
            <Columns>
               <asp:BoundField DataField="forum_post_id" HeaderText="ID" SortExpression="forum_post_id" /> 
               
                <asp:HyperLinkField 
        DataNavigateUrlFields="forum_post_id" 
        DataNavigateUrlFormatString="view_post.aspx?{0}"
        DataTextField="forum_topic" 
        HeaderText="Forum Topic" 
        ItemStyle-Width="100px"
        ItemStyle-Wrap="true" >
                  
              
              
<ItemStyle Wrap="True" Width="100px"></ItemStyle>
                </asp:HyperLinkField>
                  
              
              
               <asp:BoundField DataField="no_of_comments" HeaderText="No Of Comments" 
                   SortExpression="no_of_comments" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        </strong><br />
       
         
           

        
        <br />
         
            

        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
            style="margin-left: 385px" Text="Post new Topic" Width="105px" />
         
            

        <br />
         
            

        <br />
        <br />
        <br />
        <br />
        <br />
        
        <asp:SqlDataSource ID="DataBase1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:XenithConnectionString %>" 
            
            
            SelectCommand="SELECT [no_of_comments], [forum_topic], [forum_post_id] FROM [forum_posts]">
        </asp:SqlDataSource>
         
            

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
  </asp:Content> 
