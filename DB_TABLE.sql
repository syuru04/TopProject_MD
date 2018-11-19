﻿CREATE TABLE user_master (
  `USER_ID` varchar(20) NOT NULL COMMENT '사용자 ID',
  `USER_PW` varchar(20) DEFAULT NULL COMMENT '사용자 Password',
  `USER_NAME` varchar(20) DEFAULT NULL COMMENT '사용자명',
  `PHONE_NUM` varchar(12) DEFAULT NULL COMMENT '휴대폰번호',
  `DEPT_CD` varchar(2) DEFAULT NULL COMMENT '부서코드',
  `RANK_CD` varchar(2) DEFAULT NULL COMMENT '직급코드',
  `INPUT_DTM` varchar(14) DEFAULT NULL COMMENT '등록일시',
  `INPUT_USER_ID` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPDATE_DTM` varchar(14) DEFAULT NULL COMMENT '수정일시',
  `UPDATE_USER_ID` varchar(20) DEFAULT NULL COMMENT '수정자',
  `DEL_YN` varchar(1) DEFAULT 'N' COMMENT '삭제여부',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='사원관리';


CREATE TABLE NOTICE(
  `NOTICE_SEQ` varchar(10) NOT NULL COMMENT 'SEQ번호',
  `TITLE` varchar(1000) DEFAULT NULL COMMENT '제목',
  `CONTENTS` varchar(5000) DEFAULT NULL COMMENT '내용',
  `INPUT_DTM` varchar(14) DEFAULT NULL COMMENT '등록일시',
  `INPUT_USER_ID` varchar(20) DEFAULT NULL COMMENT '등록자',
  `UPDATE_DTM` varchar(14) DEFAULT NULL COMMENT '수정일시',
  `UPDATE_USER_ID` varchar(20) DEFAULT NULL COMMENT '수정자',
  `DEL_YN` varchar(1) DEFAULT 'N' COMMENT '삭제여부',
  PRIMARY KEY (`NOTICE_SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='공지 게시판';

CREATE TABLE PAYMENT_MASTER (
 `PAY_SEQ` varchar(10) NOT NULL COMMENT 'SEQ번호',
 `TITLE` varchar(1000) DEFAULT NULL COMMENT '제목',
 `CONTENTS` varchar(5000) DEFAULT NULL COMMENT '내용',
 `INPUT_DTM` varchar(14) DEFAULT NULL COMMENT '등록일시',
 `INPUT_USER_ID` varchar(20) DEFAULT NULL COMMENT '등록자',
 `UPDATE_DTM` varchar(14) DEFAULT NULL COMMENT '수정일시',
 `UPDATE_USER_ID` varchar(20) DEFAULT NULL COMMENT '수정자',
 `DEL_YN` varchar(1) DEFAULT 'N' COMMENT '삭제여부',
 PRIMARY KEY (`PAY_SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='전자결재 마스터';

CREATE TABLE PAYMENT_APRV(
 `PAY_SEQ` varchar(10) NOT NULL COMMENT '결재마스터 SEQ',
 `APRV_SEQ` varchar(4) DEFAULT NULL COMMENT '결재승인 SEQ',
 `APRV_KIND` varchar(2) DEFAULT NULL COMMENT '결재종류',
 `APRV_USER_ID` varchar(20) DEFAULT NULL COMMENT '결재승인자',
 `INPUT_DTM` varchar(14) DEFAULT NULL COMMENT '등록일시',
 `INPUT_USER_ID` varchar(20) DEFAULT NULL COMMENT '등록자',
 `UPDATE_DTM` varchar(14) DEFAULT NULL COMMENT '수정일시',
 `UPDATE_USER_ID` varchar(20) DEFAULT NULL COMMENT '수정자',
 `DEL_YN` varchar(1) DEFAULT 'N' COMMENT '삭제여부',
 PRIMARY KEY (`PAY_SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='전자결재 승인';

CREATE TABLE BOARD (
 `BOARD_SEQ` varchar(10) NOT NULL COMMENT 'SEQ번호',
 `TITLE` varchar(1000) DEFAULT NULL COMMENT '제목',
 `CONTENTS` varchar(5000) DEFAULT NULL COMMENT '내용',
 `INPUT_DTM` varchar(14) DEFAULT NULL COMMENT '등록일시',
 `INPUT_USER_ID` varchar(20) DEFAULT NULL COMMENT '등록자',
 `UPDATE_DTM` varchar(14) DEFAULT NULL COMMENT '수정일시',
 `UPDATE_USER_ID` varchar(20) DEFAULT NULL COMMENT '수정자',
 `DEL_YN` varchar(1) DEFAULT 'N' COMMENT '삭제여부',
 PRIMARY KEY (`BOARD_SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='자유 게시판';
