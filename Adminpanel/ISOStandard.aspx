<%@ Page Title="" Language="C#" MasterPageFile="/Adminpanel/MasterPage.master" AutoEventWireup="true" CodeFile="ISOStandard.aspx.cs" Inherits="Adminpanel_ISOStandard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-content-wrapper">
<div class="page-content">
    <div class="row">
        <div class="col-md-6">
            <div class="portlet light bordered">
                <div class="portlet-title">
                    <div class="caption font-red-sunglo">
                        <i class="icon-settings font-red-sunglo"></i>
                        <span class="caption-subject bold uppercase">ISO Standard</span>
                    </div>
                </div>
                <div class="portlet-body">
                        <div class="form-body" style="margin:5px">
                                <div class="form-group">
                                <label class="col-md-2 control-label bold">ISO Standard</label>
                                <div class="col-md-10">
                                    <input type="text" id="isoname" runat="server" class="form-control" required="required" placeholder="Enter ISO Standard Name"/>
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
            <div class="col-md-6">
            <div class="portlet light bordered">
                <div class="portlet-title">
                    <div class="caption font-red-sunglo">
                        <i class="icon-settings font-red-sunglo"></i>
                        <span class="caption-subject bold uppercase"> ISO Standard List</span>
                    </div>
                </div>
                    <%--<asp:Button runat="server" ID="search" Text="Search" CssClass="btn btn-info" OnClick="search_Click" />--%>
                <div class="portlet-body">
                        <div class="form-body"> 
                <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="isoname" HeaderText="Name" />
                    <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <a href='<%# ResolveUrl("~/Adminpanel/EditISOStandard.aspx") %>?id=<%# Eval("id") %>'><i class="fa fa-edit"></i></a>
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

