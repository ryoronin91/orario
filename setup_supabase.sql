-- Aggiornamento tabella orari: nuovi tipi di registrazione
alter table public.orari drop constraint if exists orari_type_check;
alter table public.orari add constraint orari_type_check check (type in ('lavoro','permesso','ferie','mutua','reperibilita','straordinario'));

-- Mantiene l'accesso pubblico già configurato nel progetto.
-- Se la policy orari_access esiste già, non è necessario modificarla.
