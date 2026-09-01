﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Adminpanel/MasterPage.master" AutoEventWireup="true" CodeFile="Application.aspx.cs" Inherits="Adminpanel_Application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-content-wrapper">
<div class="page-content">
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-red-sunglo">
                    <i class="icon-settings font-red-sunglo"></i>
                    <span class="caption-subject bold uppercase"> Add Application</span>
                </div>
            </div>
            <div class="portlet-body">
                    <div class="form-body" style="margin:5px">
                            <div class="form-group">
                            <label class="col-md-2 control-label bold">Company Name</label>
                            <div class="col-md-10">
                                <input type="text" id="companyname" runat="server" class="form-control" required="required" placeholder="Enter Company Name"/>
                            </div>
                        </div>
                        <br />
                        <br />
                            <div class="form-group">
                            <label class="col-md-2 control-label bold">Address</label>
                            <div class="col-md-10">
                                <input type="text" id="address" runat="server" class="form-control" required="required" placeholder="Enter Address"/>
                            </div>
                        </div>
                        <br />
                        <br />
                        <div class="form-group">
                            <label class="col-md-2 control-label bold">Scope</label>
                            <div class="col-md-10">
                                <input type="text" id="scope" runat="server" class="form-control" required="required" placeholder="Enter Scope"/>
                            </div>
                        </div>
                        <br />
                        <br />
                        <div class="form-group">
                            <label class="col-md-2 control-label bold">Phone Number</label>
                            <div class="col-md-4">
                                <input type="text" id="phoneno" runat="server" class="form-control" required="required" placeholder="Enter Phone Number"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label bold">Email</label>
                            <div class="col-md-4">
                                <input type="text" id="email" runat="server" class="form-control" required="required" placeholder="Enter Email"/>
                            </div>
                        </div>
                        <br />
                        <br />

                        <div class="form-group">
                            <label class="col-md-2 control-label bold">Certificate Number</label>
                            <div class="col-md-4">
                                <input type="text" id="certificateno" runat="server" class="form-control" required="required" placeholder="Enter Certificate Number"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label bold">Issue Date</label>
                            <div class="col-md-4">
                                <input type="text" id="issuedate" runat="server" class="form-control" required="required" placeholder="Enter Issue Date"/>
                            </div>
                        </div>
                        <br />
                        <br />

                        <div class="form-group">
                            <label class="col-md-2 control-label bold">Expiry Date</label>
                            <div class="col-md-4">
                                <input type="text" id="expirydate" runat="server" class="form-control" required="required" placeholder="Enter Expiry Date"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label bold">Original Date</label>
                            <div class="col-md-4">
                                <input type="text" id="orignaldate" runat="server" class="form-control" required="required" placeholder="Enter Original Date"/>
                            </div>
                        </div>
                        <br />
                        <br />

                        <div class="form-group">
                            <label class="col-md-2 control-label bold">ISO Standard</label>
                            <div class="col-md-10">
                                <asp:DropDownList  id="isostandard" runat="server" class="form-control" required="required" AutoPostBack="true"></asp:DropDownList>
                            </div>
                        </div>
                            <br />
                        <br />
                </div>
            </div>
                <div class="row">
                    <div class="form-actions">
                        <div class="col-md-offset-3 col-md-9">
                        <asp:Button CssClass="btn btn-info" Text="Submit" runat="server" id="submit" OnClick="submit_Click" />
                            <asp:Button CssClass="btn btn-warning" Text="Cancel" runat="server" id="Cancle" OnClick="Cancel_Click" />
                            <a href="/Adminpanel/Dashboard.aspx" Class="btn btn-danger">Exit</a>
                    </div>
                    </div>
                </div>
        </div>
    </div>
</div>
</div>
</div>
</asp:Content>