### DEFINE LOCAL DE CRIAÇÃO DA ESTRUTURA
Set-Location C:\

#IMPORTAÇÃO DOS ARQUIVOS
$Empresas = Import-Csv .\empresas.csv
$administrativo = Import-Csv .\administrativo.csv
$contabil = Import-Csv .\contabil.csv
$anos = Import-Csv .\anos.csv
$declaracoesContabil = Import-Csv .\contabil-declaracoes.csv
$dp = Import-Csv .\dp.csv
$declaracoesDp = Import-Csv .\dp-declaracoes.csv
$fiscal = Import-Csv .\fiscal.csv
$declaracoesFiscal = Import-Csv .\fiscal-declaracoes.csv

###Estruta ADMINISTRATIVO
New-Item -Name "ADMINISTRATIVO" -ItemType Directory
Set-Location "ADMINISTRATIVO"
foreach ($cliente in $Empresas) {
    New-Item -Name $cliente.NOME -ItemType Directory
        Set-Location $cliente.NOME
        foreach ($pasta in $administrativo){
            New-Item -Name $pasta.NOME -ItemType Directory
            Set-Location $pasta.NOME
            Add-Content .\pode_apagar.txt ok
            Set-Location ..
        }
    Set-Location ..
}

Set-Location ..

###Estrutura CONTABIL
New-Item -Name "CONTABIL" -ItemType Directory
Set-Location "CONTABIL"
foreach ($cliente in $empresas) {
    New-Item -Name $cliente.NOME -ItemType Directory
    Set-Location $cliente.NOME
    foreach ($pasta in $contabil) {
        New-Item -Name $pasta.NOME -ItemType Directory
        Set-Location $pasta.NOME
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location "BANCOS"
    foreach ($ano in $anos) {
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location ..
    Set-Location "DECLARACOES"
    foreach ($guia in $declaracoesContabil) {
        New-Item -Name $guia.NOME -ItemType Directory
        Set-Location $guia.NOME
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location ..

    Set-Location "DEMONSTRATIVOS CONTABEIS"
    foreach ($ano in $anos) {
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location ..
    
    Set-Location "DIVERSOS"
    foreach ($ano in $anos) {
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location ..

    Set-Location "IMPOSTOS"
    foreach ($ano in $anos) {
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location ..
    Set-Location ..
}

Set-Location ..

###ESTRUTURA CONTRATOS
New-Item -Name "CONTRATOS" -ItemType Directory
Set-Location "CONTRATOS"
foreach ($cliente in $empresas){
    New-Item -Name $cliente.NOME -ItemType Directory
    Set-Location $cliente.NOME
    New-Item -Name "CERTIFICADO DIGITAL" -ItemType Directory
    Set-Location "CERTIFICADO DIGITAL"
    foreach($ano in $anos){
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location ..
    Set-Location ..
}

Set-Location ..

###ESTRUTURA DP
New-Item -Name "DP" -ItemType Directory
Set-Location "DP"
foreach ($cliente in $empresas){
    New-Item -Name $cliente.NOME -ItemType Directory
    Set-Location $cliente.NOME
    foreach($pasta in $dp){
        New-Item -Name $pasta.NOME -ItemType Directory
        Set-Location $pasta.NOME
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    New-Item -Name "DECLARACOES"
    Set-Location "DECLARACOES"
    foreach ($guia in $declaracoesDp) {
        New-Item -Name $guia.NOME -ItemType Directory
        Set-Location $guia.NOME
        Add-Content .\pode_apagar.txt ok
        foreach ($ano in $anos) {
            New-Item -Name $ano.ANOS -ItemType Directory
            Set-Location $ano.ANOS
            Add-Content .\pode_apagar.txt ok
            Set-Location ..
        }
        Set-Location ..
    }
    Set-Location ..
    
    Set-Location "DIVERSOS"
    foreach ($ano in $anos) {
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location ..
    Set-Location "IMPOSTOS"
    foreach ($ano in $anos) {
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location ..

   Set-Location ..
}

Set-Location ..

###ESTRUTURA FINANCEIRO
New-Item -Name "FINANCEIRO" -ItemType Directory
Set-Location "FINANCEIRO"
foreach ($cliente in $empresas){
    New-Item -Name $cliente.NOME -ItemType Directory
    Set-Location $cliente.NOME
    foreach($ano in $anos){
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location ..
}

Set-Location ..

###Estrutura FISCAL
New-Item -Name "FISCAL" -ItemType Directory
Set-Location "FISCAL"
foreach ($cliente in $empresas){
    New-Item -Name $cliente.NOME -ItemType Directory
    Set-Location $cliente.NOME
    Add-Content .\pode_apagar.txt ok
    foreach ($pasta in $fiscal) {
        New-Item -Name $pasta.NOME -Type Directory
        Set-Location $pasta.NOME
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location "DECLARACOES"
    foreach ($guia in $declaracoesFiscal) {
        New-item -Name $guia.NOME -Type Directory
        Set-Location $guia.NOME
        Add-Content .\pode_apagar.txt ok
        foreach($ano in $anos){
            New-Item -Name $ano.ANOS -ItemType Directory
            Set-Location $ano.ANOS
            Add-Content .\pode_apagar.txt ok
            Set-Location ..
        }
        Set-Location ..
    }
    Set-Location ..
    Set-Location "IMPOSTOS"
    foreach($ano in $anos){
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location ..
    Set-Location "XML"
    foreach($ano in $anos){
        New-Item -Name $ano.ANOS -ItemType Directory
        Set-Location $ano.ANOS
        Add-Content .\pode_apagar.txt ok
        Set-Location ..
    }
    Set-Location ..
    Set-Location ..
}
