<%@ Page Title="" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AysMochiMacaron.User.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- book section -->
  <section class="book_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          Bize Ulaşın
        </h2>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
            <form action="">
              <div>
                  <br />
                 <p style="font-family:'Times New Roman'; font-size:25px"> <i class="fa fa-phone"></i> İletişim </p>
                  <p style="font-family:'Times New Roman'; font-size:21px ">+01 1234567890</p>
                  <br />
                   <p style="font-family:'Times New Roman'; font-size:25px"> <i class="fa fa-map-marker"></i> Adres </p>
                  <p style="font-family:'Times New Roman'; font-size:21px ">Levent Sk. NO:8 Beşiktaş/İstanbul, Türkiye</p>
                  <br />
                   <p style="font-family:'Times New Roman'; font-size:25px"> <i class="fa fa-envelope"></i> Mail Adresimiz </p>
                  <p style="font-family:'Times New Roman'; font-size:21px "> <a href="https://mail.google.com/mail/u/2/#inbox" >Ayse@gmail.com</a> </p>
               <%-- <input type="text" class="form-control" placeholder="Adınız" />--%>
              </div>
             <%-- <div>
                <input type="text" class="form-control" placeholder="Telefon Numaranız" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email Adresiniz" />
              </div>
                <div>
                <input type="text" class="form-control" placeholder="Şikayetiniz" />
              </div>--%>
              <%--<div class="btn_box">
                <button>
                  Gonder
                </button>
              </div>--%>
            </form>
          </div>
        </div>
        <div class="col-md-6">
          <div class="map_container ">
            <div id="googleMap"></div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end book section -->

</asp:Content>
