<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="CaseAdd.aspx.cs" Inherits="ORBITA.UI.Admin.CaseAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="box">
        <h3>添加案例</h3>
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblError" runat="server" Text="添加失败" ForeColor="Red" Visible="false"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td width="120">国家:</td>
                <td>
                    <asp:TextBox ID="txtCountry" runat="server" Width="300px"></asp:TextBox>
           
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="国家不能为空" ControlToValidate="txtCountry" Display="None"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>酒店名称:</td>
                <td>
                    <asp:TextBox ID="txtHotel" runat="server" Width="300px"></asp:TextBox>
        
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="酒店名称不能为空" ControlToValidate="txtHotel" Display="None"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >图片:</td>
                <td>
                <CKEditor:CKEditorControl ID="CKEditor1" runat="server" basePath="~/ckeditor/">
		            </CKEditor:CKEditorControl>
                </td>
                
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" Text=" 添 加 " OnClick="btnAdd_Click" />                                     
                </td>
          
            </tr>

            </table>

    </div>
</asp:Content>
