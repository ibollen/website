<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/About.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ORBITA.UI.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="Stylesheet" href="css/web.css" type="text/css" />
    <style type="text/css">

  img{ border:none;}

 .introduce {
	height:518px;
    margin-bottom: 20px;
	position:relative;
}

.text {
	width:850px;
	height:auto;
	background-color:#000;
	FILTER:alpha(opacity=60);
	opacity:0.7;
	-moz-opacity:0.7;
	position:absolute;
	left:45px;
	bottom:0px;
}
.imgtext {
	width:848px;
	height:auto;
	float:left;
	padding:10px;
	color:#fff;
	font-size:12px;
	line-height:200%;
}

    </style>
    <script type="text/javascript">
        $(function () {
            $(".imgtext").hide();
            $(".introduce").hover(function () {
                $(".imgtext", this).slideToggle(500);
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input id="mynav" type="hidden" value="About ORBITA" />
    <div id="mycompany">
        <div class="clear"></div>
        <div class="introduce">
            <h1>ORBITA TECHNOLOGY CO.,LTD.</h1>

            <div style="margin-top: 10px; margin-left: 45px;">
                <img src="Images/factory.jpg" alt="ORBITA" style=""/>
            </div>
            
            <div class="text">

                <div class="imgtext">

                <p>
                    &nbsp;&nbsp;orbita is one of the reputable card operated
                        lock and hotel locking systems manufactuers for the hospitality industry in china,established
                        to offer the best quality products with professional and effective service to our
                        customers.
                </p>
                <p>
                    &nbsp;&nbsp;orbita series of product is a product of years
                        of experience integrated with the advanced technology from siemens, dallas, atmel,
                        philip etc. the cooperation with fidelio and other popular pms system has just enabled
                        our locking system to a wide range of compatibility.
                </p>
                <p>
                    &nbsp;&nbsp;more than 5000 hotels, resorts and cruise ships
                        in 100 countries in the world are using our card locks, digital safes and other satisfactory
                        hotel intelligent accessories that have been becoming another attractive point for
                        the hotel.
                </p>
                <p>
                    &nbsp;&nbsp;orbita believes that every customer is a customer
                        for life. producing products of fine quality with our experience and knowledge is
                        our source of pride and customer's satisfaction is our only criterion in service.
                </p>

            </div>

            </div>
        </div>
        <div class="clear"></div>
        <div class="cer">
            <a name="cer"></a>
            <h1>Certificates</h1>
            <ul class="cerlist">
                <li>
                    <ul>
                        <li><a href="images/orbita_iso_1.gif" target="_blank">
                            <img src="images/orbita_iso.gif" alt="" /></a></li>
                        <li>certificate: iso 9001:2008</li>
                    </ul>
                </li>

                <li>
                    <ul>
                        <li><a href="images/orbita_logo_1.gif" target="_blank">
                            <img src="images/orbita_logo.gif" alt="" /></a></li>
                        <li>certificate: orbita logo</li>
                    </ul>
                </li>

                <li>
                    <ul>
                        <li><a href="images/orbita_product_patent_1.gif" target="_blank">
                            <img src="images/orbita_product_patent.gif" alt="" /></a></li>
                        <li>certificate:product patent</li>
                    </ul>
                </li>

                <li>
                    <ul>
                        <li><a href="images/orbita_soft_certificate_1.gif" target="_blank">
                            <img src="images/orbita_soft_certificate.gif" alt="" /></a></li>
                        <li>certificate: lock system</li>
                    </ul>
                </li>

                <li>
                    <ul>
                        <li><a href="images/orbita_ce_1.gif" target="_blank">
                            <img src="images/orbita_ce.gif" alt="" /></a></li>
                        <li>certificate: ce</li>
                    </ul>
                </li>

                <li>
                    <ul>
                        <li><a href="images/orbita_fc_1.gif" target="_blank">
                            <img src="images/orbita_fc.gif" alt="" /></a></li>
                        <li>certificate: fc</li>
                    </ul>
                </li>

                <li>
                    <ul>
                        <li><a href="images/orbita_fidelio.gif" target="_blank">
                            <img src="images/orbita_fidelio_0.gif" alt="" /></a></li>
                        <li>certificate: fidelio interface</li>
                    </ul>
                </li>
				
				<li>
                    <ul>
                        <li><a href="images/BHMA_ANSI_CERTIFICATE.jpg" target="_blank">
                            <img src="images/BHMA_ANSI_CERTIFICATE_small.jpg" alt="" width="150" height="184" /></a></li>
                        <li>ANSI/BHMA CERTIFICATE</li>
                    </ul>
                </li>
				
            </ul>
        </div>

    </div>
</asp:Content>
