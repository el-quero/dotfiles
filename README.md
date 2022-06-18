# Quero's dotfiles

- DE: Gnome;
- Console: [fish](https://fishshell.com/);

## Configurazioni

**⚠️ UORNING: applicare i seguenti file di configurazione con [stow](https://www.gnu.org/software/stow/) dopo aver avviato almeno una volta il relativo programma.**

Di seguito si riporta

- `fish/`: personalizzazioni di fish
  
  - alias;
  - prompt tempo di esecuzione di un comando;
  - color scheme che utilizza i colori del terminale;
  - loading dei comandi dichiarati nella cartella `~/.local/bin/`;
  - [chips](https://github.com/xtendo-org/chips) plugin manager, con i seguenti plugin installati:
    - [shellder shell theme](https://github.com/simnalamburt/shellder).
  
- `pandoc/`: roba per [Pandoc](https://pandoc.org/)
  
  - book: insieme di template latex, makefile e comando `mdtobook` per generare da dei file .md un LaTeX book;
  - article: stessa cosa di book, ma genera un LaTeX article;
  
- `IDEA/`: personalizzazioni di IntelliJ IDEA

- `Typora/`: temi per Typora

- `Brave/`: impostazioni di Brave
  - `brave-flags.conf`: flag con cui Brave è lanciato all'avvio

- `QT5`: configurazioni per QT5

    - set della variabile `QT_QPA_PLATFORMTHEME` a `gtk2` per l'utente (potrebbe essere necessario editare `/etc/environment` se contiene la stessa variabile, perché sovrascrive quella locale);

- `ssh-agent/`: roba per ssh-agent

  - systemd user unit presa da https://github.com/elpy1/ssh-agent-systemd;
    - L'unità è già "enabled", ovvero si autoavvia dopo il login dell'utente.
  - dichiarazione della variabile d'ambiente locale `SSH_AUTH_SOCK`;

- `ssh-agent_kde/`: ssh-agent KDE integration:
    - variabile `SSH_ASKPASS` impostata a `ksshaskpass`;
        - ksshaskpass è una utility per chiedere la password tramite una finestra di dialogo. Se si sceglie di ricordare la password questa sarà salvata in kwallet, e quindi ad ogni successiva richiesta di tale password sarà richiesto semplicemente di sbloccare kwallet. Se kwallet è sbloccato automaticamente all'avvio di Plasma, come quando l'utente si logga tramite SDDM, l'aggiunta delle chiavi avviene in modo totalmente trasparente.
    - script che all'avvio di Plasma aggiunge le chiavi SSH private contenute in `~/.ssh/` e sottocartelle all'istanza di ssh-agent puntata dalla variabile `SSH_AUTH_SOCK`.

## Altre cartelle

Le cartelle qui di seguito non possono essere applicate con Stow.

- `Nord/`: cartella contenenti i temi per programmi secondo la palette [Nord](https://www.nordtheme.com/), importate nei vari programmi attraverso i file di configurazione indicati sopra.

## Altre impostazioni

- Star UML:
    - impostazioni visive generali diagrammi ("File" menu entry -> "Preferences" -> "General" -> "Default View Style" section):
        - Font Face: `Lato`;
        - Font Size: `12`;
        - Fill Color: `#fffed5`;
        - Line Color: `#8c3926`;
        - Font Color: `#000000`;
        - Line Sytle: `Rectilinear`;
        - Show Shadow: `OFF`.

