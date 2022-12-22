<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SliderUserControl.ascx.cs" Inherits="AysMochiMacaron.User.SliderUserControl" %>

<section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Macaronlar ve Mochiler :) 
                    </h1>
                    <p>
                        <h4>Mutluluk sadece bir parça ısırıkta olabilir.</h4>                  
                    </p>
                    <div class="btn-box">
                      <a href="Menu.aspx" class ="btn1">
                        Şimdi Sipariş Ver
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Tasarım Kutular :)
                    </h1>
                    <p>
                      <h4>Mutluluk sadece bir kutu içine sığdırılabilir mi ?</h4>
                    </p>
                    <div class="btn-box">
                      <a href="Menu.aspx" class="btn1">
                        Şimdi Sipariş Ver
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Asya Mutfağından Esintiler :)
                    </h1>
                    <p>
                      <h4>Soğuk bir mutluluk.</h4>
                    </p>
                    <div class="btn-box">
                      <a href="Menu.aspx" class="btn1">
                        Şimdi Sipariş Ver
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <ol class="carousel-indicators">
            <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
            <li data-target="#customCarousel1" data-slide-to="1"></li>
            <li data-target="#customCarousel1" data-slide-to="2"></li>
          </ol>
        </div>
      </div>

    </section>
