  SET NOCOUNT ON;
    DECLARE @LoopCounter INT = 1;

    WHILE @LoopCounter <= 100000000
    BEGIN
        SELECT * FROM [dbo].[tb_cliente]
        SET @LoopCounter += 1;
    END;