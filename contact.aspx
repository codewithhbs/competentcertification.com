<%@ Page Title="Contact us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager runat="server" ID="SM1"></asp:ScriptManager>
     <div class="rts-breadcrumb-area breadcrumb-bg bg_image">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 breadcrumb-1">
                    <h1 class="title">Contact Us</h1>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="bread-tag">
                        <a href="/">Home</a>
                        <span> / </span>
                        <a href="/Contact" class="active">Contact Us</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="rts-contact-area rts-section-gap">
        <div class="container">
            <div class="row g-5">
                <!-- single contact area -->
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                    <div class="single-contact-one-inner">
                        <div class="thumbnail">
                            <img src="/assets/images/contact/01.png" alt="" />
                        </div>
                        <div class="content">
                            <div class="icone">
                                <img src="/assets/images/contact/shape/01.svg" alt="" />
                            </div>
                            <div class="info">
                                <span>Call Us 24/7</span>
                                <a href="tel:+918467844058">
                                    <h5>+918467844058</h5>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single contact area end -->
                <!-- single contact area -->
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                    <div class="single-contact-one-inner">
                        <div class="thumbnail">
                            <img src="/assets/images/contact/02.png" alt="" />
                        </div>
                        <div class="content">
                            <div class="icone">
                                <img src="/assets/images/contact/shape/02.svg" alt="" />
                            </div>
                            <div class="info">
                                <span>Make A Quote</span>
                                <a href="mailto:Sales@competentcertification.com">
                                    <h6 style="font-size:11pt;">Sales@competentcertification.com</h6>
                                </a>
                                <a href="mailto:competentcertification@gmail.com">
                                <h6 style="font-size:11pt;">competentcertification@gmail.com</h6>
                                    </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                    <div class="single-contact-one-inner">
                        <div class="thumbnail">
                            <img src="/assets/images/contact/03.png" alt="" />
                        </div>
                        <div class="content">
                            <div class="icone">
                                <img src="/assets/images/contact/shape/03.svg" alt="" />
                            </div>
                            <div class="info">
                                <span>Office Location</span>
                                <a href="#">
                                    <p style="font-weight:600;color:black">Office No 989, 2nd floor Main Bus Stand, Jhanda Chowk Bawana, Delhi-110039</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--<div class="rts-contact-map-area">
        <div class="contaciner-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="contact-map-area-fluid">
                        <iframe class="contact-map" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14602.288851207937!2d90.47855065!3d23.798243149999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1663151706353!5m2!1sen!2sbd" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        <img class="location" src="assets/images/contact/shape/location.svg" alt="Business_map" />
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>