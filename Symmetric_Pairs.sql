SELECT 
    a.X, a.Y 
FROM 
    FUNCTIONS a JOIN FUNCTIONS b ON a.X = b.Y and b.X = a.Y
GROUP BY 
    a.X, a.Y 
HAVING  
    COUNT(a.X) >1 or a.X< a.Y
ORDER BY 
    a.X;