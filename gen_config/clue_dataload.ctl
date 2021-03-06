--
-- DTGen SQL*Loader Control File Header
--    Full data dump of the CLUE application
--
--    Generated by DTGen (http://code.google.com/p/dtgen)
--    December  15, 2013  06:45:54 PM
--
-- NOTE: CLOBs won't load into _ACT views due to
--      "ORA-22816: unsupported feature with RETURNING clause"
--
load data
infile CLUE_APPLICATIONS.csv      "STR x'22454F4C2C220D0A'"
infile CLUE_DOMAINS.csv           "STR x'22454F4C2C220D0A'"
infile CLUE_EXCEPTIONS.csv        "STR x'22454F4C2C220D0A'"
infile CLUE_PROGRAMS.csv          "STR x'22454F4C2C220D0A'"
infile CLUE_STORAGE.csv           "STR x'22454F4C2C220D0A'"
infile CLUE_DOMAIN_VALUES.csv     "STR x'22454F4C2C220D0A'"
infile CLUE_TAB_CLUS.csv          "STR x'22454F4C2C220D0A'"
infile CLUE_TABLES.csv            "STR x'22454F4C2C220D0A'"
infile CLUE_CHECK_CONS.csv        "STR x'22454F4C2C220D0A'"
infile CLUE_SUB_TYPES.csv         "STR x'22454F4C2C220D0A'"
infile CLUE_TAB_COLS.csv          "STR x'22454F4C2C220D0A'"
infile CLUE_DCP_VALUES.csv        "STR x'22454F4C2C220D0A'"
infile CLUE_DOMAIN_ESTS.csv       "STR x'22454F4C2C220D0A'"
infile CLUE_TAB_INDS.csv          "STR x'22454F4C2C220D0A'"
into table APPLICATIONS_ACT APPEND
     when key = '"APPLICATIONS------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,abbr                             CHAR(5)
    ,name                             CHAR(30)
    ,est_block_size                   CHAR(2)
    ,version                          CHAR(10)
    ,db_schema                        CHAR(30)
    ,apex_schema                      CHAR(30)
    ,apex_ws_name                     CHAR(30)
    ,apex_app_name                    CHAR(30)
    ,description                      CHAR(1000)
    ,ts_null_override                 CHAR(1)
    ,usr_datatype                     CHAR(20)
    ,usr_frgn_key                     CHAR(100)
    ,add_error_functions              CHAR(1)
    ,error_code_offset                FLOAT EXTERNAL
    ,copyright                        CHAR(4000)
    )
into table DOMAINS_ACT APPEND
     when key = '"DOMAINS-----------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,applications_nk1                 CHAR(5)
    ,abbr                             CHAR(5)
    ,name                             CHAR(20)
    ,fold                             CHAR(1)
    ,description                      CHAR(1000)
    )
into table EXCEPTIONS_ACT APPEND
     when key = '"EXCEPTIONS--------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,applications_nk1                 CHAR(5)
    ,code                             FLOAT EXTERNAL
    ,name                             CHAR(30)
    ,message                          CHAR(2048)
    ,cause                            CHAR(2048)
    ,action                           CHAR(2048)
    )
into table PROGRAMS_ACT APPEND
     when key = '"PROGRAMS----------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,applications_nk1                 CHAR(5)
    ,name                             CHAR(30)
    ,type                             CHAR(7)
    ,description                      CHAR(1000)
    ,spec_txt                         CHAR(4000)
    )
into table STORAGE_ACT APPEND
     when key = '"STORAGE-----------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,applications_nk1                 CHAR(5)
    ,name                             CHAR(30)
    ,ts_onln_data                     CHAR(30)
    ,est_tsod_bsize                   CHAR(2)
    ,ts_onln_indx                     CHAR(30)
    ,est_tsoi_bsize                   CHAR(2)
    ,ts_onln_lob                      CHAR(30)
    ,est_tsol_bsize                   CHAR(2)
    ,ts_hist_data                     CHAR(30)
    ,est_tshd_bsize                   CHAR(2)
    ,ts_hist_indx                     CHAR(30)
    ,est_tshi_bsize                   CHAR(2)
    ,ts_hist_lob                      CHAR(30)
    ,est_tshl_bsize                   CHAR(2)
    )
into table DOMAIN_VALUES_ACT APPEND
     when key = '"DOMAIN_VALUES-----------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,domains_nk1                      CHAR(5)
    ,domains_nk2                      CHAR(5)
    ,value                            CHAR(100)
    ,seq                              FLOAT EXTERNAL
    ,description                      CHAR(1000)
    )
into table TAB_CLUS_ACT APPEND
     when key = '"TAB_CLUS----------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,applications_nk1                 CHAR(5)
    ,name                             CHAR(15)
    ,storage_nk1                      CHAR(5)
    ,storage_nk2                      CHAR(30)
    ,description                      CHAR(1000)
    )
