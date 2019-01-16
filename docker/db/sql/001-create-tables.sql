-- アクティビティログ
drop table CM_ACLG cascade;

create table CM_ACLG (
  AL_IDACTV INT not null comment 'ID'
  , AL_NMACTV VARCHAR(200) not null comment 'アクティビティ区分名'
  , AL_NOACTV INT not null comment 'アクティビティ番号'
  , AL_DTACTV DATE not null comment 'アクティビティ日付'
  , AL_CDSQSK INT not null comment '請求先読者番号'
  , AL_NMSQSK VARCHAR(200) not null comment '請求先顧客名'
  , AL_NMSQBU VARCHAR(200) comment '請求先部署名'
  , AL_NMSQTN VARCHAR(200) comment '請求先担当名'
  , AL_TXACTV VARCHAR(200) not null comment 'アクティビティ内容'
  , AL_SUSURY INT comment '数量'
  , AL_KGTNKA INT comment '単価'
  , AL_KGGOKE INT comment '合計金額'
  , AL_TXBIKO VARCHAR(200) comment '備考'
  , AL_CDCSTM VARCHAR(200) comment '読者番号'
  , AL_NMCSTM VARCHAR(200) comment '顧客名'
  , AL_NMTNBU VARCHAR(200) comment '部署名'
  , AL_NMTNTO VARCHAR(200) comment '担当者名'
  , constraint CM_ACLG_PKC primary key (AL_IDACTV)
) comment 'アクティビティログ' ;

create unique index CM_ACLG_I01
  on CM_ACLG(AL_NMACTV,AL_CDSQSK);

create index CM_ACLG_I02
  on CM_ACLG(AL_DTACTV,AL_NMACTV,AL_CDSQSK);
