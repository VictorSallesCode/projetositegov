<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
    <link rel="stylesheet" href="style/styleteste.css" />
    <style>
        .tabs {
            display: flex;
            justify-content: center;
            margin: 40px 0 20px 0;
            gap: 10px;
            flex-wrap: wrap;
        }
        .tab-btn {
            padding: 12px 28px;
            border: none;
            border-radius: 25px 25px 0 0;
            background: #EFF4FF;
            color: #205AB8;
            font-weight: bold;
            cursor: pointer;
            font-size: 1.1em;
            transition: background 0.2s;
        }
        .tab-btn.active {
            background: #205AB8;
            color: #fff;
        }
        .tab-content {
            display: none;
            animation: fadeIn 0.5s;
        }
        .tab-content.active {
            display: block;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to   { opacity: 1; }
        }
        .vacina-cards {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin-bottom: 40px;
        }
        .vacina-card {
            background: #fff;
            border: 1px solid #205AB8;
            border-radius: 18px;
            box-shadow: 0 2px 8px rgba(32,90,184,0.07);
            width: 260px;
            padding: 22px 18px;
            text-align: center;
            transition: transform 0.2s;
        }
        .vacina-card:hover {
            transform: translateY(-6px) scale(1.03);
            box-shadow: 0 6px 18px rgba(32,90,184,0.13);
        }
        .vacina-card h3 {
            color: #205AB8;
            margin-bottom: 10px;
            font-size: 1.2em;
        }
        .vacina-card p {
            color: #333;
            font-size: 1em;
        }
        @media (max-width: 800px) {
            .vacina-cards {
                flex-direction: column;
                align-items: center;
            }
        }
        
        /* Calendário em lista selecionável (acordeão) */
.accordion-list {
  max-width: 700px;
  margin: 0 auto 40px auto;
  padding: 0;
  list-style: none;
}

.accordion-item {
  border-bottom: 1px solid #dbe6f7;
}

