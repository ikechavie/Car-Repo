DECLARE VCursor CURSOR
FOR SELECT Make, VehicleYear
FROM Vehicle

OPEN VCursor
FETCH NEXT FROM VCursor
WHILE @@FETCH_STATUS = 0
FETCH NEXT FROM VCursor

CLOSE VCursor
DEALLOCATE VCursor;