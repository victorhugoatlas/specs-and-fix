# Specs and Fix
**Specs and Fix** é uma ferramenta de automática em PowerShell para facilitar a manutenção e o diagnóstico de computadores com Windows. 

O script coleta informações do hardware e oferece opções para realizar a limpeza de arquivos temporários e o reparo de arquivos corrompidos do sistema.

## Funcionalidades
### 1 - Diagnóstico de Hardware
Coleta e exibe:
- Sistema Operacional e Hostname.
- Processador, Placa-mãe e Chipset.
- Detalhes de RAM (Slots e Frequência).
- Informações de Disco (Tipo, Modelo, Tamanho e Saúde).
- Placa de Vídeo.
- Identificação de tipo (Notebook vs Desktop).

### 2 - Módulos de Manutenção
- **Limpeza de Temporários:** Remove arquivos de `Temp`, `Prefetch` e cache de navegadores (Chrome, Edge, Firefox), além de limpar a lixeira.
- **Reparo do Sistema:** Executa rotinas essenciais de integridade:
    - `DISM /RestoreHealth`
    - `sfc /scannow`
    - `chkdsk C: /f /r`

## Como utilizar
1 - **Clone este repositório** / baixe os arquivos `.ps1` e `.bat`.
2 - Mantenha os dois arquivos na mesma pasta.
3 - **Execute o arquivo `start-specs-and-fix.bat` como Administrador.**
4 - Siga as opções exibidas no menu:
   - `[1]` Limpeza de arquivos temporários.
   - `[2]` Reparo do sistema.
   - `[3]` Executar todas as rotinas.

## Relatório
Ao final da execução, o script gera automaticamente um arquivo de texto (`SPECS_AND_FIX_[NOME_DO_PC].txt`) na mesma pasta do script, contendo todo o relatório de hardware coletado.

## Aviso
Este script executa comandos de alto nível no sistema (`chkdsk`, `sfc`, `dism`). Certifique-se de salvar seus arquivos abertos antes de iniciar os módulos de reparo, pois o `chkdsk` pode exigir que o computador reinicie.

---

*by Victor Hugo*