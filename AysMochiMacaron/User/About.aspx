<%@ Page Title="" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AysMochiMacaron.User.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container  ">

      <div class="row">
        <div class="col-md-6 ">
          <div class="img-box">
            <img src="../TemplateFiles/images/m1.jpg" alt="">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                Biz Ays Mochi & Macaron'uz
              </h2>
            </div>
            <p>
              Avrupa'nın pek çok macaronu, Asya'nın gözdesi mochiler ve 
              özenle hazırlanmış macaron kutularımızı
               sizlerle buluşturuyoruz.
             
            </p>
            <%--<a href="">
              Daha Fazla
            </a>--%>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

</asp:Content>
