<%@ Page Title="" Language="C#" MasterPageFile="~/Adminpanel/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Adminpanel_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="page-content-wrapper">
        <div class="page-content">
            <div class="page-head">
                <div class="page-title">
                    <h1>Dashboard</h1>
                </div>
                <div class="page-toolbar">
                    <ul class="page-breadcrumb breadcrumb">
                        <li><a href="#">Home</a><i class="fa fa-circle"></i></li>
                        <li><span class="active">Dashboard</span></li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="dashboard-stat dashboard-stat-v2 blue">
                        <div class="visual">
                            <i class="icon-link"></i>
                        </div>
                        <div class="details">
                            <div class="number">
                                <%--<asp:Label ID="tomeeting" runat="server" CssClass="control-label" ></asp:Label>--%>
                            </div>
                            <div class="desc"> Standard </div>
                        </div>
                        <a class="more" href="/Adminpanel/ISOStandard"> Add Category
                            <i class="m-icon-swapright m-icon-white"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="dashboard-stat dashboard-stat-v2 red">
                        <div class="visual">
                            <i class="icon-calculator"></i>
                        </div>
                        <div class="details">
                            <div class="number">
                            </div>
                            <div class="desc">Application </div>
                        </div>
                        <a class="more" href="/Adminpanel/Application"> Add Application
                            <i class="m-icon-swapright m-icon-white"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="dashboard-stat dashboard-stat-v2 green">
                        <div class="visual">
                            <i class="icon-calendar"></i>
                        </div>
                        <div class="details">
                            <div class="number">
                            </div>
                            <div class="desc"> Contact </div>
                        </div>
                        <a class="more" href="/Adminpanel/ContactList"> Contact List
                            <i class="m-icon-swapright m-icon-white"></i>
                        </a>
                    </div>
                </div>
              <%--  <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="dashboard-stat dashboard-stat-v2 purple">
                        <div class="visual">
                            <i class="icon-users"></i>
                        </div>
                        <div class="details">
                            <div class="number">
                            </div>
                            <div class="desc">All Order</div>
                        </div>
                        <a class="more" href="#"> View All
                            <i class="m-icon-swapright m-icon-white"></i>
                        </a>
                    </div>
                </div>--%>
            </div>
           </div>
    </div>
</asp:Content>

