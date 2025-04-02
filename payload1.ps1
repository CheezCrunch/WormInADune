$encryptedBytes = [Convert]::FromBase64String("...")

$aesAlg = [System.Security.Cryptography.AesManaged]::new()
$aesAlg.Key = [Text.Encoding]::UTF8.GetBytes([Convert]::FromBase64String("..."))
$aesAlg.IV = [Text.Encoding]::UTF8.GetBytes([Convert]::FromBase64String("..."))
$aesAlg.Mode = [System.Security.Cryptography.CipherMode]::CBC
$aesAlg.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7

$decryptor = $aesAlg.CreateDecryptor($aesAlg.Key, $aesAlg.IV)

$decryptedBytes = $decryptor.TransformFinalBlock($encryptedBytes, 0, $encryptedBytes.Length)

# work in progress!
