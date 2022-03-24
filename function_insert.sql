		CREATE OR REPLACE FUNCTION add_comments(specimen_id INT4, campo TEXT, comentario TEXT) 
    RETURNS void AS $$
    BEGIN
      INSERT INTO produccion.store_comments (specimen_id, campo, comentario) VALUES ($1, $2, $3);
    END;
    $$ LANGUAGE plpgsql;
		
