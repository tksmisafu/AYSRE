SELECT A1.name, A2.class , RANK() over (ORDER BY A1.score DESC) RK
FROM score A1, class A2
WHERE A1.name = A2.name and RK = 2;
