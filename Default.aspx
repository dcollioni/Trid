<%@ Page Title="Trid" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html>
<head>
    <title>Trid</title>
    
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="Images/favicon.png" type="image/png" />
    <link rel="Stylesheet" href="Styles/Site.css" type="text/css" />
</head>
<body>
    <div id="wrapper">
        <div class="page active transitionable" id="home">
            <div id="header">
                <div id="logo">
                    <img src="Images/Trid-logo-200.png" alt="Trid logo" />
                </div>
            </div>

            <div id="menu">
                <div class="aboutUs">
                    Somos
                    <span class="mark"></span>
                </div>
                <div class="services">
                    Fazemos
                    <span class="mark"></span>
                </div>
                <div class="contact">
                    Estamos
                    <span class="mark"></span>
                </div>
            </div>
        </div>

        <div id="subpages" class="transitionable">
            <div class="header"></div>

            <div class="page" id="aboutUs">
                <div class="header">
                    <div class="title">
                        <h1>Somos</h1>
                    </div>
                </div>

                <div class="content">
                    <div class="first">
                        <p>Desenvolvedores <span class="strong">movidos pela inovação</span> que acreditam no poder da tecnologia em transformar o mundo.</p>
                    </div>
                    <div class="second">
                        <p>Pessoas que discutem novas ideias e querem propor uma <span class="strong">mudança positiva</span> nas atuais soluções de TI.</p>
                    </div>
                    <div class="third">
                        <p>Profissionais com experiência em desenvolvimento de softwares <span class="strong">apaixonados pelo que fazem</span>.</p>
                    </div>
                </div>

                <div class="footer">
                    <div>
                        Saiba também o que <a href="#Fazemos" class="services">fazemos</a> e onde <a href="#Estamos" class="contact">estamos</a>.
                    </div>
                </div>

                <div class="back">
                    <a href="#">Subir</a>
                </div>
            </div>

            <div class="page" id="services">
                <div class="header">
                    <div class="title">
                        <h1>Fazemos</h1>
                    </div>
                </div>

                <div class="content">
                    <div>
                        <p>
                            Softwares e aplicativos que <span class="strong">facilitam a vida</span> das pessoas de uma maneira eficiente.
                        </p>
                        <p>
                            De <span class="strong">sites</span> e <span class="strong">sistemas</span> Web a <span class="strong">apps</span> para dispositivos móveis e <span class="strong">extensões</span> para navegadores.
                        </p>
                        <p>
                            Sempre buscamos <span class="strong">excelência</span> nos produtos desenvolvidos, trabalhando com as últimas tecnologias.
                        </p>
                        <p>
                            E, principalmente, <span class="strong">amamos</span> tudo o que fazemos.
                        </p>
                    </div>
                </div>

                <div class="footer">
                    <div>
                        Já sabe quem <a href="#Somos" class="aboutUs">somos</a> e onde <a href="#Estamos" class="contact">estamos</a>?
                    </div>
                </div>

                <div class="back">
                    <a href="#">Subir</a>
                </div>
            </div>

            <div class="page" id="contact">
                <div class="header">
                    <div class="title">
                        <h1>Estamos</h1>
                    </div>
                </div>

                <div class="content">
                    <div>
                        <p>
                            O mundo é a nossa casa. Estamos online em diversas plataformas. Quer nos conhecer melhor?
                        </p>
                    </div>
                    <div class="social">
                        <a href="http://facebook.com/TridOficial" target="_blank"><img src="Images/facebook_59.png" alt="Facebook" /></a>
                        <a href="http://twitter.com/TridOficial" target="_blank"><img src="Images/twitter_59.png" alt="Facebook" /></a>
                        <a href="http://linkedin.com/trid" target="_blank"><img src="Images/linkedin_59.png" alt="Facebook" /></a>
                    </div>
                    <div class="form">
                        <form action="Contact/Send" method="post">
                            <label for="name">Nome</label>
                            <input type="text" id="name" name="name" />
                        
                            <label for="email">E-mail</label>
                            <input type="text" id="email" name="email" />
                        
                            <label for="message">Mensagem</label>
                            <textarea id="message" name="message" cols="50" rows="3"></textarea>

                            <div class="buttons">
                                <input type="reset" name="clear" value="Limpar" />
                                <input type="submit" name="send" value="Enviar" />
                            </div>
                        </form>
                    </div>
                </div>

                <div class="footer">
                    <div>
                        Descubra quem <a href="#Somos" class="aboutUs">somos</a> e o que <a href="#Fazemos" class="services">fazemos</a>.
                    </div>
                </div>

                <div class="back">
                    <a href="#">Subir</a>
                </div>
            </div>
        </div>
    </div>
    
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        $(function () {

            $(window).resize(function () {
                calculateAndSetMargins();

                var item = $('.active')[0].id;
                activate(item);
            });

            var pageLeft, marginLeft;
            calculateAndSetMargins();

            function calculateAndSetMargins() {
                var totalWidth = $(window).width();
                var margins = totalWidth - $('#aboutUs').width();

                marginLeft = margins / 2;
                pageLeft = $('#aboutUs').width() + marginLeft + 4;
                $('#subpages > .page').css('margin-left', marginLeft);
            }

            function toggleHome(show) {
                if (show) {
                    $('#home.page').css('top', '50%');
                    $('#home.page').css('margin-top', '-275px');

                    $('#subpages').css('top', '100%');
                    $('#subpages').css('margin-top', 0);

                    $('.active').removeClass('active');
                    $('#home').addClass('active');
                }
                else {
                    $('#home.page').css('top', '-100%');
                    $('#home.page').css('margin-top', 0);

                    $('#subpages').css('margin-top', '-275px');
                    $('#subpages').css('top', '50%');
                }
            }

            function activate(page) {
                if (page == 'home') {
                    toggleHome(true);
                }
                else {
                    toggleHome();

                    var pageMargins = [];
                    pageMargins["aboutUs"] = 0;
                    pageMargins["services"] = pageLeft;
                    pageMargins["contact"] = 2 * pageLeft;

                    var left = '-' + pageMargins[page] + 'px';

                    $('#subpages').css('left', left);
                }

                $('.active').removeClass('active');
                $('#' + page).addClass('active');
            }

            $('#menu > div').click(function () {
                var item = $(this).attr('class');
                activate(item);
            });

            $('.page .footer a').click(function () {
                var item = $(this).attr('class');
                activate(item);
            });

            $('.page .back a').click(function () {
                activate('home');
            });
        });
    </script>
</body>
</html>