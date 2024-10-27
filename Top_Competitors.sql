SELECT HACKERS.HACKER_ID, HACKERS.NAME
FROM HACKERS LEFT OUTER JOIN SUBMISSIONS 
ON SUBMISSIONS.HACKER_ID = HACKERS.HACKER_ID
LEFT OUTER JOIN CHALLENGES
ON SUBMISSIONS.CHALLENGE_ID = CHALLENGES.CHALLENGE_ID
LEFT OUTER JOIN DIFFICULTY
ON CHALLENGES.DIFFICULTY_LEVEL = DIFFICULTY.DIFFICULTY_LEVEL
WHERE DIFFICULTY.SCORE = SUBMISSIONS.SCORE
GROUP BY HACKERS.HACKER_ID, HACKERS.NAME
HAVING COUNT(HACKERS.HACKER_ID)>1
ORDER BY COUNT(HACKERS.HACKER_ID) DESC,  HACKERS.HACKER_ID ASC;
