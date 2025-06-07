<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Sistema de controle de vacinas" />
    <title>Controle de Vacinas</title>
    <link rel="stylesheet" href="style/style.css" />
    <script
      src="https://kit.fontawesome.com/a076d05399.js"
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <%
        String nome = (String) session.getAttribute("usuario");
        if (nome != null) {
    %>
        <div class="welcome-container">
           <%@ include file="include/statusUsuario.jsp" %>
        </div>
    <%
        }
    %>

    <div class="slider">
      <input type="radio" name="radio-btn" id="radio1" checked />
      <input type="radio" name="radio-btn" id="radio2" />
      <input type="radio" name="radio-btn" id="radio3" />
        <div class="slides">
        <div class="slide">
          <img src="img/vacina.png" alt="Vacina para Adultos" />
        </div>
        <div class="slide">
          <img src="img/vacina2.png" alt="Vacina para Crianças" />
        </div>
        <div class="slide">
          <img src="img/vacina3.png" alt="Vacina para Jovens" />
        </div>
      </div>

      <div class="navigation-manual">
        <label for="radio1" class="manual-btn"></label>
        <label for="radio2" class="manual-btn"></label>
        <label for="radio3" class="manual-btn"></label>
        
      </div>
    </div>
    
     
<%@ include file="include/teste1.jsp" %>
       
          <div class="row box-escuro">
                    <div class="row-content">

                        
                            
    
        
            
                
                
                    <div class="column col-md-12 hidden-mobile-ls hidden-tablet-ls " data-panel="">

                        
                            
    
        

            
                
                    

                    <div class="tile colunas-quadradas" id="fbcbe01a-ef28-4a75-b924-5a3cb0ae8d90">
                        
  

  <div class="cover-banner-tile tile-content" data-gtm-vis-has-fired12863775_393="1">

    
        
          <img src="https://www.gov.br/saude/pt-br/vacinacao/vacinacao/@@govbr.institucional.banner/fbcbe01a-ef28-4a75-b924-5a3cb0ae8d90/@@images/e0d41365-936f-49cb-9427-4c2f7ce9da61.png" width="861" height="96" alt="Titulo: As vacinas disponíveis no Calendário Nacional de Vacinação são:">
        
    

    

    <div class="visualClear"><!-- --></div>
  </div>

                    </div>
                
            

            

            

        
    


                        

                    </div>
                
            
        
    


                        
                            
    
        
            
                
                
                    <div class="column col-md-12 " data-panel="">

                        
                            
    
        

            
                
                    

                    <div class="tile tile-default" id="fbee5724-005d-4e60-83d7-c352bac340a2">
                        
  

  <div class="cover-embed-tile tile-content">
    
      
        <!-- FIXME -->
        <div class="container">
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/b/bcg">
        BCG
    </a>
    <a class=" card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-b">
        Hepatite B
    </a>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/p/pentavalente">
        Penta
    </a>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/p/poliomielite">
        Pólio inativada
    </a>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/r/rotavirus">
        Rotavírus
    </a>
    <div class="card-vacinas-disponiveis">
        Pneumo 10
    </div>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/m/meningite">
        Meningo C
    </a>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/f/febre-amarela">
        Febre amarela
    </a>
    <div class="card-vacinas-disponiveis card-largo card-triplice-viral card-com-link-multiplo">
        <a href="/saude/pt-br/assuntos/saude-de-a-a-z/t/triplice-viral">Tríplice viral</a>
        <br>
        (<a href="/saude/pt-br/assuntos/saude-de-a-a-z/s/sarampo">sarampo</a>,
        <a href="/saude/pt-br/assuntos/saude-de-a-a-z/c/caxumba">caxumba</a>
        e
        <a href="/saude/pt-br/assuntos/saude-de-a-a-z/r/rubeola">rubéola</a>)
    </div>
    <div class="card-vacinas-disponiveis card-largo card-com-link-multiplo">
        Tetra viral
        <br>
        (<a href="/saude/pt-br/assuntos/saude-de-a-a-z/s/sarampo">sarampo</a>,
        <a href="/saude/pt-br/assuntos/saude-de-a-a-z/c/caxumba">caxumba</a>,
        <a href="/saude/pt-br/assuntos/saude-de-a-a-z/r/rubeola">rubéola</a>
        e
        <a href="/saude/pt-br/assuntos/saude-de-a-a-z/c/catapora-varicela">varicela</a>)
    </div>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/dtp">
        DTP
    </a>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-a">
        Hepatite A
    </a>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/catapora-varicela">
        Varicela
    </a>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/dt">
        Difteria e tétano adulto (dT)
    </a>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/m/meningite">
        Meningocócica ACWY
    </a>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hpv">
        HPV quadrivalente
    </a>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/dtpa">
        dTpa
    </a>
    <a class="card-vacinas-disponiveis card-com-link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/covid-19">
        Covid-19
    </a>
    <div class="card-vacinas-disponiveis card-largo">
        Pneumocócica 23-valente (Pneumo 23)
    </div>
</div>

<style>
    .container {
        border: 1px solid black;
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        padding: 80px 38px 30px 38px;
        border-radius: 50px;
        margin-top: -50px;
        justify-content: center;
        align-items: center;
    }

    .card-vacinas-disponiveis {
        border: 1px solid grey;
        padding: 20px;
        border-radius: 20px;
        width: 253px;
        height: 75px;
        text-align: center;
        font-weight: 600;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .card-largo {
        padding: 0;
        line-height: normal;
    }

    .card-largo a {
        line-height: normal;
    }

    .card-com-link {
        background: #EFF4FF;
        transition: 0.3s all ease-in-out;
        filter: drop-shadow(2px 5px 1px grey);
    }

    .card-com-link-multiplo {
        background: #EFF4FF;
        transition: 0.3s all ease-in-out;
        filter: drop-shadow(2px 5px 1px grey);
        display: block;
    }

    #content .card-com-link,
    #content .card-com-link * {
        text-decoration: none;
        color: #205AB8;
        font-weight: 600;
    }

    #content .card-com-link,
    #content .card-com-link * .card-vacinas-disponiveis:last-child,
    .card-triplice-viral {
        padding: 10px;
    }

    @media screen and (min-width: 768px) {
        .card-com-link:hover {
            transform: scale(1.0) translateY(-6px);
        }
    }

    @media screen and (max-width: 768px) {
        .card-vacinas-disponiveis {
            margin-bottom: 10px;
        }
    }
</style>
      

      

      

      
        <div class="visualClear"><!-- --></div>
      
    
  </div>

                    </div>
                
            

            

            

        
    


                        

                    </div>
                
            
        
    


                        

                    </div>
                </div>
    

     <br>
      

<%@ include file="include/footer.jsp" %>

    <script src="src/script.js"></script>
  </body>
</html>
