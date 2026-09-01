<%@ Page Title="" Language="C#" MasterPageFile="~/Adminpanel/MasterPage.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Adminpanel_Changepassword" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <div class="page-content">
            <!-- BEGIN PAGE HEAD-->
            <div class="page-head">
                <!-- BEGIN PAGE TITLE -->
                <div class="page-title">
                    <h1>Change Password</h1>
                </div>
                <!-- END PAGE TITLE -->
                <!-- BEGIN PAGE TOOLBAR -->
                <div class="page-toolbar">
                    <!-- BEGIN PAGE BREADCRUMB -->
                    <ul class="page-breadcrumb breadcrumb">
                        <li><a href="~/Adminpanel/Dashboard.aspx">Home</a><i class="fa fa-circle"></i></li>
                        <li><span class="active">Change Password</span></li>
                    </ul>
                    <!-- END PAGE BREADCRUMB -->
                </div>
                <!-- END PAGE TOOLBAR -->
            </div>
            <!-- END PAGE HEAD-->
            <!-- BEGIN PAGE BASE CONTENT -->
                    <div class="row">
                        <div class="col-md-12 ">
                            <!-- BEGIN SAMPLE FORM PORTLET-->
                            <div class="portlet light bordered">
                                <div class="portlet-body form">
                                    <div class="form-horizontal" >
                                    <div class="form-body">
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label">Old Password <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="oldpassword" ErrorMessage="*" SetFocusOnError="true" ForeColor="Red" ></asp:RequiredFieldValidator></label>
                                                <asp:TextBox ID="oldpassword" runat="server" CssClass="form-control" placeholder="Old Password"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label">New Password <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="newpassword" ErrorMessage="*" SetFocusOnError="true" ForeColor="Red" ></asp:RequiredFieldValidator></label>
                                                <asp:TextBox ID="newpassword" runat="server" CssClass="form-control" placeholder="New Password"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label">Re-Type Password <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="retypepassword" ControlToCompare="newpassword" SetFocusOnError="true" ErrorMessage="Password Doesn't Match With New Password!" ForeColor="Red" ></asp:CompareValidator></label>
                                                <asp:TextBox ID="retypepassword" runat="server" CssClass="form-control" placeholder="Re-Type Password"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-offset-3 col-md-9">
                                                    <asp:Button ID="save" runat="server" CssClass="btn default" Text="Save" OnClick="save_Click" AccessKey="s" />
                                                    <asp:Button ID="exit" runat="server" CssClass="btn green" Text="Exit" OnClick="exit_Click" CausesValidation="false" AccessKey="x" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END SAMPLE FORM PORTLET-->
                        </div>
                    </div>
            <!-- END PAGE BASE CONTENT -->
        </div>
        <!-- END CONTENT BODY -->
    </div>
<!-- END CONTENT -->
</asp:Content>

