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
                <input type="text" class="form-control" placeholder="Adınız" />
              </div>
              <div>
                <input type="text" class="form-control" placeholder="Telefon Numaranız" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email Adresiniz" />
              </div>
                <div>
                <input type="text" class="form-control" placeholder="Şikayetiniz" />
              </div>
              <div class="btn_box">
                <button>
                  Gonder
                </button>
              </div>
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
