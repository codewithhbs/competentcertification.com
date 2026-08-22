<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager runat="server" ID="SM1"></asp:ScriptManager>
     <div class="rts-client-area ptb--50 client-bg">
        <div class="container">
            <div class="row">
                <div class="title-area text-center working-process">
                    <h2 class="title">Payment Details</h2>
                </div>
            </div>
            <div class="row pt--50">
                <div class="col-12">
                  <div class="row">
                       <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12" style="background-color:white;border:solid 1px #f3f3f3;padding:5px;font-size:14px;">
                            <div class="content">
                              <strong>Account Name:</strong> COMPETENT CERTIFICATION SERVICES<br />
                              <strong>Account Type:</strong> CURRENT<br />
                              <strong>Account Number:-</strong> 2958002100005701<br />
                              <strong>Bank Name :-</strong>PUNJAB NATIONAL BANK<br />
                              <strong>IFS Code:-</strong>PUNB0874700<br />
                              <strong>Branch :-</strong> PNB BANK ROHINI SECTOR – 9, DELHI -110085
                            </div>
                    </div>
                       <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12" style="background-color:white;border:solid 1px #f3f3f3;padding:5px;">
                            <div class="content">
                              <strong>Account Name:</strong> SBI ACCOUNT DETAILS <br />
                              <strong>Account Type:</strong> SAVING<br />
                              <strong>Account Number:-</strong> 33803338318<br />
                              <strong>Bank Name:-</strong>SBI<br />
                              <strong>IFS Code:-</strong> SBIN0007895<br />
                              <strong>Branch:-</strong> BAWANA DELHI
                            </div>
                    </div>
                       <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12" style="background-color:white;border:solid 1px #f3f3f3;padding:5px;">
                            <div class="content">
                               <strong>UPI ID:</strong> 9910464227@YBL<br />
                               <strong>Name:</strong> MAGAN JANGRA
                            </div>
                    </div>
                      </div>
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>

