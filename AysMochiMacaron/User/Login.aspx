<%@ Page Title="" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AysMochiMacaron.User.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);

        };
    </script>

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" ></asp:Label>
                </div>
                <h2>Giriş Yap</h2>              
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">
                        <img id="userLogin" src="../Images/Login.jpg" alt="" class="img-thumbnail" />
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form_container">
                        <div>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Kullanıcı adı girilmesi zorunludur" ControlToValidate="txtUsername"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı Giriniz"></asp:TextBox>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Şifre girilmesi zorunludur" ControlToValidate="txtPassword"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Şifre Giriniz" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="btn-box">
                            <asp:Button ID="btnLogin" runat="server" Text="Giriş Yap" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white"
                                onClick="btnLogin_Click"/>
                            <span class="pl-3 text-info">Yeni Kullanıcı? <a href="Registration.aspx">Buradan Kayıt Ol..</a> </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
