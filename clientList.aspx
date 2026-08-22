<%@ Page Title="Client List" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="clientList.aspx.cs" Inherits="ClientList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .td1{width:300px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager runat="server" ID="SM1"></asp:ScriptManager>
     <div class="rts-breadcrumb-area breadcrumb-bg bg_image">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 breadcrumb-1">
                    <h1 class="title">Client List</h1>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="bread-tag">
                        <a href="/">Home</a>
                        <span> / </span>
                        <a href="/ClientList" class="active">Client List</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <div class="rts-contact-form-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="rts-contact-fluid rts-section-gap">
                        <div class="rts-title-area contact-fluid text-center mb--50">
                            <h2 class="title">To Search Your Certificate</h2>
                        </div>
                        <div class="form-wrapper">
                            <div id="contact-form">
                                <div class="name-email">
                                    <input type="text" id="certificateno" runat="server" autocomplete="off" placeholder="Please Enter Your Certificate No" required />
                                    <input type="text" id="companyname" runat="server"  autocomplete="off" placeholder="Please Enter Company Name (At Least First 3 Characters)" required />
                                </div>
                                <%--<button type="submit" class="rts-btn btn-primary">Search</button>--%>
                                <asp:Button ID="search" runat="server" Text="Search" CssClass="rts-btn btn-primary" OnClick="search_Click" />
                            </div>
                        </div>
                        <br />
                         <div class="form-wrapper">
                             <asp:Panel ID="tableappear" runat="server" Visible="false">
                             <table class="table table-striped table-hover">
                                 <tr>
                                     <td class="td1"><b>Company Name</b></td>
                                     <td>:</td>
                                     <td><asp:Label ID="companyname1" runat="server"></asp:Label></td>
                                 </tr>
                                 <tr>
                                     <td class="td1"><b>Address</b></td>
                                     <td>:</td>
                                     <td><asp:Label ID="address" runat="server"></asp:Label></td>
                                 </tr>
                                 <tr>
                                     <td class="td1"><b>Scope</b></td>
                                     <td>:</td>
                                     <td><asp:Label ID="scope" runat="server"></asp:Label></td>
                                 </tr>
                                 <tr>
                                     <td class="td1"><b>Standard</b></td>
                                     <td>:</td>
                                     <td><asp:Label ID="isostandard" runat="server"></asp:Label></td>
                                 </tr>
                                 <tr>
                                     <td class="td1"><b>Certificate No</b></td>
                                     <td>:</td>
                                     <td><asp:Label ID="certificateno1" runat="server"></asp:Label></td>
                                 </tr>
                                 <tr>
                                     <td class="td1"><b>Issue Date</b></td>
                                     <td>:</td>
                                     <td><asp:Label ID="issuedate" runat="server"></asp:Label></td>
                                 </tr>
                                 <tr>
                                     <td class="td1"><b>Expiry Date</b></td>
                                     <td>:</td>
                                     <td><asp:Label ID="expirydate" runat="server"></asp:Label></td>
                                 </tr>
                                  <tr>
                                     <td class="td1"><b>Status</b></td>
                                      <td>:</td>
                                     <td><asp:Label ID="status" runat="server"></asp:Label></td>
                                 </tr>
                             </table>
                             </asp:Panel>
                 </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>