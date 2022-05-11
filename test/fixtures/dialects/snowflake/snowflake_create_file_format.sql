CREATE FILE FORMAT my_file_format
    TYPE = CSV
;

CREATE OR REPLACE FILE FORMAT my_csv_format
    TYPE = CSV,
    COMPRESSION = AUTO,
    RECORD_DELIMITER = NONE,
    FIELD_DELIMITER = NONE,
    FILE_EXTENSION = 'foobar',
    SKIP_HEADER = 1,
    SKIP_BLANK_LINES = TRUE,
    DATE_FORMAT = AUTO,
    TIME_FORMAT = AUTO,
    TIMESTAMP_FORMAT = AUTO,
    BINARY_FORMAT = HEX,
    TRIM_SPACE = TRUE,
    NULL_IF = ('foo', 'bar'),
    FIELD_OPTIONALLY_ENCLOSED_BY = NONE,
    ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE,
    REPLACE_INVALID_CHARACTERS = TRUE,
    VALIDATE_UTF8 = TRUE,
    EMPTY_FIELD_AS_NULL = TRUE,
    SKIP_BYTE_ORDER_MARK = TRUE,
    ENCODING = UTF8
;

CREATE FILE FORMAT IF NOT EXISTS my_csv_format
    TYPE = CSV
    COMPRESSION = GZIP
    RECORD_DELIMITER = 'foo'
    FIELD_DELIMITER = 'bar'
    FILE_EXTENSION = 'foobar'
    SKIP_HEADER = 99
    SKIP_BLANK_LINES = FALSE
    DATE_FORMAT = 'foo'
    TIME_FORMAT = 'bar'
    TIMESTAMP_FORMAT = 'foobar'
    BINARY_FORMAT = UTF8
    TRIM_SPACE = FALSE
    NULL_IF = ('foo', 'bar')
    FIELD_OPTIONALLY_ENCLOSED_BY = 'foo'
    ERROR_ON_COLUMN_COUNT_MISMATCH = FALSE
    REPLACE_INVALID_CHARACTERS = FALSE
    VALIDATE_UTF8 = FALSE
    EMPTY_FIELD_AS_NULL = FALSE
    SKIP_BYTE_ORDER_MARK = FALSE
    ENCODING = 'foo'
    COMMENT = 'FOOBAR'
;

CREATE OR REPLACE FILE FORMAT my_json_format
    TYPE = JSON,
    COMPRESSION = AUTO,
    DATE_FORMAT = AUTO,
    TIME_FORMAT = AUTO,
    TIMESTAMP_FORMAT = AUTO,
    BINARY_FORMAT = HEX,
    TRIM_SPACE = TRUE,
    NULL_IF = ('foo', 'bar'),
    FILE_EXTENSION = 'foobar',
    ENABLE_OCTAL = TRUE,
    ALLOW_DUPLICATE = TRUE,
    STRIP_OUTER_ARRAY = TRUE,
    STRIP_NULL_VALUES = TRUE,
    REPLACE_INVALID_CHARACTERS = TRUE,
    IGNORE_UTF8_ERRORS = TRUE,
    SKIP_BYTE_ORDER_MARK = TRUE
;

CREATE FILE FORMAT IF NOT EXISTS my_json_format
    TYPE = JSON
    COMPRESSION = GZIP
    DATE_FORMAT = 'foobar'
    TIME_FORMAT = 'foobar'
    TIMESTAMP_FORMAT = 'foobar'
    BINARY_FORMAT = BASE64
    TRIM_SPACE = FALSE
    NULL_IF = ('foo', 'bar')
    FILE_EXTENSION = 'foobar'
    ENABLE_OCTAL = FALSE
    ALLOW_DUPLICATE = FALSE
    STRIP_OUTER_ARRAY = FALSE
    STRIP_NULL_VALUES = FALSE
    REPLACE_INVALID_CHARACTERS = TRUE
    IGNORE_UTF8_ERRORS = FALSE
    SKIP_BYTE_ORDER_MARK = FALSE
    COMMENT = 'FOOBAR'
;

CREATE OR REPLACE FILE FORMAT my_avro_format
    TYPE = AVRO,
    COMPRESSION = AUTO,
    TRIM_SPACE = TRUE,
    NULL_IF = ('foo', 'bar')
;

CREATE FILE FORMAT IF NOT EXISTS my_avro_format
    TYPE = AVRO
    COMPRESSION = 'GZIP'
    TRIM_SPACE = FALSE
    NULL_IF = ('foo', 'bar')
    COMMENT = 'FOOBAR'
;

CREATE OR REPLACE FILE FORMAT my_orc_format
    TYPE = ORC,
    TRIM_SPACE = TRUE,
    NULL_IF = ('foo', 'bar')
;

CREATE FILE FORMAT IF NOT EXISTS my_orc_format
    TYPE = ORC
    TRIM_SPACE = FALSE
    NULL_IF = ('foo', 'bar')
    COMMENT = 'FOOBAR'
;

CREATE OR REPLACE FILE FORMAT my_parquet_format
    TYPE = PARQUET,
    COMPRESSION = SNAPPY,
    SNAPPY_COMPRESSION = TRUE,
    TRIM_SPACE = TRUE,
    NULL_IF = ('foo', 'bar')
;

CREATE FILE FORMAT IF NOT EXISTS my_parquet_format
    TYPE = PARQUET
    COMPRESSION = AUTO
    SNAPPY_COMPRESSION = FALSE
    TRIM_SPACE = FALSE
    NULL_IF = ('foo', 'bar')
    COMMENT = 'FOOBAR'
;

CREATE OR REPLACE FILE FORMAT my_xml_format
    TYPE = XML,
    COMPRESSION = AUTO,
    IGNORE_UTF8_ERRORS = TRUE,
    PRESERVE_SPACE = TRUE,
    STRIP_OUTER_ELEMENT = TRUE,
    DISABLE_SNOWFLAKE_DATA = TRUE,
    DISABLE_AUTO_CONVERT = TRUE,
    SKIP_BYTE_ORDER_MARK = TRUE
;

CREATE FILE FORMAT IF NOT EXISTS my_xml_format
    TYPE = XML
    COMPRESSION = GZIP
    IGNORE_UTF8_ERRORS = FALSE
    PRESERVE_SPACE = FALSE
    STRIP_OUTER_ELEMENT = FALSE
    DISABLE_SNOWFLAKE_DATA = FALSE
    DISABLE_AUTO_CONVERT = FALSE
    SKIP_BYTE_ORDER_MARK = FALSE
    COMMENT = 'FOOBAR'
;