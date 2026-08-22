<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager runat="server" ID="SM1"></asp:ScriptManager>

       <div class="rts-banner-area-two eight">
        <div class="swiper mySwiperh3_banner">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class=" bg_banner-three bg_image rts-section-gap eight">
                        <div class="container">
                            <div class="row">
                                <div class="col-12">
                                    <div class="banner-three-inner">
                                        <span class="subtitle-banner">Expert Guidence Model</span>
                                        <!-- type headline start-->
                                        <h1 class="title cd-headline clip is-full-width">
                                            ISO Services
                                        </h1>
                                      <%--  <p class="disc">
                                            Urna justo odio ultrices aliquet vitae sollicitudin gravida congue in sapien eget sociosqu
                                            mollis lacus cursus per primis quis nascetur nisl risus porta issues business solution
                                            service
                                        </p>--%>
                                        <div class="button-group">
                                            <a href="/contact" class="rts-btn btn-primary-2">Get Started</a>
                                            <a href="/About" class="rts-btn btn-primary-2 transparent">About Us</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class=" bg_banner-three eight-2 bg_image rts-section-gap">
                        <div class="container">
                            <div class="row">
                                <div class="col-12">
                                    <div class="banner-three-inner">
                                        <span class="subtitle-banner">Make Your Strategy Strong</span>
                                        <!-- type headline start-->
                                        <h1 class="title cd-headline clip is-full-width">
                                            ISO 
                                        </h1>
                                       <%-- <p class="disc">
                                            Urna justo odio ultrices aliquet vitae sollicitudin gravida congue in sapien eget sociosqu
                                            mollis lacus cursus per primis quis nascetur nisl risus porta issues business solution
                                            service
                                        </p>--%>
                                        <div class="button-group">
                                            <a href="/contact" class="rts-btn btn-primary-2">Get Started</a>
                                            <a href="/about" class="rts-btn btn-primary-2 transparent">About Us</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class=" bg_banner-three eight-3 bg_image rts-section-gap">
                        <div class="container">
                            <div class="row">
                                <div class="col-12">
                                    <div class="banner-three-inner">
                                        <span class="subtitle-banner">Make Your Strategy Strong</span>
                                        <!-- type headline start-->
                                        <h1 class="title cd-headline clip is-full-width">
                                            Expert Solution
                                        </h1>
                                       <%-- <p class="disc">
                                            Urna justo odio ultrices aliquet vitae sollicitudin gravida congue in sapien eget sociosqu
                                            mollis lacus cursus per primis quis nascetur nisl risus porta issues business solution
                                            service
                                        </p>--%>
                                        <div class="button-group">
                                            <a href="/contact" class="rts-btn btn-primary-2">Get Started</a>
                                            <a href="/about" class="rts-btn btn-primary-2 transparent">About Us</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="swiper-navigation">
            <span class="swiper-button-prev"></span>
            <span class="swiper-button-next"></span>
        </div>
    </div>
    <!-- rts banner area end -->

    <div class="rts-business-solution rts-business-solution5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12 first-child">
                    <div class="rts-business-solution-right">
                        <div class="title-area">
                            <%--<span class="sub">About Us</span>--%>
                            <h2 class="title">Here is your perfect Certification Services</h2>
                        </div>
                        <div class="content-area">
                            <p class="disc">
                                <strong>Competent Certification Services</strong> is an organization that specializes in all types of certification services established according to ISO / IEC 17021: 2011 requirement. Competent certification services is fastest growing organization in India in the field of certification services and we provide a scope of certification plans that are focused on providing a way for the producers, manufacturer and providers to meet the market's needs, whether they rely on upon control or customer driven. Competent is the vision of quality change through their wonderful services we deals in all types of certification services.
                            </p>
                            <!-- single business solution -->
                            <div class="single-business-solution-2">
                                <div class="content">
                                    <h6 class="title">Best Certification Solutions Since 2018</h6>
                                </div>
                            </div>
                            <!-- single business solution end -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <!-- business solution left -->
                    <div class="rts-business-solution-left">
                        <div class="thumbnail">
                            <img src="/assets/images/business-goal/03.jpg" alt="">
                            <div class="shape1">
                                <img src="/assets/images/business-goal/icon/setting.png" alt="">
                            </div>
                            <div class="shape2">
                                <img src="/assets/images/business-goal/icon/setting.png" alt="">
                            </div>
                            <div class="shape3">
                                <img src="/assets/images/business-goal/icon/bag.png" alt="">
                            </div>
                        </div>
                    </div>
                    <!-- business solution left End -->
                </div>
            </div>
        </div>
    </div>


    <!-- latest service area -->
    <div class="rts-service-area rts-section-gap bg-service-h2">
        <div class="container">
            <div class="row">
                <div class="title-area service-h2">
                    <h2 class="title">Service We Provide</h2>
                </div>
            </div>
            <div class="row g-5 mt--10">
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                    <!-- single service start -->
                    <div class="rts-single-service-h2">
                        <a href="/ISO-9001-2015" class="thumbnail">
                            <img src="assets/images/11.png" alt="Service_image" />
                        </a>
                        <div class="body">
                            <a href="/ISO-9001-2015">
                                <h5 class="title" style="text-align:center">Quality Management System</h5>
                            </a>
                            <p class="disc">
                                ISO 9001 Certification is a Global standard for Quality Management Systems (QMS)
                            </p>
                            <a href="/ISO-9001-2015" class="btn-red-more">Learn More<i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <!-- single service End -->
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                    <!-- single service start -->
                    <div class="rts-single-service-h2">
                        <a href="/ISO-14001-2015" class="thumbnail">
                            <img src="assets/images/222.png" alt="Service_image" />
                        </a>
                        <div class="body">
                            <a href="/ISO-14001-2015">
                                <h5 class="title"style="text-align:center">Enviromental Management</h5>
                            </a>
                            <p class="disc">
                                ISO 14001 Certification is intended to set up a globally acknowledged system
                            </p>
                            <a href="/ISO-14001-2015" class="btn-red-more">Learn More<i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <!-- single service End -->
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                    <!-- single service start -->
                    <div class="rts-single-service-h2">
                        <a href="/ISO-13485-2016" class="thumbnail">
                            <img src="assets/images/13485.png" alt="Service_image" />
                        </a>
                        <div class="body">
                            <a href="/ISO-13485-2016">
                                <h5 class="title"style="text-align:center">Quality Management System</h5>
                            </a>
                            <p class="disc">
                                ISO 13485 Certification is a standardization rule outfitted by the International
                            </p>
                            <a href="/ISO-13485-2016" class="btn-red-more">Learn More<i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <!-- single service End -->
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                    <!-- single service start -->
                    <div class="rts-single-service-h2">
                        <a href="/ISO-45001-2018" class="thumbnail">
                            <img src="assets/images/333.png" alt="Service_image" />
                        </a>
                        <div class="body">
                            <a href="/ISO-45001-2018">
                                <h5 class="title" style="text-align:center"> HEALTH & SAFETY MANAGEMENT SYSTEMS</h5>
                            </a>
                            <p class="disc">
                                ISO 45001 Certification Occupational health and safety management systems
                            </p>
                            <a href="/ISO-45001-2018" class="btn-red-more">Learn More<i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <!-- single service End -->
                </div>
            </div>
        </div>
    </div>
    <div class="rts-service-details-area rts-section-gap">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                    <!-- service details left area start -->
                    <div class="service-detials-step-1">
                        
                        <h4 class="title">What is ISO Certification</h4>
                        <p >ISO certification refers to the process of obtaining certification from the International Organization for Standardization (ISO). ISO is an independent, non-governmental international organization that develops and publishes standards to ensure quality, safety, and efficiency in various industries.<br />ISO certification demonstrates that an organization has implemented and maintains a management system that meets the requirements of specific ISO standards. The certification is awarded by an accredited third-party certification body after assessing the organization's compliance with the relevant standards.<br />ISO offers a wide range of standards covering different aspects of business operations, including quality management, environmental management, information security, occupational health and safety, energy management, and more. Some of the popular ISO standards include ISO 9001 (Quality Management), ISO 14001 (Environmental Management), ISO 27001 (Information Security Management), and ISO 45001 (Occupational Health and Safety Management).</p>
                       
                    </div>
                  
                </div>
                <!--rts blog wizered area -->
                <div class="col-xl-2 col-md-12 col-sm-12 col-12 mt_lg--60 pl--50 pl_md--0 pl-lg-controler pl_sm--0">
                   
                </div>
                <!-- rts- blog wizered end area -->
            </div>
        </div>
    </div>
</asp:Content>