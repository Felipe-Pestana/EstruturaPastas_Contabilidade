$Empresas = Import-Csv .\empresas.csv
$Setores = Import-Csv .\setores.csv
New-Item -Name "Clientes" -ItemType Directory
Set-Location "Clientes"
foreach ($Empresa in $Empresas) {
    New-Item -Name $Empresa.Nome -ItemType Directory
    Set-Location $Empresa.Nome
    foreach ($Setor in $Setores){
        New-Item -Name $Setor.Nome -ItemType Directory
        Set-Location $Setor.Nome
        Add-Content .\pode_apagar.txt "ok"
        Set-Location ..
    }
    Set-Location ..
}