<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_post.aspx.cs"Inherits="Xenith.view_post" MasterPageFile="~/Xenith.master" %>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="CPHMainContainer">
    <form id="form1" runat="server">
    <div style="height: 588px; width: 849px;">
   
      
    
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:XenithConnectionString %>" 
            
            
            
            
            SelectCommand="SELECT forum_topic, forum_content FROM forum_posts WHERE (forum_post_id = @forum_post_id)">
            <SelectParameters>
                <asp:Parameter Name="forum_post_id" />
            </SelectParameters>
        </asp:SqlDataSource>
   
      
    
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:XenithConnectionString %>" 
            SelectCommand="SELECT [comment] FROM [forum_comments]">
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:ListView ID="ListView2" runat="server" 
            GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFFFFF;color: #284775;">
                    forum_topic:
                    <asp:Label ID="forum_topicLabel" runat="server" 
                        Text='<%# Eval("forum_topic") %>' />
                    <br />
                    forum_content:
                    <asp:Label ID="forum_contentLabel" runat="server" 
                        Text='<%# Eval("forum_content") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #999999;">
                    forum_topic:
                    <asp:TextBox ID="forum_topicTextBox" runat="server" 
                        Text='<%# Bind("forum_topic") %>' />
                    <br />
                    forum_content:
                    <asp:TextBox ID="forum_contentTextBox" runat="server" 
                        Text='<%# Bind("forum_content") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" 
                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr ID="itemPlaceholderContainer" runat="server">
                    <td ID="itemPlaceholder" runat="server">
                    </td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">
                    forum_topic:
                    <asp:TextBox ID="forum_topicTextBox" runat="server" 
                        Text='<%# Bind("forum_topic") %>' />
                    <br />
                    forum_content:
                    <asp:TextBox ID="forum_contentTextBox" runat="server" 
                        Text='<%# Bind("forum_content") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #E0FFFF;color: #333333;">
                    forum_topic:
                    <asp:Label ID="forum_topicLabel" runat="server" 
                        Text='<%# Eval("forum_topic") %>' />
                    <br />
                    forum_content:
                    <asp:Label ID="forum_contentLabel" runat="server" 
                        Text='<%# Eval("forum_content") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="groupPlaceholderContainer" runat="server" border="1" 
                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr ID="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" 
                            style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" 
                    style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    forum_topic:
                    <asp:Label ID="forum_topicLabel" runat="server" 
                        Text='<%# Eval("forum_topic") %>' />
                    <br />
                    forum_content:
                    <asp:Label ID="forum_contentLabel" runat="server" 
                        Text='<%# Eval("forum_content") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="margin-left: 18px" Text="Return to Forums Page" Width="158px" 
            Height="25px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="74px" Width="488px" 
            TextMode="MultiLine" style="resize:none"></asp:TextBox>
        <asp:RequiredFieldValidator id="check"  runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter some text" ForeColor="Red" ValidationGroup="ChangeStatus" CausesValidation="true" />
    <asp:RegularExpressionValidator runat="server" ID="valInput"
    ControlToValidate="TextBox1"
    ValidationExpression="^[\s\S]{0,500}$"
    ErrorMessage="Please enter a maximum of 500 characters"
    ValidationGroup="ChangeStatus" CausesValidation="true" EnableClientScript="false"
     > </asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="23px" Text="Add New Comment" 
            Width="132px" style="margin-left: 33px; margin-top: 0px" ValidationGroup="ChangeStatus"
            onclick="Button1_Click" />
   
      
    
        <br />
   
      
    
        <br />
        <br />
   
      
    
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server" >
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="commentTextBox" runat="server" Text='<%# Bind("comment") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" 
                    style="">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="commentTextBox" runat="server" Text='<%# Bind("comment") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="0" 
                                style="">
                                <tr runat="server" style="">
                                    <th runat="server">
                                        comment</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" 
                            
                            style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
   
      
    
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
      
    
    </div>
    </form>
</asp:Content>
