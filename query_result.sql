##���󣺲鿴ĳ��ѧ�����еĿγ̳ɼ�

##��һ�ֲ�ѯ��ʽ���������    ��ʱ��0.191s 0.175s  0.184s  ƽ����ʱ��0.1833s

SELECT s.id,s.`name`,c.`name`,sc.score 
FROM score sc ,student s,course c
WHERE sc.stu_id = s.id
AND sc.cu_id = c.id

##�ڶ��ַ�ʽ��Ƕ�ײ�ѯ    ��ʱ��0.842s  0.765s  0.762s   ƽ����ʱ��0.7897s
SELECT t.id,t.name,c.`name`,t.score
FROM course c,
(
SELECT id,name,cu_id,score FROM student s,score sc WHERE s.id  = sc.stu_id
)t
WHERE c.id = t.cu_id;

##�����ַ�ʽ�������Ӳ�ѯ    ��ʱ��0.743s 0.766s 0.770s  ƽ����ʱ��0.7597s
SELECT t.id,t.`name`,c.`name`,score from course c,
(
select id,name,cu_id,score FROM student s INNER JOIN score sc ON s.id = sc.stu_id
)t
WHERE c.id = t.cu_id

