ALTER TABLE type
    ADD CONSTRAINT ekstern_navn_constraint
        CHECK (
                ((ekstern) AND (ekstern_navn IS NOT NULL))
                OR
                ((NOT ekstern) AND (ekstern_navn IS NULL))
            );