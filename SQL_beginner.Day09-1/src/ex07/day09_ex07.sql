CREATE OR REPLACE FUNCTION func_minimum(
    VARIADIC arr NUMERIC[])
    RETURNS NUMERIC AS
$min$
BEGIN
    RETURN (WITH arr_as_table AS (SELECT UNNEST(arr) AS val)
            SELECT MIN(arr_as_table.val)
            FROM arr_as_table);
END;
$min$ LANGUAGE plpgsql;



SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);
