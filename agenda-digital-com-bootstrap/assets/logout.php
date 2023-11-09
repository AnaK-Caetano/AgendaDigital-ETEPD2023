<?php
// Inicia a sessão, se ainda não estiver iniciada
session_start();

// Destroi todas as variáveis de sessão
session_destroy();

// Redireciona para a página de login (ou qualquer outra página que você desejar)
header("Location: login-bs.html");
exit;
?>
