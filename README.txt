GESTIONE PRESENZE - VERSIONE ONLINE

Questa versione usa GitHub Pages per il sito e Supabase come database online.

FILE:
- index.html = inserimento ore / permessi / ferie
- riepilogo.html = riepilogo mensile + CSV
- config.js = credenziali pubbliche Supabase da configurare
- setup_supabase.sql = struttura del database e regole di accesso

CONFIGURAZIONE SUPABASE:
1. Crea un progetto gratuito su Supabase.
2. Vai in SQL Editor e incolla tutto il contenuto di setup_supabase.sql, poi Run.
3. Vai in Project Settings > API e copia:
   - Project URL
   - Publishable key (oppure la vecchia anon key, se mostrata)
4. Inserisci questi due valori in config.js.
5. NON usare mai la service_role key dentro il sito.

ACCESSO AL RIEPILOGO:
Per proteggere i dati, il database non permette la lettura agli utenti anonimi.
Il riepilogo richiede quindi un utente Supabase autenticato. Crea almeno il tuo
account in Authentication > Users e accedi al riepilogo dopo aver aggiunto il
login (oppure possiamo aggiungerlo nella prossima modifica).

GITHUB PAGES:
1. Crea un repository GitHub.
2. Carica questi file nella cartella principale.
3. Repository > Settings > Pages > Deploy from a branch > main > /root.
4. GitHub ti fornirà il link pubblico del sito.

NOTA:
Le registrazioni vengono salvate online in Supabase e quindi sono condivisibili
tra computer diversi. GitHub Pages ospita solamente le pagine HTML/JS.


pas databes 2JzO0p7399NgPPtQ
