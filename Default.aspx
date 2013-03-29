<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
    <p>
        <input type="button" id="doit" name="doit" value="Do it!" />
    </p>
    <div id="message">
        <%--<div class="title">Mensagem</div>--%>
        <div class="description">
            <div class="mark"></div>
            A alteração de sua senha foi concluída.
        </div>
    </div>

    <div id="message5">
        <div class="description">
            <div class="mark"></div>
            Preencha corretamente todas as informações.
        </div>
    </div>

    <div id="message3">
        <div class="description">
            <div class="mark"></div>
            A senha informada não está correta.
        </div>
    </div>

    <br />
    <br />

    <div id="message2">
        <div class="description">
            A alteração de sua senha foi concluída.
        </div>
    </div>

    <div id="message6">
        <div class="description">
            <div class="mark"></div>
            Preencha corretamente todas as informações.
        </div>
    </div>

    <div id="message4">
        <div class="description">
            <div class="mark"></div>
            A senha informada não está correta.
        </div>
    </div>

    <script type="text/javascript" language="javascript">
        $(function () {
            $('#doit').click(function () {
                $('#message').fadeIn(200);

                setTimeout(function () {
                    $('#message').fadeOut(2000);
                }, 4000);
            });
        });
    </script>
</asp:Content>