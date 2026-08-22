<%@ Page Title="ISO 55001:2024 - Competent Certification Services" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="iso-9001-2015.aspx.cs" Inherits="ISO90012015" %>
<%@ Register Src="~/WebUserControl.ascx" TagPrefix="uc" TagName="Globalbtn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"  rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager runat="server" ID="SM1"></asp:ScriptManager>
     <div class="rts-banner-area banner-bg-h7">
        <div class="container">
            <div class="row">
                <div class="col-xl-7">
                    <div class="rts-banner-wrapper-seven">
                        <h1 class="banner-title">Apply For <span style="font-weight:bolder;"> ISO 55001:2024 CERTIFICATION </span>@ RS 9000/- ONLY</h1>
                        <p class="disc">Get your company certified with ISO 55001:2024 Certification.<br /> Submit the application form, soon we will connect with you.<br />
                            We have a team of skilled and competent Consultants, Auditors and Assessors who have vast experience in the field of ISO Certifications.
                        </p>
                        <ul>
                           <li>»  Submit the required list of documents to start the process.</li>
                           <li>»  Our expert team will send a best quotation ASAP.</li>
                           <li>»   We have 9+ Years of experience in field of ISO certification services.</li>
                           <li>»   Process application within 24x7 Hours.</li>
                           <li>»   More the 5000+ organization certified till now.</li>
                           <li>»   We are offering ISO Certifications at very reasonable Price.</li>
                        </ul>
                        <br />
                        <a class="rts-btn btn-secondary-3  col-12" href="tel:+918467844058">8467844058</a>
                        <a class="rts-btn btn-secondary-3 col-12" style="margin-left:15px;" href="#footercontact">Arrange Callback</a>
                    </div>
                </div>
                <div class="col-xl-5">
                    <div class="rts-contact-form-area six">
                        <div class="container">
                            <div class="row">
                                <div class="col-12">
                                    <div class="rts-contact-fluid">
                                        <div class="rts-title-area contact-fluid text-center">
                                            <h2 class="title">Request a Free Sample of ISO</h2>
                                        </div>
                                        <div class="form-wrapper">
                                            <div id="form-messages1"></div>
                                             <div id="contact-form1" >
                                                <div class="name-email">
                                                    <asp:TextBox ID="name" runat="server" TextMode="SingleLine" placeholder="Full Name*" ValidationGroup="group1"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="dname" runat="server" ErrorMessage="Please Fill Your Name" ControlToValidate="name" ValidationGroup="group1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                                <asp:TextBox ID="email" runat="server" TextMode="Email" placeholder="Email*" ValidationGroup="group1"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="demail" runat="server" ErrorMessage="Please Fill Your email" ControlToValidate="email" ValidationGroup="group1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="phone" runat="server" placeholder="Mobile Number" TextMode="Number" ValidationGroup="group1"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="pphone" runat="server" ErrorMessage="Please Fill Your phone Number" ControlToValidate="phone" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="company" runat="server" placeholder="Company Name" TextMode="SingleLine" ValidationGroup="group1"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="dcompany" runat="server" ErrorMessage="Please Fill Your Company Name" ControlToValidate="company" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>
                                                 <asp:UpdatePanel ID="UP1" runat="server">
                                            <ContentTemplate>
                                                <table style="padding:20px; position:relative;">
                                                    <tr>
                                                        <td style="width:150px"> <asp:TextBox ID="txtcaptcha" CssClass="form-control" runat="server" placeholder="Fill Captcha"></asp:TextBox>
                                                            
                                                        </td>
                                                        <td style="height:80px;width:120px;padding-left:10px" >
                                                        <asp:Image ID="imgcapture" runat="server" cssclass="border border-dark" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black"  />
                                                    </td>
                                                        <td class="pb-4">
                                                    <asp:Button ID="refbutton" runat="server" CssClass="" ForeColor="Green" Text="Refresh" BorderStyle="None" BackColor="White" CausesValidation="false" onclick="refbutton_Click" />
                                                            </td>
                                                        
                                                </tr>
                                                    </table>
                                                <asp:RequiredFieldValidator ID="txtcaptcha1" runat="server"  ErrorMessage="Please Input Captcha" ControlToValidate="txtcaptcha" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                                <asp:Button ID="save" runat="server" Text="Submit" BackColor="#df0a0a" ForeColor="White" CausesValidation="true" CssClass="rts-btn btn-white header-one-btn quote-btn" ValidationGroup="group1" OnClick="save_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="shape-banner-6">
            <img src="assets/images/banner/shape/shape-h6.png" alt="shape-images" data-sal-delay="150" data-sal="slide-right" data-sal-duration="800" />
        </div>
    </div>
      <div class="rts-about-area rts-section-gap about-home-seven">
        <div class="container">
            <div class="row">
                <h3 class="text-center">About ISO 55001:2024</h3>
            </div>
            <div class="row">
                <div class="col-xl-5 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="rts-single-service-h2">
                        <a href="#" class="thumbnail">
                            <img src="assets/images/about/main/55.jpg" alt="About ISO 55001:2024" />
                        </a>
                        <div class="body">
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="rts-single-service-h2">
                             <div class="body">
                         What is ISO 55001?</br></br>
