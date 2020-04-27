function enter() {
    login_box.style.display = 'block';
}

function fechar() {
    login_box.style.display = 'none';
}

function calcular_custo() {
    var calculo = Number(numero_trafos.value) * 1399.99;
    valor.innerHTML = calculo.toFixed(2);
    plano_recomendado.innerHTML = 'Plano Avaliado';
    var calculo_mensal = calculo / 12;
    valor.innerHTML = calculo_mensal.toFixed(2);
}