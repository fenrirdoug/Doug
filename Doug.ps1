$programas = @(
    "Discord.Discord"
    "Git.Git"             # Instala o Git CLI (e geralmente o Git GUI)
    "GitHub.GitHubDesktop"
    "Google.Chrome"
    "Microsoft.DotNet.DesktopRuntime_x64" # .NET Desktop Runtime (x64)
    "Microsoft.DotNet.Runtime_x64"       # .NET Runtime (x64)
    "Microsoft.VisualStudioCode"
    "qBittorrent.qBittorrent"
    "RarLab.WinRAR"
    "Spotify.Spotify"
    "Steam.Steam"
    "Telegram.TelegramDesktop"
    "VideoLAN.VLC"
    "WhatsApp.WhatsApp"
)

# Loop para instalar cada programa na lista
foreach ($programa in $programas) {
    Write-Host "Instalando o programa: $($programa)"
    winget install --id "$programa" --accept-package-agreements --silent
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Programa $($programa) instalado com sucesso."
    } else {
        Write-Warning "Falha ao instalar o programa $($programa). Código de erro: $($LASTEXITCODE)"
    }
    # Aguarda alguns segundos entre as instalações (opcional)
    Start-Sleep -Seconds 5
}

Write-Host "Processo de instalação concluído."