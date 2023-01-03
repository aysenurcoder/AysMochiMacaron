<%@ Page Title="" Language="C#" MasterPageFile="~/User/Kullanici.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="AysMochiMacaron.User.Profile" %>

<%@ Import Namespace="AysMochiMacaron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%
        string imageUrl = Session["imageUrl"].ToString();
    %>

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">               
                <h2>Kullanıcı Bilgileri</h2>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title mb-4">
                                <div class="d-flex justify-content-start">
                                    <div class="image-container">
                                        <img src="<%= Utils.GetImageUrl(imageUrl) %>" id="imgProfile" style="width:150px; height:150px"
                                            class="img-thumbnail" />
                                        <div class="middle pt-2">
                                            <a href="Registration.aspx?id=<% Response.Write(Session["userId"]); %>" class="btn  btn-warning">
                                                <i class="fa fa-pencil"></i> Detayları Düzenle
                                            </a>
                                        </div>
                                    </div>

                                    <div class="userData ml-3"> 
                                        <h2 class="d-block" style="font-size :1.5rem; font-weight: bold">
                                            <a href="javascript:void(0);"><%Response.Write(Session["name"]); %></a>
                                        </h2>
                                        <h6 class="d-block">
                                            <a href="javascript:void(0)">
                                                <asp:Label ID="lblUsername" runat="server" ToolTip="Unique Kullanıcı Adı"> 
                                                    @<%Response.Write(Session["username"]); %>
                                                </asp:Label>
                                            </a>
                                        </h6>
                                        <h6 class="d-block">
                                            <a href="javascript:void(0)">
                                                <asp:Label ID="lblEmail" runat="server" ToolTip="Kullanıcı Email" >
                                                    <%Response.Write(Session["email"]); %>
                                                </asp:Label>
                                            </a>
                                        </h6>
                                        <h6 class="d-block">
                                            <a href="javascript:void(0)">
                                                <asp:Label ID="lblCreatedDate" runat="server" ToolTip="Hesap Oluşturuldu" >
                                                    <%Response.Write(Session["createdDate"]); %>
                                                </asp:Label>
                                            </a>
                                        </h6>
                                    </div>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active text-info" id="basicInfo-tab"  data-toggle="tab" href="#basicInfo" role="tab"
                                                aria-control="basicInfo" aria-selected="true"> <i class="fa fa-id-badge mr-2"></i>Temel Bilgi</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link text-info" id="connectedServices-tab" data-toggle="tab" href="#connectedServices" role="tab"
                                                aria-control="connectedServices" aria-selected="false"> <i class="fa fa-clock-o mr-2"></i>Sipariş Geçmişi</a>
                                        </li>  
                                    </ul>

                                    <div class="tab-content ml-1" id="myTabContent">
                                        <%--Temel kullanıcı Bilgisi (Başlanıç)--%>
                                        <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                            <asp:Repeater ID="rUserProfile" runat="server">
                                                <ItemTemplate>
                                                    
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Tam Ad</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Name") %> 
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Kullanıcı Adı</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Username") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Telefon Numarası</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Mobile") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Email</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Email") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Posta Kodu</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("PostCode") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Adres</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Address") %>
                                                        </div>
                                                    </div>
                                                        
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                        <%--Temel kullanıcı Bilgisi (Bitiş)--%>


                                        <%--<%--Sipariş Geçmişi (Başlangıç)--%>
                                        <div class="tab-pane fade" id="connectedServices" role="tabpanel" aria-labelledby="connectedServices-tab">
                                            <asp:Repeater ID="rOrder" runat="server">
                                                <ItemTemplate>
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Sipariş numarası</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            
                                                            <%# Eval("OrderNo") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                  
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Sipariş Tarih</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                           
                                                            <%# Eval("OrderDate") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Ürünler</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            
                                                            <%# Eval("Name") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Ürün sayısı</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            
                                                            <%# Eval("Quantity") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Toplam Ödenen Tutar</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <p style="padding: 10px; border: 1.5px ridge;">₺<%# Eval("TotalPrice") %></p>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div>--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</div>
            

                                                </ItemTemplate>
                                            </asp:Repeater>

                                        </div>
                                        <%--Sipariş Geçmişi (Bitiş)--%>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>

</asp:Content>
