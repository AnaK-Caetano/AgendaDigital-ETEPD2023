

document.getElementById('cpf').addEventListener('input', function (cpf_convert) {
    let cpf = cpf_convert.target.value.replace(/\D/g, '');
    cpf = cpf.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, '$1.$2.$3-$4');
    cpf_convert.target.value = cpf;
});

document.getElementById('cadastro-btn').addEventListener('submit', function(cadastro_sucesso) {
    cadastro_sucesso.preventDefault(); 
    window.location.href = 'msg-cadastro.html';
  });