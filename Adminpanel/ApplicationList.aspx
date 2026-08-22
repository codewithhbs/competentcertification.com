<%@ Page Title="" Language="C#" MasterPageFile="~/Adminpanel/MasterPage.master" AutoEventWireup="true" CodeFile="ApplicationList.aspx.cs" Inherits="Adminpanel_RegistrationList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-content-wrapper">
    <div class="page-content">
        <div class="page-head">
            <div class="page-title">
                <h1>Application List</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN SAMPLE FORM PORTLET-->
                <div class="portlet light bordered">
                    <div class="portlet-title">
                        <div class="caption font-red-sunglo">
                            <i class="icon-settings font-red-sunglo"></i>
                            <span class="caption-subject bold uppercase"> Application List</span>
                        </div>
                    </div>
                    <div class="portlet-body">
                            <div class="form-body">
                    <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" />
                        <asp:BoundField DataField="companyname" HeaderText="Company Name" />
                        <asp:BoundField DataField="address" HeaderText="Address" />
                        <asp:BoundField DataField="scope" HeaderText="Scope" />
                        <asp:BoundField DataField="phoneno" HeaderText="phoneno" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="certificateno" HeaderText="Certificateno" />
                        <asp:BoundField DataField="issuedate" HeaderText="Issue Date" />
                        <asp:BoundField DataField="expirydate" HeaderText="Expiry Date" />
                        <asp:BoundField DataField="orginaldate" HeaderText="Orginal Date" />
                        <asp:BoundField DataField="isostandard" HeaderText="Standard" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <a href="EditApplication.aspx?id=<%# Eval("id") %>"><i class="fa fa-edit"></i></a>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                        </div>
                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
</asp:Content>