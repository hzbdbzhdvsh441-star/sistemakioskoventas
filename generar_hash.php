<?php
// Archivo para generar el hash de la contraseña 'admin'
$hash = password_hash('admin', PASSWORD_DEFAULT);
echo $hash;
?>
