﻿CREATE TABLE DEPT (
 `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT  COMMENT '부서코드', 
 `NAME` varchar(20) DEFAULT NULL  COMMENT '부서명', 
 `CHIEF` INT UNSIGNED DEFAULT NULL COMMENT '부서장',
 `UP_ID` INT UNSIGNED  DEFAULT NULL COMMENT '상위부서코드',
  FOREIGN KEY(UP_ID) REFERENCES DEPT(ID) ON UPDATE CASCADE,    
  PRIMARY KEY (ID,NAME) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='부서,팀관리';

CREATE TABLE EMP (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'EMP ID',
  `nick` varchar(20) DEFAULT NULL COMMENT '사용자 ID',
  `PW` varchar(20) DEFAULT NULL COMMENT '사용자 PW',
  `NAME` varchar(20) DEFAULT NULL COMMENT '사용자명',
  `PHONE` varchar(12) DEFAULT NULL COMMENT '휴대폰번호',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '이메일',
  `DEPT_ID` INT UNSIGNED DEFAULT NULL COMMENT '부서코드',  
  FOREIGN KEY(DEPT_ID) REFERENCES DEPT(ID) ON UPDATE CASCADE      
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='사원관리';

alter table DEPT add foreign key DEPT(CHIEF) references EMP(ID) ON UPDATE CASCADE;

CREATE TABLE DOC (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '문서번호',
  `TITLE` varchar(1000) DEFAULT NULL COMMENT '제목',
  `BODY` varchar(5000) DEFAULT NULL COMMENT '내용',
  `PUBLISH` varchar(2) DEFAULT 'N' COMMENT '공지여부',
  `STAMP` varchar(14) DEFAULT NULL COMMENT '수정일시',
  `AUTHOR` INT UNSIGNED DEFAULT NULL COMMENT '작성자',
  FOREIGN KEY(AUTHOR) REFERENCES EMP(ID) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='전자결재';

CREATE TABLE APPROVAL (
 `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '승인번호',
 `DOC_ID` INT UNSIGNED NOT NULL COMMENT '문서번호',
 `APPROVER` INT UNSIGNED DEFAULT NULL COMMENT '결재자',
 `STAT` INT DEFAULT NULL COMMENT '결재여부',
 `REASON` varchar(1000) DEFAULT NULL COMMENT '비고(반려사유)',
 `STAMP` varchar(14) DEFAULT NULL COMMENT '수정일자',  
 PRIMARY KEY (ID,DOC_ID),
 FOREIGN KEY(DOC_ID) REFERENCES DOC(ID) ON UPDATE CASCADE,
 FOREIGN KEY(APPROVER) REFERENCES EMP(id) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='전자결재 마스터';

CREATE TABLE NOTE (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '글번호',
  `TITLE` varchar(1000) DEFAULT NULL COMMENT '제목',
  `BODY` varchar(5000) DEFAULT NULL COMMENT '내용',  
  `STAMP` varchar(14) DEFAULT NULL COMMENT '등록일시',
  `AUTHOR` INT UNSIGNED DEFAULT NULL COMMENT '등록자',
  FOREIGN KEY(AUTHOR) REFERENCES EMP(ID) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시판';