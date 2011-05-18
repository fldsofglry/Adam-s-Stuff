<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="RefereeManage.aspx.cs" Inherits="RefereeManage" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/main.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>Photo</td>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Location</td>
            <td>Manage</td>
        </tr>
        <tr>
            <td>
                <img alt="Referee's photo" style="width:50px;" src="images/referee.jpg" /></td>
            <td>Pierluigi</td>
            <td>Collina</td>
            <td>Cincinnati, OH</td>
            <td><a href="#">Certifications</a></td>
        </tr>
         <tr>
            <td>
                <img alt="Referee's photo" style="width:50px;"src="images/reficon.png" />
                </td>
            <td>Tim </td>
            <td>Jackson</td>
            <td>Cincinnati, OH</td>
            <td><a href="#">Certifications</a></td>
        </tr>
    </table>
</asp:Content>

