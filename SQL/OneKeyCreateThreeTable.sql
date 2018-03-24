--Edit by David @ HeBei University 2018

USE MrDavid  
GO 

DROP TABLE IF EXISTS SC
DROP TABLE IF EXISTS Student
DROP TABLE IF EXISTS Course

CREATE TABLE Student          
      (	Sno   CHAR(9) PRIMARY KEY,         /* �м�������Լ������,Sno������*/                  
        Sname CHAR(20) UNIQUE,             /* SnameȡΨһֵ*/
        Ssex  CHAR(2),
        Sage  SMALLINT,
        Sdept CHAR(20)
      ); 

CREATE TABLE  Course
      (	Cno		CHAR(4) PRIMARY KEY,
		Cname	CHAR(40),            
        Cpno	CHAR(4),               	                      
        Ccredit	SMALLINT,
        FOREIGN KEY (Cpno) REFERENCES  Course(Cno) 
       ); 

CREATE TABLE  SC
       (Sno		CHAR(9), 
        Cno		CHAR(4),  
        Grade	SMALLINT,
        PRIMARY KEY (Sno,Cno),                     /* �������������Թ��ɣ�������Ϊ���������Խ��ж���*/
        FOREIGN KEY (Sno) REFERENCES Student(Sno),  /* ����������Լ��������Sno�����룬�����ձ���Student */
        FOREIGN KEY (Cno)REFERENCES Course(Cno)     /* ����������Լ�������� Cno�����룬�����ձ���Course*/
        ); 


INSERT  INTO  Student (Sno,Sname,Ssex,Sdept,Sage)    VALUES ('201215121','����','��','CS',20);
INSERT  INTO  Student (Sno,Sname,Ssex,Sdept,Sage)    VALUES ('201215122','����','Ů','CS',19);
INSERT  INTO  Student (Sno,Sname,Ssex,Sdept,Sage)    VALUES ('201215123','����','Ů','MA',18);
INSERT  INTO  Student (Sno,Sname,Ssex,Sdept,Sage)    VALUES ('201215125','����','��','IS',19);
INSERT  INTO  Student (Sno,Sname,Ssex,Sdept,Sage)    VALUES ('201215128','�¶�','��','IS',20);

SELECT * FROM Student

INSERT  INTO Course(Cno,Cname,Cpno,Ccredit)	VALUES ('1','���ݿ�',NULL,4);