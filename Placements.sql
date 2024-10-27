SELECT 
    s.NAME 
FROM 
    STUDENTS s INNER JOIN FRIENDS f ON s.ID = f.ID 
    INNER JOIN PACKAGES ps ON ps.ID = s.ID
    INNER JOIN PACKAGES PF ON pf.ID = f.FRIEND_Id
WHERE 
    ps.SALARY < pf.SALARY
ORDER BY 
    pf.SALARY;
    