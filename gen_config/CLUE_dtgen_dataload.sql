
spool CLUE_dataload.ctl
execute dtgen_util.data_ctl_file('CLUE');
spool CLUE_APPLICATIONS.csv
execute dtgen_util.data_csv_file('CLUE', 'APPLICATIONS');
spool CLUE_DOMAINS.csv
execute dtgen_util.data_csv_file('CLUE', 'DOMAINS');
spool CLUE_EXCEPTIONS.csv
execute dtgen_util.data_csv_file('CLUE', 'EXCEPTIONS');
spool CLUE_PROGRAMS.csv
execute dtgen_util.data_csv_file('CLUE', 'PROGRAMS');
spool CLUE_STORAGE.csv
execute dtgen_util.data_csv_file('CLUE', 'STORAGE');
spool CLUE_DOMAIN_VALUES.csv
execute dtgen_util.data_csv_file('CLUE', 'DOMAIN_VALUES');
spool CLUE_TAB_CLUS.csv
execute dtgen_util.data_csv_file('CLUE', 'TAB_CLUS');
spool CLUE_TABLES.csv
execute dtgen_util.data_csv_file('CLUE', 'TABLES');
spool CLUE_CHECK_CONS.csv
execute dtgen_util.data_csv_file('CLUE', 'CHECK_CONS');
spool CLUE_SUB_TYPES.csv
execute dtgen_util.data_csv_file('CLUE', 'SUB_TYPES');
spool CLUE_TAB_COLS.csv
execute dtgen_util.data_csv_file('CLUE', 'TAB_COLS');
spool CLUE_DCP_VALUES.csv
execute dtgen_util.data_csv_file('CLUE', 'DCP_VALUES');
spool CLUE_DOMAIN_ESTS.csv
execute dtgen_util.data_csv_file('CLUE', 'DOMAIN_ESTS');
spool CLUE_TAB_INDS.csv
execute dtgen_util.data_csv_file('CLUE', 'TAB_INDS');
spool off

