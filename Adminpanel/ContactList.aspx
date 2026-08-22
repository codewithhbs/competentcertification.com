<%@ Page Title="" Language="C#" MasterPageFile="~/Adminpanel/MasterPage.master" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="Adminpanel_ContactList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
             <div class="page-content-wrapper">
                <div class="page-content">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- BEGIN SAMPLE FORM PORTLET-->
                            <div class="portlet light bordered">
                                <div class="portlet-title">
                                    <div class="caption font-red-sunglo">
                                        <i class="icon-settings font-red-sunglo"></i>
                                        <span class="caption-subject bold uppercase"> Contact List</span>
                                    </div>
                                </div>
                                 <%--<asp:DropDownList ID="searchstatus" CssClass="dropdown" runat="server">
                                      <asp:ListItem>Active</asp:ListItem>  
                                     <asp:ListItem>Done</asp:ListItem>
                                        <asp:ListItem>On Hold</asp:ListItem>
                                        <asp:ListItem>Rejected</asp:ListItem>
                                    </asp:DropDownList>
                                <asp:Button runat="server" ID="search" Text="Search" CssClass="btn btn-info" OnClick="search_Click" />--%>
                                <div class="portlet-body">
                                        <div class="form-body"> 
                             <div class="table-responsive">
                           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
                               <Columns>
                                   <asp:BoundField DataField="id" HeaderText="ID" />
                                   <asp:BoundField DataField="name" HeaderText="Name" />
                                   <asp:BoundField DataField="email" HeaderText="Email" />
                                   <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                                   <asp:BoundField DataField="message" HeaderText="Message" />
                                   <asp:BoundField DataField="created_date" HeaderText="Date" />
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

