<%@ Page Title="" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AysMochiMacaron.User.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container  ">

      <div class="row">
        <div class="col-md-6 ">
          <div class="img-box">
            <img src="../TemplateFiles/images/profiterol.jpg" alt="">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                Biz Ays Coffee & Desert'ız
              </h2>
            </div>
            <p>
              Avrupa'nın pek çok çeşit macaronu, 
              ozel tasarım macaron kutularımızı ve 
              uzak doğu lezzeti ve geleneksel 
              Asya Mutfağı tatlımızı burada birleştirdik.
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
