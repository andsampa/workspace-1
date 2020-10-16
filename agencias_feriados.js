function preenchercombo(lista) {
    var combo = "";

    for (contador = 0; contador < lista.length; contador++) {
        combo +=
            "<option value='" + lista[contador].id + "'>" +
            lista[contador].nomeAgencia + "</option>";
    }

    combo +=
    "<option value='fe'>Todos os feriados</option>";
    combo +=
    "<option value='ag'>Todas as agências</option>";

    document.getElementById("agenciaslista").innerHTML = combo;
}


function preenchercombo2(lista) {
    var combo = "";

    for (contador = 0; contador < lista.length; contador++) {
        combo +=
            "<option value='" + lista[contador].id + "'>" +
            lista[contador].nomeAgencia + "</option>";
    }
    document.getElementById("agenciaslista").innerHTML = combo;
}

function carregaragencia() {
    var usuariologado = localStorage.getItem("logado");
    if (usuariologado == null) {
        window.location = "index_2.html";
    } else {
        fetch("http://localhost:8080/agencias")
            .then(res => res.json())
            .then(res => preenchercombo(res));
    }
}


function carregaragencia2() {
    var usuariologado = localStorage.getItem("logado");
    if (usuariologado == null) {
        window.location = "index_2.html";
    } else {
        fetch("http://localhost:8080/agencias")
            .then(res => res.json())
            .then(res => preenchercombo2(res));
    }
}


function preenchertabela(lista, agencia) {
    var tabela =
        "<table width='75%' border='1' cellpadding='5' cellspacing='2' align='center'>" +
        "<tr>" +
        "<th>Início</th> <th>Fim</th> <th>Feriado</th> <th>Agência</th>" +
        "</tr>";
    for (contador = 0; contador < lista.length; contador++) {
        tabela +=
            "<tr>" +
            "<td>" + lista[contador].dataInicio + "</td>" +
            "<td>" + lista[contador].dataFim + "</td>" +
            "<td>" + lista[contador].feriado + "</td>" +
            "<td>" + agencia + "</td>" +
            "</td>" +
            "</tr>";
    }
    tabela += "</table>"
    document.getElementById("resultado").innerHTML = tabela;
}


function preenchertabela2(lista) {
    var tabela =
        "<table width='75%' border='1' cellpadding='5' cellspacing='2' align='center'>" +
        "<tr>" +
        "<th>Início</th> <th>Fim</th> <th>Feriado</th> <th>Agência</th>" +
        "</tr>";
    for (contador = 0; contador < lista.length; contador++) {
        tabela +=
            "<tr>" +
            "<td>" + lista[contador].dataInicio + "</td>" +
            "<td>" + lista[contador].dataFim + "</td>" +
            "<td>" + lista[contador].feriado + "</td>" +
            "<td>" + lista[contador].agencias.nomeAgencia + "</td>" +
            "</td>" +
            "</tr>";
    }
    tabela += "</table>"
    document.getElementById("resultado").innerHTML = tabela;
}


function preenchertabela3(lista,feriados) {
    var tabela =
        "<table width='75%' border='1' cellpadding='5' cellspacing='2' align='center'>" +
        "<tr>" +
        "<th>Início</th> <th>Fim</th> <th>Feriado</th> <th>Agência</th>" +
        "</tr>";
    for (contador = 0; contador < lista.length; contador++) {
        tabela +=
            "<tr>" +
            "</td>" +
            "<td>" + lista[contador].nomeAgencia+
            "<td>" + lista[contador].feriados.feriado +
            "</td>" +
            "</td>" +
            "</tr>";
    }
    tabela += "</table>"
    document.getElementById("resultado").innerHTML = tabela;
}



function filtrar() {

    var valor = document.getElementById("agenciaslista").value;
    if (valor != 'fe' && valor != 'ag') {
        fetch("http://localhost:8080/pesquisaagencia/" +
            document.getElementById("agenciaslista").value)
            .then(res => res.json())
            .then(res => preenchertabela(res.feriados,res.nomeAgencia));
    };
    if (valor == 'fe') {
        fetch("http://localhost:8080/feriados/") 
            .then(document.getElementById("agenciaslista").value)
            .then(res => res.json())
            .then(res => preenchertabela2(res));
    };

    if (valor == 'ag') {
        fetch("http://localhost:8080/agencias/") 
            .then(document.getElementById("agenciaslista").value)
            .then(res => res.json())
            .then(res => preenchertabela3(res));
    };
}




function gravar() {
    var dataInicial = document.getElementById("txtDataInicial").value;
    var anoInicial = dataInicial.substring(0, 4);
    var mesInicial = dataInicial.substring(5, 7);
    var diaInicial = dataInicial.substring(8);
    var dataFormatadaInicial = diaInicial + "/" + mesInicial + "/" + anoInicial;

    var dataFinal = document.getElementById("txtDataFinal").value;
    var anoFinal = dataFinal.substring(0, 4);
    var mesFinal = dataFinal.substring(5, 7);
    var diaFinal = dataFinal.substring(8);
    var dataFormatadaFinal = diaFinal + "/" + mesFinal + "/" + anoFinal;

    var mensagem = {
        feriado: document.getElementById("txtFeriado").value,
        dataInicio: dataFormatadaInicial,
        dataFim: dataFormatadaFinal,
        agencias: {
            id: document.getElementById("agenciaslista").value
        }
    }
    var cabecalho={
        method : "POST",
        body: JSON.stringify(mensagem),
        headers:{
            "Content-Type":"application/json"
        }
    }
    fetch("http://localhost:8080/novoferiado",cabecalho)
    .then(res=>res.json())
    .then(res=> {
        window.alert("Feriado gravado com sucesso");
        window.location="cadastro.html";
    })
    .catch(err => {window.alert("Erro");});
}