into table TABLES_ACT APPEND
     when key = '"TABLES------------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,tables_sub_type                  CHAR(25)
    ,applications_nk1                 CHAR(5)
    ,abbr                             CHAR(5)
    ,name                             CHAR(15)
    ,seq                              FLOAT EXTERNAL
    ,type                             CHAR(3)
    ,req_sub_types                    CHAR(1)
    ,group_name                       CHAR(30)
    ,storage_nk1                      CHAR(5)
    ,storage_nk2                      CHAR(30)
    ,tab_clus_nk1                     CHAR(5)
    ,tab_clus_nk2                     CHAR(15)
    ,act_num_recs                     FLOAT EXTERNAL
    ,hoa_num_recs                     FLOAT EXTERNAL
    ,est_act_rows                     FLOAT EXTERNAL
    ,est_hoa_rows                     FLOAT EXTERNAL
    ,description                      CHAR(1000)
    )
into table CHECK_CONS_ACT APPEND
     when key = '"CHECK_CONS--------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,tables_nk1                       CHAR(5)
    ,tables_nk2                       CHAR(5)
    ,seq                              FLOAT EXTERNAL
    ,text                             CHAR(1000)
    ,description                      CHAR(1000)
    )
into table SUB_TYPES_ACT APPEND
     when key = '"SUB_TYPES---------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,tables_nk1                       CHAR(5)
    ,tables_nk2                       CHAR(5)
    ,name                             CHAR(21)
    ,sort_ord                         FLOAT EXTERNAL
    ,par_sub_types_nk1                CHAR(5)
    ,par_sub_types_nk2                CHAR(5)
    ,par_sub_types_nk3                CHAR(21)
    ,group_name                       CHAR(30)
    ,est_act_pct                      FLOAT EXTERNAL
    ,est_hoa_pct                      FLOAT EXTERNAL
    ,description                      CHAR(1000)
    )
into table TAB_COLS_ACT APPEND
     when key = '"TAB_COLS----------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,tab_cols_sub_type                CHAR(25)
    ,tables_nk1                       CHAR(5)
    ,tables_nk2                       CHAR(5)
    ,name                             CHAR(25)
    ,seq                              FLOAT EXTERNAL
    ,nk                               FLOAT EXTERNAL
    ,req                              CHAR(1)
    ,sub_types_nk1                    CHAR(5)
    ,sub_types_nk2                    CHAR(5)
    ,sub_types_nk3                    CHAR(21)
    ,fk_prefix                        CHAR(4)
    ,fk_tables_nk1                    CHAR(5)
    ,fk_tables_nk2                    CHAR(5)
    ,d_domains_nk1                    CHAR(5)
    ,d_domains_nk2                    CHAR(5)
    ,type                             CHAR(30)
    ,len                              FLOAT EXTERNAL
    ,scale                            FLOAT EXTERNAL
    ,fold                             CHAR(1)
    ,wsred                            CHAR(1)
    ,default_value                    CHAR(1000)
    ,upd_res_pct                      FLOAT EXTERNAL
    ,est_pct                          FLOAT EXTERNAL
    ,est_dist                         CHAR(1)
    ,est_parm1                        FLOAT EXTERNAL
    ,est_parm2                        FLOAT EXTERNAL
    ,description                      CHAR(1000)
    )
into table DCP_VALUES_ACT APPEND
     when key = '"DCP_VALUES--------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,tab_cols_nk1                     CHAR(5)
    ,tab_cols_nk2                     CHAR(5)
    ,tab_cols_nk3                     CHAR(25)
    ,dc_parms_nk1                     CHAR(30)
    ,dc_parms_nk2                     CHAR(30)
    ,value                            CHAR(1000)
    )
into table DOMAIN_ESTS_ACT APPEND
     when key = '"DOMAIN_ESTS-------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,tab_cols_nk1                     CHAR(5)
    ,tab_cols_nk2                     CHAR(5)
    ,tab_cols_nk3                     CHAR(25)
    ,domain_values_nk1                CHAR(5)
    ,domain_values_nk2                CHAR(5)
    ,domain_values_nk3                CHAR(100)
    ,est_pct                          FLOAT EXTERNAL
    )
into table TAB_INDS_ACT APPEND
     when key = '"TAB_INDS----------------------",'
     fields terminated by ',' optionally enclosed by '"'
    (key                       FILLER position(1:33)
    ,tab_cols_nk1                     CHAR(5)
    ,tab_cols_nk2                     CHAR(5)
    ,tab_cols_nk3                     CHAR(25)
    ,tag                              CHAR(4)
    ,seq                              FLOAT EXTERNAL
    )
