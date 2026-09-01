<%@ Page Title="" Language="C#" MasterPageFile="~/Adminpanel/MasterPage.master" AutoEventWireup="true" CodeFile="EditISOStandard.aspx.cs" Inherits="Adminpanel_EditISOStandard" %>

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
                                        <span class="caption-subject bold uppercase">Edit ISO Standard</span>
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
                                          <asp:Button CssClass="btn btn-info" Text="Update" runat="server" id="submit" OnClick="submit_Click" />
                                            <a href="~/Adminpanel/Dashboard.aspx" Class="btn btn-danger">Exit</a>
                                        </div>
                                      </div>
                                   </div>
                            </div>
                       </div>
                    </div>
                </div>
            </div>
</asp:Content>