ISO 55001 is a critical part of the ISO 55000 family of standards, focusing specifically on the requirements for a robust asset management system. This standard details the criteria necessary for establishing, implementing, maintaining, and improving an asset management system. It builds upon the principles outlined in ISO 55000 by providing specific requirements that organizations need to meet to achieve their asset management objectives effectively and efficiently.</br>
Why is ISO 55001 important?</br></br>
ISO 55001 is vital because it provides a clear structure for organizations to manage their assets systematically and sustainably. Effective asset management as prescribed by ISO 55001 helps organizations control the lifecycle of assets, ensuring that the performance, risk, and expenditure related to assets are balanced to meet organizational goals. This standard is crucial for organizations looking to maximize value through their asset management processes while minimizing operational risks and costs, thereby enhancing overall organizational performance and stakeholder satisfaction.</br></br>
                        </div>
                            </div>
                        </div>
        </div>
        </div>
      </div>

    <uc:Globalbtn ID="globalbtn" runat="server" />
     <div class="rts-client-area ptb--50 client-bg">
        <div class="container">
            <div class="row">
                <div class="title-area text-center working-process">
                    <h2 class="title">Process Required For ISO Certification</h2>
                    <span>We made it very simple to take iso certification online, you just need to fill the application form, follow the given below steps and you are certified.</span>
                </div>
            </div>
            <div class="row pt--50">
                <div class="col-12">
                  <div class="row">
                       <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12" style="background-color:white;border:solid 1px #f3f3f3;padding:15px;text-align:center;">
                            <div class="content">
                                <a href="tel:+918467844058">
                                <h5 class="title"><i class="far fa-phone" style="font-size:45px;color:dodgerblue;"></i></h5>
                                <p class="disc">Free Consultation</p></a>
                            </div>
                    </div>
                       <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12" style="background-color:white;border:solid 1px #f3f3f3;padding:15px;text-align:center;">
                            <div class="content">
                                 <a href="#footercontact">
                                <h5 class="title"><i class="far fa-envelope" style="font-size:45px;color:dodgerblue;"></i></h5>
                                <p class="disc">E-mail Documents</p>
                                </a>
                            </div>
                    </div>
                       <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12" style="background-color:white;border:solid 1px #f3f3f3;padding:15px;text-align:center;">
                            <div class="content">
                                <a href="payment.aspx">
                                <h5 class="title">   <i class="far fa-rupee-sign" style="font-size:45px;color:dodgerblue;"></i></h5>
                                <p class="disc">Make Payment Online</p>
                                </a>
                            </div>
                    </div>
                       <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12" style="background-color:white;border:solid 1px #f3f3f3;padding:15px;text-align:center;">
                            <div class="content">
							<a href="#footercontact">
                                <h5 class="title"><i class="far fa-certificate" style="font-size:45px;color:dodgerblue;"></i></h5>
                                <p class="disc">Get ISO Certificate</p>
								</a>
                            </div>
                    </div>
                      </div>
                    
                </div>
            </div>
        </div>
    </div>

    <div class="rts-client-area ptb--50 client-bg">
        <div class="container">
            <div class="row">
                <div class="title-area text-center working-process">
                    <h2 class="title">Document Required For ISO Certification</h2>
                </div>
            </div>
            <div class="row pt--50">
                <div class="col-12">
                  <div class="row">
                       <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12" style="background-color:lightblue;border:solid 1px #f3f3f3;padding:15px;text-align:center;">
                            <div class="content">
                                <p class="disc">Business Registration Proof</p>
                            </div>
                    </div>
                       <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12" style="background-color:lightblue;border:solid 1px #f3f3f3;padding:15px;text-align:center;">
                            <div class="content">
                                <p class="disc">Letter Head or Visiting Card</p>
                            </div>
                    </div>
                       <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12" style="background-color:lightblue;border:solid 1px #f3f3f3;padding:15px;text-align:center;">
                            <div class="content">
                                <p class="disc">Sales & Purchase Invoice/GST</p>
                            </div>
                    </div>
                       <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12" style="background-color:lightblue;border:solid 1px #f3f3f3;padding:15px;text-align:center;">
                            <div class="content">
                                <p class="disc">Scope Of Business</p>
                            </div>
                    </div>
                      </div>
                    
                </div>
            </div>
        </div>
    </div>

    <div class="rts-about-area about-home-seven" id="contact">
            <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="rts-single-service-h2" style="border:none;">
                             <div class="body">
            <div class="row">
                <div class="col-12">

                         <div class="container">
            <div class="row">
                <div class="title-area text-center working-process">
                    <h2 class="title">Happy Clientele</h2>
                       <span style="position: absolute;content: '';height: 2px;width: 70px;background-color: #c10006;left: 50%;-webkit-transform: translateX(-50%);transform: translateX(-50%);"></span>
                    <br />
                    <span>We have 9+ Years of experience in the field of ISO certification services. We have a team of skilled and competent Consultants, Auditors and Assessors who have vast experience in the field of ISO Certifications, we have done more then 5000+ organization certified till now. Some of our valuable client are given below.</span>
                </div>
            </div>

                   <%-- <div class="rts-contact-fluid rts-section-gap" style="box-shadow:none;padding:0">
                        <div class="rts-title-area contact-fluid text-center">
                            <p class="pre-title"><h3>Happy Clientele</h3>
                                <span style="position: absolute;content: '';height: 2px;width: 70px;background-color: #c10006;left: 50%;-webkit-transform: translateX(-50%);transform: translateX(-50%);"></span>
                            </p>
                            <h6 style="font-size:16px;padding:30px;text-align:justify;">We have 8+ years of experience in ISO Certification and have 4000+ clients all around the world including Govt., MNC’s & Pvt. Organizations.
We offer Best services at affordable price.</h6>
                        </div>--%>
                  
                              <div class="row pt--50">
                <div class="col-12">
                  <div class="row" style="--bs-gutter-x:0rem;">
                       <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="content">
                                <img src="assets/images/flogo1.jpg" />
                            </div>
                    </div>
                       <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="content">
                                <img src="assets/images/flogo2.jpg" />
                            </div>
                    </div>
                      </div>
                     <div class="row" style="--bs-gutter-x:0rem;">
                       <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="content">
                                <img src="assets/images/flogo3.jpg" />
                            </div>
                    </div>
                       <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="content">
                                <img src="assets/images/flogo4.jpg" />
                            </div>
                    </div>
                      </div>
                    
                </div>
            </div>

                        </div>
                    </div>
                </div>
                                 </div>
                            </div>
                        </div>
                </div>
        </div>


      <div class="rts-cta-area ptb--30 mt--10 mb--10"  style="background:linear-gradient(-47deg, #e31e24 0%, #630003 100%);}">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="cta-three-wrapper">
                        <h5 class="title">Still Confused ? Talk to our Experts</h5>
                        <a class="rts-btn btn-secondary-3" href="#footercontact">Consult Now</a>
                    </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>