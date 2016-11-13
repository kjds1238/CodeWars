CREATE DATABASE  IF NOT EXISTS `codewars` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `codewars`;
-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: jafer
-- ------------------------------------------------------
-- Server version	5.7.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `q_no` int(11) NOT NULL,
  `q_data` varchar(250) DEFAULT NULL,
  `option_a` varchar(45) DEFAULT NULL,
  `option_b` varchar(56) DEFAULT NULL,
  `option_c` varchar(45) DEFAULT NULL,
  `option_d` varchar(67) DEFAULT NULL,
  `crct_optn` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`q_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Cout is a/an','operator','function','object','macro','c'),(2,'Which of the following approach is adopted by c++','top-down','bottom-up','right-left','left-right','b'),(3,'Which one of the following is the correct way to declare a pure virtual function?','virtual void display(void){0};','virtual void display=0;','virtual void display(void)=0;','void display(void)=0;','c'),(4,'Which of the following statement is correct about the program given below?\n\n#include<iostream.h>\nint main()\n{\n int x =10;\nint &y=x;\nx++;\ncout<<x<<\" \"<<y++;\nreturn 0;\n}','The program will print the output 11 12','The program will print the output 12 11','The program will print the output 12 13','It will result in a compile time error','b'),(5,'Which of the following statement is correct about the program given below?\n\n#include<iostream.h>\nint main()\n{\n int arr[]={1,2,3,4,5};\nint &zarr=arr;\nfor(int i=0;i<=4;i++)\n{\narr[i]+=arr[i]\n}\nfor(i=0;i<=4;i++)\ncout<<*(&zarr+i);\nreturn 0;\n}','The program will print the output 1 2 3 4 5','The program will print the output 2 4 6 8 10','The program will print the output 1 1 1 1 1.','It will result in a compile time error','b'),(6,'Find the output:\n\n#include<stdio.h>\nvoid main()\n{printf(\"%d\",printf(\"india\",printf(\"love\",printf(\"i\"))));\n}','indialovei','iloveindia','iloveindia5','iloveindia1','c'),(7,'Find the type of error:\n\nmain()\n{\nmain();\n}','runtime error','compile time error','no output','no error','a'),(8,'Find the output:\n\nmain()\n{\nchar *str1=\"abcd\";\nchar str2[]=\"abcd\";\nprintf(\"%d%d%d\",sizeof(str1),sizeof(str2),sizeof(\"abcd\"));\n}','2 4 5','2 4 4','5 5 5','2 5 5','a'),(9,'Find the output :\n\n#define FALSE -1\n#define TRUE 1\n#define NULL 0\nmain()\n{\nif(null)\n puts(\"NULL\");\nelse if(FALSE)\nputs(\"TRUE\");\nelse\n puts(\"FALSE\");\n}','NULL','TRUE','FALSE','Error','b'),(10,'Find the output:\n\nmain()\n{\nint i=-1,j=-1,k=0,l=2,m;\nm=i++&&j++&&k++||l++;\nprintf(\"%d%d%d%d%d\",i,j,k,l,m);\n}','0 0 1 2 0','0 0 1 3 0','0 0 1 3 1','0 0 1 2 1','c'),(11,'Find the output:\n\nmain()\n{\nchar *p;\nprintf(\"%d%d\",sizeof(*p),sizeof(p));\n}','2 2','1 2','1 1','size cant be detemined','b'),(12,'Find the output:\n\nmain()\n{\nchar not;\n not=!2;\nprintf(\"%d\",not);\n}','!2','1','0','Error','c'),(13,'Find the output:\n\nmain()\n{\n int 1=3;\nswitch(i)\n {\n default:printf(\"zero\");\ncase 1:printf(\"one\");\nbreak;\ncase 2:printf(\"two\");\nbreak;\ncase 3:printf(\"three\");\nbreak;\n}\n}','three','zero three','zero','three zero','a'),(14,'Find the output:\n\nmain()\n{\nchar string[]=\"Hello World\";\ndisplay(string);\n}\nvoid display(char *string)\n{printf(\"%s\",string);\n}','Hello World','error:type mismatch','error:array out of bound','none of these','b'),(15,'Find the output:\n\n#define int char \n main()\n{int i=65;\nprintf(\"sizeof(i)=%d\",sizeof(i));\n}','sizeof(i)=4','sizeof(i)=2','sizeof(i)=1','size cannot be detemined','c'),(16,'Find the output:\n\nmain()\n{\nint i=15;\ni=!i>14;\nprintf(\"i=%d\",i);\n}','i=14','i=10','i=1','i=0','d'),(17,'Find the output:\n\n main()\n{int i=5;\nprintf(\"%d%d%d%d%d%d\",i++,i--,++i,--i,i);\n}','45545','56655','45455','65655','a'),(18,'Find the output:\n\n#include\n#define a 10\n main()\n{\n{\n#define a 50\nprintf(\"%d\",a);\n}','error','10 50','10','50','d'),(19,'Find the output:\n\nint i=10;\n main()\n{\n extern int i;\n{\nint i=20;\n{\nconst volatile unsigned \n i=30;\nprintf(\"%d\",i);\n}\nprintf(\"%d\",i);\n}printf(\"%d\",i);\n}','30 20 10','10 10 10','30 20 20','error','a'),(20,'Which of the following is the correct order of evaluation for the below expression?\nZ = X + Y * Z / 4 % 2 -1','* / % + - =','= * / % + -','/ * % - + =','* % / - + =','a'),(21,'If a variable is a pointer to a structure,\n then which of the following operator\n is used to access data members of the structure through the pointer variable ?','.','&','*','->','d'),(22,'What is the result for 5.0 % 2 ?','2.5','2','1','error','d'),(23,'Find the output:\n\n#include<iostream.h>\nusing name space std;\nint main()\n{\nint x =1, y= 1;\n cout<<(++x||++y);\ncout<<x<<\"\"<<y;\n return 0;\n}','0 2 1','1 2 2','1 2 1','1 1 1','c'),(24,'Find the output:\n\n#include<iostream.h>\n#include<string.h>\nusing namespace std;\nint main()\n{\ncout<<sizeof(\"Hello World\");cout<<strlen(\"Hello World\");\nreturn 0;\n}','10 10','11 10','11 11','10 11','b'),(25,'Find the output:\n\n main()\n{\n int i=-1;\n +i;\n printf(\"i=%d, +i=%d\n\",i,+i);\n}','i=-1, i=1','i=-1, +i=-1','i=-1, +i=+1','i=1, +i=1','b');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-17 20:32:59
