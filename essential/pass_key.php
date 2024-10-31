<?php

// Encryption function
function encrypt($data, $key) {
    $cipher = "aes-256-cbc";
    $ivlen = openssl_cipher_iv_length($cipher);
    $iv = openssl_random_pseudo_bytes($ivlen);
    $ciphertext = openssl_encrypt($data, $cipher, $key, OPENSSL_RAW_DATA, $iv);
    return base64_encode($iv . $ciphertext);
}

// Decryption function
function decrypt($data, $key) {
    $cipher = "aes-256-cbc";
    $ivlen = openssl_cipher_iv_length($cipher);
    $ciphertext = base64_decode($data);
    $iv = substr($ciphertext, 0, $ivlen);
    $ciphertext = substr($ciphertext, $ivlen);
    return openssl_decrypt($ciphertext, $cipher, $key, OPENSSL_RAW_DATA, $iv);
}

function base64url_encode($bin) {
    return str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($bin));
}

function base64url_decode($str) {
    return base64_decode(str_replace(['-', '_'], ['+', '/'], $str));
}

$key = 'RICTMS';

//$encryptedtext = base64url_encode(encrypt("03-9079",$key));
//echo $encryptedtext."<br>";
//echo decrypt(base64url_decode($encryptedtext), $key)."<br>";

?>