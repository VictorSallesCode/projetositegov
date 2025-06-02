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
    <header>
      <div class="logo">
        <h1>GovVacinas</h1>
      </div>

     <nav>
      <ul>
          <li><a href="index.html">Início</a></li>
          <li><a href="Criar_Login.html">Cadastro</a></li>  
          <li><a href="cadastro.html">Entrar</a></li>
      </ul>
</nav>
    </header>
    <%
        String nome = (String) session.getAttribute("nome");
        if (nome != null) {
    %>
        <div class="welcome-container">
            <p>Bem-vindo, <strong><%= nome %></strong>!</p>
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
    <div class="titulo-principal">
            <div class="titulo-principal__texto">
             <h1>Calendário de Vacinação</h1>       
            </div>
        </div>
     
  <div class="categorias">

    <div class="categoria">
      <h2>Idosos</h2>
      <img src="img/idosos.png" alt="Idosos">
      <div class="panel">
        <div class="timeline">
          <div class="timeline-item">
            <h4>Gripe</h4>
            <p>Proteção contra Influenza.</p>
          </div>
          <div class="timeline-item">
            <h4>Pneumonia</h4>
            <p>Previne infecções respiratórias graves.</p>
          </div>
          <div class="timeline-item">
            <h4>COVID-19</h4>
            <p>Proteção contra formas graves da doença.</p>
          </div>
          <div class="timeline-item">
            <h4>Herpes Zóster</h4>
            <p>Previne o surgimento de herpes zóster (cobreiro).</p>
          </div>
        </div>
      </div>
    </div>

    <div class="categoria">
      <h2>Crianças</h2>
      <img src="img/criancas.png" alt="Crianças">
      <div class="panel">
        <div class="timeline">
          <div class="timeline-item">
            <h4>BCG</h4>
            <p>Contra formas graves de tuberculose.</p>
          </div>
          <div class="timeline-item">
            <h4>Hepatite B</h4>
            <p>Proteção vitalícia contra hepatite B.</p>
          </div>
          <div class="timeline-item">
            <h4>Poliomielite</h4>
            <p>Evita a paralisia infantil.</p>
          </div>
          <div class="timeline-item">
            <h4>Tríplice Viral</h4>
            <p>Protege contra sarampo, caxumba e rubéola.</p>
          </div>
        </div>
      </div>
    </div>

    <div class="categoria">
      <h2>Adultos</h2>
      <img src="img/adultos.jpg" alt="Adultos">
      <div class="panel">
        <div class="timeline">
          <div class="timeline-item">
            <h4>HPV</h4>
            <p>Previne câncer de colo do útero e verrugas genitais.</p>
          </div>
          <div class="timeline-item">
            <h4>Meningite</h4>
            <p>Protege contra meningites bacterianas graves.</p>
          </div>
          <div class="timeline-item">
            <h4>Febre Amarela</h4>
            <p>Recomendada para áreas de risco.</p>
          </div>
          <div class="timeline-item">
            <h4>Hepatite B</h4>
            <p>Importante para proteção a longo prazo.</p>
          </div>
        </div>
      </div>
    </div>

    <div class="categoria">
      <h2>Gestantes</h2>
      <img src="img/gestantes.jpg" alt="Gestantes">
      <div class="panel">
        <div class="timeline">
          <div class="timeline-item">
            <h4>dTpa</h4>
            <p>Protege mãe e bebê contra coqueluche, difteria e tétano.</p>
          </div>
          <div class="timeline-item">
            <h4>Influenza</h4>
            <p>Previne complicações respiratórias durante a gestação.</p>
          </div>
          <div class="timeline-item">
            <h4>Hepatite B</h4>
            <p>Importante para prevenir a transmissão vertical.</p>
          </div>
          <div class="timeline-item">
            <h4>COVID-19</h4>
            <p>Recomendada para proteção materna.</p>
          </div>
        </div>
      </div>
    </div>

  </div>

        
          
    

      <article class="informativo">
        <h3>Vacinas Essenciais no Brasil: Um Escudo Coletivo</h3>
        <br />
        <p>
          <i
            >O Brasil possui um dos maiores e mais completos programas de
            imunização do mundo, o Programa Nacional de Imunizações (PNI).
            Graças a ele, diversas doenças que antes causavam grande impacto na
            saúde pública foram controladas ou erradicadas. As vacinas
            oferecidas gratuitamente no Sistema Único de Saúde (SUS) são um
            pilar fundamental da saúde coletiva, protegendo indivíduos e a
            comunidade como um todo ao impedir a circulação de patógenos. Além
            do calendário regular, o PNI realiza campanhas de vacinação em
            momentos específicos, como a anual contra a gripe, que imuniza
            milhões de brasileiros. Em situações de emergência ou surtos, novas
            vacinas podem ser incorporadas temporariamente ou permanentemente,
            como ocorreu com a vacina contra a COVID-19, que desempenhou um
            papel vital no controle da pandemia. O compromisso com a vacinação
            em massa é um investimento contínuo na saúde pública, garantindo que
            o Brasil mantenha baixas as taxas de diversas doenças
            imunopreveníveis e promova o bem-estar de sua população.
          </i>
        </p>
      
        <div class="destaque">
          <strong>Importante:</strong> Sua vacinação é essencial para manter a
          saúde pública.
        </div>
       </article>
       <br>
      <article class="informativo-vacinas">
        <h3>Vacinas disponiveis</h3>
        <br />
        <p>
          <i
            >BCG: Protege contra formas graves de tuberculose. Hepatite B:
            Previne a infecção pelo vírus da hepatite B. Penta (Difteria,
            Tétano, Coqueluche, Haemophilus influenzae b e Hepatite B): Combate
            múltiplas doenças em uma só dose. Poliomielite (oral e inativada):
            Essencial para a erradicação da paralisia infantil. Rotavírus:
            Protege contra diarreias graves causadas por rotavírus. Pneumocócica
            10-valente: Previne doenças invasivas causadas por pneumococos.
            Meningocócica C: Protege contra a doença meningocócica do sorogrupo
            C. Febre Amarela: Indispensável em áreas de risco e para viajantes.
            Sarampo, Caxumba e Rubéola (SCR): Vacina tríplice viral. Varicela
            (Catapora): Reduz a incidência e gravidade da doença. Proteção para
            Adolescentes, Adultos e Idosos A imunização não termina na infância.
            Para adolescentes, o calendário inclui doses de reforço e vacinas
            específicas como a HPV, que previne infecções pelo Papilomavírus
            Humano, principal causa do câncer de colo de útero. Para adultos e
            idosos, são recomendados reforços de vacinas como dT (Difteria e
            Tétano) e Febre Amarela, além da vacina contra a gripe (Influenza)
            anual e a pneumocócica para idosos, visando proteger contra doenças
            respiratórias e suas complicações..</i
          >
        </p>
        <br />

        <div class="destaque-vacinas">
          <strong>Vacinas:</strong> Adultos, Idosos, Crianças e Jovens.
        </div>
      </article>
    </main>
<%@ include file="include/footer.jsp" %>
    <footer>
      <p>&copy; 2025 GovVacinas. Todos os direitos reservados.</p>
    </footer>

    <script src="src/script.js"></script>
  </body>
</html>