.accordion-title {
  background: #205AB8;
  color: #fff;
  cursor: pointer;
  padding: 18px 24px;
  font-size: 1.1em;
  font-weight: bold;
  border: none;
  width: 100%;
  text-align: left;
  outline: none;
  transition: background 0.2s;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.accordion-title:hover, .accordion-title.active {
  background: #174080;
}

.accordion-content {
  background: #f7faff;
  display: none;
  padding: 18px 28px;
  animation: fadeIn 0.4s;
}

.accordion-content.open {
  display: block;
}

.accordion-arrow {
  transition: transform 0.3s;
}

.accordion-title.active .accordion-arrow {
  transform: rotate(90deg);
}

.vacina__titulo {
  font-weight: bold;
  color: #205AB8;
  margin-bottom: 4px;
}
.vacina__dose {
  color: #174080;
  font-size: 0.95em;
}
.vacina__doencas-evitadas {
  font-weight: bold;
  color: #205AB8;
}
.vacina__obs {
  display: block;
  margin-top: 8px;
  font-size: 0.97em;
  color: #555;
}
.vacina__link {
  color: #205AB8;
  text-decoration: underline;
}
.tabs .tab-btn img {
  max-width: 250px;
  max-height: 250px;
  width: auto;
  height: auto;
  vertical-align: middle;
  margin-right: 8px;
}
    </style>
</head>
<body>
    <div class="titulo-principal">
        <div class="titulo-principal__texto">
            <h1>Calendário Nacional de Vacinação</h1>
        </div>
    </div>

    <div class="tabs">
        <button class="tab-btn active" data-tab="criancas"><img src="img/criancas.png" alt="Crianças"></br>Crianças</button>
        <button class="tab-btn" data-tab="adolescentes"><img src="img/adolescentes.png" alt="Adolescentes"></br>Adolescentes</button>
        <button class="tab-btn" data-tab="adultos"><img src="img/adultos.jpg" alt="Adultos"></br>Adultos</button>
        <button class="tab-btn" data-tab="idosos"><img src="img/idosos.png" alt="Idosos"></br>Idosos</button>
        <button class="tab-btn" data-tab="gestantes"> <img src="img/gestantes.jpg" alt="Gestantes"></br>Gestantes</button>
    </div>

    <div class="tab-content inactive" id="criancas">
      <ul class="accordion-list">
  <li class="accordion-item">
    <button class="accordion-title">
      Ao nascer
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina BCG <span class="vacina__dose">(1 dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          formas graves da
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/t/tuberculose" target="_blank">tuberculose</a>
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Hepatite B <span class="vacina__dose">(1 dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-b" target="_blank">Hepatite B</a>
        </p>
      </div>
    </div>
  </li>
  <li class="accordion-item">
    <button class="accordion-title">
      2 meses
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Penta <span class="vacina__dose">(1ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/difteria" target="_blank">Difteria</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/t/tetano-neonatal" target="_blank">Tétano</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/coqueluche" target="_blank">Coqueluche</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-b" target="_blank">Hepatite B</a>
          e infecções causadas por Haemophilus influenzae B
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina VIP (Poliomielite) <span class="vacina__dose">(1ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/p/poliomielite" target="_blank">Poliomielite</a>
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina VPC10 (Pneumocócica) <span class="vacina__dose">(1ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          Doenças pneumocócicas invasivas
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina VORH (Rotavírus) <span class="vacina__dose">(1ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/r/rotavirus" target="_blank">Gastrenterite viral</a>
        </p>
      </div>
    </div>
  </li>
  <li class="accordion-item">
    <button class="accordion-title">
      3 meses
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Men C (Meningocócica C) <span class="vacina__dose">(1ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          Doença meningocócica
        </p>
      </div>
    </div>
  </li>
  <li class="accordion-item">
    <button class="accordion-title">
      4 meses
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Penta <span class="vacina__dose">(2ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/difteria" target="_blank">Difteria</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/t/tetano-neonatal" target="_blank">Tétano</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/coqueluche" target="_blank">Coqueluche</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-b" target="_blank">Hepatite B</a>
          e infecções causadas por Haemophilus influenzae B
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina VIP (Poliomielite) <span class="vacina__dose">(2ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/p/poliomielite" target="_blank">Poliomielite</a>
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina VPC10 (Pneumocócica) <span class="vacina__dose">(2ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          Doenças pneumocócicas invasivas
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina VORH (Rotavírus) <span class="vacina__dose">(2ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/r/rotavirus" target="_blank">Gastrenterite viral</a>
        </p>
      </div>
    </div>
  </li>
  <li class="accordion-item">
    <button class="accordion-title">
      5 meses
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Men C (Meningocócica C) <span class="vacina__dose">(2ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          Doença meningocócica
        </p>
      </div>
    </div>
  </li>
  <li class="accordion-item">
    <button class="accordion-title">
      6 meses
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Penta <span class="vacina__dose">(3ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/difteria" target="_blank">Difteria</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/t/tetano-neonatal" target="_blank">Tétano</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/coqueluche" target="_blank">Coqueluche</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-b" target="_blank">Hepatite B</a>
          e infecções causadas por Haemophilus influenzae B
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina VIP (Poliomielite) <span class="vacina__dose">(3ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/p/poliomielite" target="_blank">Poliomielite</a>
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina INF3 (Influenza) <span class="vacina__dose">(1ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/g/gripe-influenza" target="_blank">Gripe (Influenza)</a>
        </p>
        <span class="vacina__obs">
          <b>Obs.:</b> Está recomendada a vacinação anual para crianças de 6 meses a menores
          de 6 anos de idade (5 anos, 11 meses 29 dias de idade). Nesta faixa etária as
          crianças que irão receber a vacina pela primeira vez, recomenda-se 2 doses, com
          intervalo de 30 dias entre elas. Para aquelas que receberam em anos anteriores pelo
          menos 1 dose, recomenda-se dose única nos anos subsequentes.
        </span>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Covid-19 <span class="vacina__dose">(1ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          As formas graves e complicações pela
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/covid-19" target="_blank">covid-19</a>
        </p>
        <span class="vacina__obs">
          <b>Obs.:</b> A vacina contra a Covid-19 está incluída no Calendário Nacional da
          Criança, com esquema de duas doses (aos 6 e 7 meses) para a vacina Spikevax
          (Moderna) e três doses (aos 6, 7 e 9 meses) para a Comirnaty® (Pfizer). Caso a
          criança não inicie ou complete o esquema até os 9 meses, a vacinação pode ser feita
          até os 4 anos, 11 meses e 29 dias, seguindo o histórico vacinal e os intervalos
          mínimos de 4 semanas entre a 1ª e 2ª dose e 8 semanas entre a 2ª e 3ª. Para crianças
          imunocomprometidas, recomenda-se o esquema de três doses aos 6, 7 e 9 meses.
        </span>
      </div>
    </div>
  </li>
  <li class="accordion-item">
    <button class="accordion-title">
      7 meses
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Covid-19 <span class="vacina__dose">(2ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          As formas graves e complicações pela
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/covid-19" target="_blank">covid-19</a>
        </p>
        <span class="vacina__obs">
          <b>Obs.:</b> A vacina contra a Covid-19 está incluída no Calendário Nacional da
          Criança, com esquema de duas doses (aos 6 e 7 meses) para a vacina Spikevax
          (Moderna) e três doses (aos 6, 7 e 9 meses) para a Comirnaty® (Pfizer). Caso a
          criança não inicie ou complete o esquema até os 9 meses, a vacinação pode ser feita
          até os 4 anos, 11 meses e 29 dias, seguindo o histórico vacinal e os intervalos
          mínimos de 4 semanas entre a 1ª e 2ª dose e 8 semanas entre a 2ª e 3ª. Para crianças
          imunocomprometidas, recomenda-se o esquema de três doses aos 6, 7 e 9 meses.
        </span>
      </div>
    </div>
  </li>
  <li class="accordion-item">
    <button class="accordion-title">
      9 meses
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Covid-19 <span class="vacina__dose">(3ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          As formas graves e complicações pela
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/covid-19" target="_blank">covid-19</a>
        </p>
        <span class="vacina__obs">
          <b>Obs.:</b> A vacina contra a Covid-19 está incluída no Calendário Nacional da
          Criança, com esquema de duas doses (aos 6 e 7 meses) para a vacina Spikevax
          (Moderna) e três doses (aos 6, 7 e 9 meses) para a Comirnaty® (Pfizer). Caso a
          criança não inicie ou complete o esquema até os 9 meses, a vacinação pode ser feita
          até os 4 anos, 11 meses e 29 dias, seguindo o histórico vacinal e os intervalos
          mínimos de 4 semanas entre a 1ª e 2ª dose e 8 semanas entre a 2ª e 3ª. Para crianças
          imunocomprometidas, recomenda-se o esquema de três doses aos 6, 7 e 9 meses.
        </span>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Febre Amarela <span class="vacina__dose">(1ª dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/f/febre-amarela" target="_blank">Febre Amarela</a>
        </p>
      </div>
    </div>
  </li>
  <li class="accordion-item">
    <button class="accordion-title">
      12 meses
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina VPC10 (Pneumocócica) <span class="vacina__dose">(Reforço)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          Doenças pneumocócicas invasivas
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Men C (Meningocócica C) <span class="vacina__dose">(Reforço)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          Doença meningocócica
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina SCR (Tríplice viral) <span class="vacina__dose">(1 dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/s/sarampo" target="_blank">Sarampo</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/c/caxumba" target="_blank">Caxumba</a>
          e
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/r/rubeola" target="_blank">Rubéola</a>
        </p>
      </div>
    </div>
  </li>
  <li class="accordion-item">
    <button class="accordion-title">
      15 meses
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina VIP (Poliomielite) <span class="vacina__dose">(Reforço)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/p/poliomielite" target="_blank">Poliomielite</a>
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina SCRV (Tetraviral) <span class="vacina__dose">(1 dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/s/sarampo" target="_blank">Sarampo</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/c/caxumba" target="_blank">Caxumba</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/r/rubeola" target="_blank">Rubéola</a>
          e
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/c/catapora-varicela" target="_blank">varicela</a>
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Hepatite A <span class="vacina__dose">(1 dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-a" target="_blank">Hepatite A</a>
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina DTP (Tríplice bacteriana) <span class="vacina__dose">(1º reforço)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/difteria" target="_blank">Difteria</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/t/tetano-neonatal" target="_blank">Tétano</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/c/coqueluche" target="_blank">Coqueluche</a>
        </p>
      </div>
    </div>
  </li>
  <li class="accordion-item">
    <button class="accordion-title">
      4 anos
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina Febre Amarela <span class="vacina__dose">(Reforço)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/f/febre-amarela" target="_blank">Febre Amarela</a>
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina DTP (Tríplice bacteriana) <span class="vacina__dose">(2º reforço)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/difteria" target="_blank">Difteria</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/t/tetano-neonatal" target="_blank">Tétano</a>,
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/coqueluche" target="_blank">Coqueluche</a>
        </p>
      </div>
      <div class="menu">
        <p class="vacina__titulo">
          Vacina varicela <span class="vacina__dose">(1 dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/catapora-varicela" target="_blank">Varicela</a>
        </p>
      </div>
    </div>
  </li>
  <li class="accordion-item">
    <button class="accordion-title">
      9 e 14 anos
      <span class="accordion-arrow">&#9654;</span>
    </button>
    <div class="accordion-content">
      <div class="menu">
        <p class="vacina__titulo">
          Vacina HPV4 <span class="vacina__dose">(1 dose)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          Infecções por
          <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hpv" target="_blank">Papilomavírus Humano</a>
        </p>
        <!-- <div class="vacina__obs">
            <p style="margin-bottom: 0px;">
                <b>Obs.:</b> Para vítimas de abuso sexual, de 9 a 14 anos a recomendação é de
                duas doses. De 15 a 45, a recomendação é de três doses, considerando o histórico
                vacinal contra o HPV. Pessoas com HIV/aids, transplantadas de órgãos sólidos e
                de medula óssea, pacientes com câncer e aqueles com papilomatose respiratória
                recorrente (PPR) devem tomar três doses, com prescrição médica. Para menores de
                18 anos, é necessário consentimento dos pais ou responsáveis para a vacinação
                contra o HPV como tratamento adjuvante da PPR. O intervalo entre as doses deve
                ser confirmado na UBS.
            </p>
        </div> -->
      </div>
    </div>
  </li>
</ul>
    </div>

    <div class="tab-content" id="adolescentes">
  <ul class="accordion-list">
    <li class="accordion-item">
      <button class="accordion-title">
        11 a 14 anos
        <span class="accordion-arrow">&#9654;</span>
      </button>
      <div class="accordion-content">
        <div class="menu">
          <p class="vacina__titulo">
            Vacina HPV4 <span class="vacina__dose">(1 dose)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            Infecções por
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hpv" target="_blank" rel="noopener noreferrer">Papilomavírus Humano</a>
          </p>
        </div>
      </div>
    </li>
    <li class="accordion-item">
      <button class="accordion-title">
        10 a 24 anos
        <span class="accordion-arrow">&#9654;</span>
      </button>
      <div class="accordion-content">
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Hepatite B <span class="vacina__dose">(3 doses)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-b" target="_blank" rel="noopener noreferrer">Hepatite B</a>
          </p>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina dT (Dupla bacteriana adulto) <span class="vacina__dose">(1 dose de reforço a cada 10 anos)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/difteria" target="_blank" rel="noopener noreferrer">Difteria</a>
            e
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/t/tetano-acidental" target="_blank" rel="noopener noreferrer">Tétano</a>
          </p>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Febre Amarela <span class="vacina__dose">(1 dose)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/f/febre-amarela" target="_blank" rel="noopener noreferrer">Febre Amarela</a>
          </p>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina SCR (Tríplice viral) <span class="vacina__dose">(1 ou 2 doses)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/s/sarampo" target="_blank" rel="noopener noreferrer">Sarampo</a>,
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/caxumba" target="_blank" rel="noopener noreferrer">Caxumba</a>
            e
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/r/rubeola" target="_blank" rel="noopener noreferrer">Rubéola</a>
          </p>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina VPP23 (Pneumocócica 23-valente) <span class="vacina__dose">(2 doses)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            Doenças pneumocócicas invasivas
          </p>
          <div class="vacina__obs">
            <p style="margin-bottom: 0px;">
              <b>Obs.:</b> Para povos indígenas
            </p>
          </div>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina menACWY (Meningocócica ACWY) <span class="vacina__dose">(1 dose)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            Doença meningocócica
          </p>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Varicela <span class="vacina__dose">(2 doses)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/catapora-varicela" target="_blank" rel="noopener noreferrer">Varicela</a>
          </p>
        </div>
      </div>
    </li>
  </ul>
</div>

    <div class="tab-content" id="adultos">
  <ul class="accordion-list">
    <li class="accordion-item">
      <button class="accordion-title">
        Hepatite B
        <span class="accordion-arrow">&#9654;</span>
      </button>
      <div class="accordion-content">
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Hepatite B <span class="vacina__dose">(3 doses)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-b" target="_blank" rel="noopener noreferrer">Hepatite B</a>
          </p>
        </div>
      </div>
    </li>
    <li class="accordion-item">
      <button class="accordion-title">
        dT (Dupla bacteriana adulto)
        <span class="accordion-arrow">&#9654;</span>
      </button>
      <div class="accordion-content">
        <div class="menu">
          <p class="vacina__titulo">
            Vacina dT (Dupla bacteriana adulto) <span class="vacina__dose">(1 dose de reforço a cada 10 anos)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/difteria" target="_blank" rel="noopener noreferrer">Difteria</a>
            e
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/t/tetano-acidental" target="_blank" rel="noopener noreferrer">Tétano</a>
          </p>
        </div>
      </div>
    </li>
    <li class="accordion-item">
      <button class="accordion-title">
        Febre Amarela
        <span class="accordion-arrow">&#9654;</span>
      </button>
      <div class="accordion-content">
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Febre Amarela <span class="vacina__dose">(1 dose)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/f/febre-amarela" target="_blank" rel="noopener noreferrer">Febre Amarela</a>
          </p>
        </div>
      </div>
    </li>
    <li class="accordion-item">
      <button class="accordion-title">
        Tríplice Viral (SCR)
        <span class="accordion-arrow">&#9654;</span>
      </button>
      <div class="accordion-content">
        <div class="menu">
          <p class="vacina__titulo">
            Vacina SCR (Tríplice viral) <span class="vacina__dose">(1 ou 2 doses)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/s/sarampo" target="_blank" rel="noopener noreferrer">Sarampo</a>,
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/caxumba" target="_blank" rel="noopener noreferrer">Caxumba</a>
            e
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/r/rubeola" target="_blank" rel="noopener noreferrer">Rubéola</a>
          </p>
        </div>
      </div>
    </li>
    <li class="accordion-item">
      <button class="accordion-title">
        Pneumocócica 23-valente (VPP23)
        <span class="accordion-arrow">&#9654;</span>
      </button>
      <div class="accordion-content">
        <div class="menu">
          <p class="vacina__titulo">
            Vacina VPP23 (Pneumocócica 23-valente) <span class="vacina__dose">(2 doses)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            Doenças pneumocócicas invasivas
          </p>
          <div class="vacina__obs">
            <p style="margin-bottom: 0px;">
              <b>Obs.:</b> Para povos indígenas
            </p>
          </div>
        </div>
      </div>
    </li>
    <li class="accordion-item">
      <button class="accordion-title">
        Varicela
        <span class="accordion-arrow">&#9654;</span>
      </button>
      <div class="accordion-content">
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Varicela <span class="vacina__dose">(2 doses)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/catapora-varicela" target="_blank" rel="noopener noreferrer">Varicela</a>
          </p>
          <div class="vacina__obs">
            <p style="margin-bottom: 0px;">
              <b>Obs.:</b> Para povos indígenas
            </p>
          </div>
        </div>
      </div>
    </li>
  </ul>
</div>

    <div class="tab-content" id="idosos">
  <ul class="accordion-list">
    <li class="accordion-item">
      <button class="accordion-title">
        A partir dos 60 anos
        <span class="accordion-arrow">&#9654;</span>
      </button>
      <div class="accordion-content">
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Hepatite B <span class="vacina__dose">(3 doses)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-b" target="_blank" rel="noopener noreferrer">Hepatite B</a> e suas complicações
            (<a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-d" target="_blank" rel="noopener noreferrer">Hepatite D</a>)
          </p>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina dT (Dupla bacteriana adulto) <span class="vacina__dose">(1 dose de reforço a cada 10 anos)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/difteria" target="_blank" rel="noopener noreferrer">Difteria</a> e
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/t/tetano-acidental" target="_blank" rel="noopener noreferrer">Tétano</a>
          </p>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Febre Amarela <span class="vacina__dose">(1 dose)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/f/febre-amarela" target="_blank" rel="noopener noreferrer">Febre Amarela</a>
          </p>
          <div class="vacina__obs">
            <p style="margin-bottom: 0px;">
              <b>Obs.:</b> Para população idosa que reside ou que irá se deslocar para áreas de alto risco epidemiológico, avaliar com profissional de saúde.
            </p>
          </div>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina VPP23 (Pneumocócica 23-valente) <span class="vacina__dose">(2 doses)</span>
        </p>
        <p class="vacina__doencas">
          <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
          Doenças pneumocócicas invasivas
        </p>
        <div class="vacina__obs">
          <p style="margin-bottom: 0px;">
            <b>Obs.:</b> Para idosos acamados e/ou institucionalizados e povos indígenas
          </p>
        </div>
      </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Varicela <span class="vacina__dose">(2 doses)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/catapora-varicela" target="_blank" rel="noopener noreferrer">Varicela</a>
          </p>
          <div class="vacina__obs">
            <p style="margin-bottom: 0px;">
              <b>Obs.:</b> Para povos indígenas
            </p>
          </div>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina INF3 (Influenza) <span class="vacina__dose">(1 dose anual)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/g/gripe-influenza" target="_blank" rel="noopener noreferrer">Gripe (Influenza)</a>
          </p>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Covid-19 <span class="vacina__dose">(1 dose semestral)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            As formas graves e complicações pela
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/covid-19" target="_blank" rel="noopener noreferrer">covid-19</a>
          </p>
        </div>
      </div>
    </li>
  </ul>
</div>

    <div class="tab-content" id="gestantes">
  <ul class="accordion-list">
    <li class="accordion-item">
      <button class="accordion-title">
        A qualquer tempo no pré-natal
        <span class="accordion-arrow">&#9654;</span>
      </button>
      <div class="accordion-content">
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Hepatite B <span class="vacina__dose">(3 doses)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-b" target="_blank" rel="noopener noreferrer">Hepatite B</a>
            e suas complicações
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/h/hepatites-virais/hepatite-d" target="_blank" rel="noopener noreferrer">(Hepatite D)</a>
          </p>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina dT (Dupla bacteriana adulto)
            <span class="vacina__dose">(1 dose de reforço a cada 10 anos)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/difteria" target="_blank" rel="noopener noreferrer">Difteria</a>
            e
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/t/tetano-acidental" target="_blank" rel="noopener noreferrer">Tétano</a>
          </p>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Influenza (trivalente, fragmentada, inativada)
            <span class="vacina__dose">(1 dose anual)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/g/gripe-influenza" target="_blank" rel="noopener noreferrer">Gripe (Influenza)</a>
          </p>
        </div>
        <div class="menu">
          <p class="vacina__titulo">
            Vacina Covid-19 <span class="vacina__dose">(1 dose a cada gestação)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            As formas graves e complicações pela
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/c/covid-19" target="_blank" rel="noopener noreferrer">covid-19</a>
          </p>
        </div>
      </div>
    </li>
    <li class="accordion-item">
      <button class="accordion-title">
        A partir da 20ª semana gestacional
        <span class="accordion-arrow">&#9654;</span>
      </button>
      <div class="accordion-content">
        <div class="menu">
          <p class="vacina__titulo">
            Vacina dTpa (Tríplice bacteriana acelular tipo adulto)
            <span class="vacina__dose">(1 dose)</span>
          </p>
          <p class="vacina__doencas">
            <span class="vacina__doencas-evitadas">Doenças evitadas:</span>
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/d/difteria" target="_blank" rel="noopener noreferrer">Difteria</a>,
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-a-z/t/tetano-neonatal" target="_blank" rel="noopener noreferrer">Tétano</a>
            e
            <a class="vacina__link" href="https://www.gov.br/saude/pt-br/assuntos/saude-de-a-az/c/coqueluche" target="_blank" rel="noopener noreferrer">Coqueluche</a>
          </p>
        </div>
      </div>
    </li>
  </ul>
</div>

    <script>
        // Tabs (layers) JS
        document.querySelectorAll('.tab-btn').forEach(btn => {
            btn.addEventListener('click', function() {
                document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
                document.querySelectorAll('.tab-content').forEach(tab => tab.classList.remove('active'));
                this.classList.add('active');
                document.getElementById(this.dataset.tab).classList.add('active');
            });
        });

        // Accordion (lista selecionável) - abre com um clique, fecha com outro clique
        document.querySelectorAll('.tab-content').forEach(tab => {
        tab.querySelectorAll('.accordion-title').forEach(btn => {
            btn.addEventListener('click', function() {
                const isActive = this.classList.contains('active');
                // Fecha todos os acordeões desta aba
                tab.querySelectorAll('.accordion-title').forEach(b => b.classList.remove('active'));
                tab.querySelectorAll('.accordion-content').forEach(c => c.classList.remove('open'));
                // Se não estava ativo, abre; se já estava, fecha tudo
                if (!isActive) {
                    this.classList.add('active');
                    this.nextElementSibling.classList.add('open');
                }
            });
        });
    });
    </script>


