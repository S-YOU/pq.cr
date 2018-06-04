lib LibPq
  PG_COPYRES_ATTRS       = 1
  PG_COPYRES_EVENTS      = 4
  PG_COPYRES_NOTICEHOOKS = 8
  PG_COPYRES_TUPLES      = 2
  PgresBadResponse       = 5
  PgresCommandOk         = 1
  PgresCopyBoth          = 8
  PgresCopyIn            = 4
  PgresCopyOut           = 3
  PgresEmptyQuery        = 0
  PgresFatalError        = 7
  PgresNonfatalError     = 6
  PgresPollingActive     = 4
  PgresPollingFailed     = 0
  PgresPollingOk         = 3
  PgresPollingReading    = 1
  PgresPollingWriting    = 2
  PgresSingleTuple       = 9
  PgresTuplesOk          = 2
  PqerrorsDefault        = 1
  PqerrorsTerse          = 0
  PqerrorsVerbose        = 2
  PqpingNoAttempt        = 3
  PqpingNoResponse       = 2
  PqpingOk               = 0
  PqpingReject           = 1
  PqshowContextAlways    = 2
  PqshowContextErrors    = 1
  PqshowContextNever     = 0
  PqtransActive          = 1
  PqtransIdle            = 0
  PqtransInerror         = 3
  PqtransIntrans         = 2
  PqtransUnknown         = 4
  alias Oid = LibC::UInt
  alias PQnoticeProcessor = (Void*, LibC::Char* -> Void)
  alias PQnoticeReceiver = (Void*, PGresult -> Void)
  alias PgCancel = Void
  alias PgConn = Void
  alias PgResult = Void
  alias PgthreadlockT = (LibC::Int -> Void)
  alias Pqbool = LibC::Char
  alias X_IoLockT = Void
  alias X__Off64T = LibC::Long
  alias X__OffT = LibC::Long
  enum ConnStatusType
    ConnectionOk               =  0
    ConnectionBad              =  1
    ConnectionStarted          =  2
    ConnectionMade             =  3
    ConnectionAwaitingResponse =  4
    ConnectionAuthOk           =  5
    ConnectionSetenv           =  6
    ConnectionSslStartup       =  7
    ConnectionNeeded           =  8
    ConnectionCheckWritable    =  9
    ConnectionConsume          = 10
  end
  enum ExecStatusType
    PgresEmptyQuery    = 0
    PgresCommandOk     = 1
    PgresTuplesOk      = 2
    PgresCopyOut       = 3
    PgresCopyIn        = 4
    PgresBadResponse   = 5
    PgresNonfatalError = 6
    PgresFatalError    = 7
    PgresCopyBoth      = 8
    PgresSingleTuple   = 9
  end
  enum PgContextVisibility
    PqshowContextNever  = 0
    PqshowContextErrors = 1
    PqshowContextAlways = 2
  end
  enum PgPing
    PqpingOk         = 0
    PqpingReject     = 1
    PqpingNoResponse = 2
    PqpingNoAttempt  = 3
  end
  enum PgTransactionStatusType
    PqtransIdle    = 0
    PqtransActive  = 1
    PqtransIntrans = 2
    PqtransInerror = 3
    PqtransUnknown = 4
  end
  enum PgVerbosity
    PqerrorsTerse   = 0
    PqerrorsDefault = 1
    PqerrorsVerbose = 2
  end
  enum PostgresPollingStatusType
    PgresPollingFailed  = 0
    PgresPollingReading = 1
    PgresPollingWriting = 2
    PgresPollingOk      = 3
    PgresPollingActive  = 4
  end
  fun pq_backend_pid = PQbackendPID(conn : PGconn) : LibC::Int
  fun pq_binary_tuples = PQbinaryTuples(res : PGresult) : LibC::Int
  fun pq_cancel = PQcancel(cancel : PGcancel, errbuf : LibC::Char*, errbufsize : LibC::Int) : LibC::Int
  fun pq_clear = PQclear(res : PGresult)
  fun pq_client_encoding = PQclientEncoding(conn : PGconn) : LibC::Int
  fun pq_cmd_status = PQcmdStatus(res : PGresult) : LibC::Char*
  fun pq_cmd_tuples = PQcmdTuples(res : PGresult) : LibC::Char*
  fun pq_conndefaults = PQconndefaults : PQconninfoOption*
  fun pq_connect_poll = PQconnectPoll(conn : PGconn) : PostgresPollingStatusType
  fun pq_connect_start = PQconnectStart(conninfo : LibC::Char*) : PGconn
  fun pq_connect_start_params = PQconnectStartParams(keywords : LibC::Char**, values : LibC::Char**, expand_dbname : LibC::Int) : PGconn
  fun pq_connectdb = PQconnectdb(conninfo : LibC::Char*) : PGconn
  fun pq_connectdb_params = PQconnectdbParams(keywords : LibC::Char**, values : LibC::Char**, expand_dbname : LibC::Int) : PGconn
  fun pq_connection_needs_password = PQconnectionNeedsPassword(conn : PGconn) : LibC::Int
  fun pq_connection_used_password = PQconnectionUsedPassword(conn : PGconn) : LibC::Int
  fun pq_conninfo = PQconninfo(conn : PGconn) : PQconninfoOption*
  fun pq_conninfo_free = PQconninfoFree(conn_options : PQconninfoOption*)
  fun pq_conninfo_parse = PQconninfoParse(conninfo : LibC::Char*, errmsg : LibC::Char**) : PQconninfoOption*
  fun pq_consume_input = PQconsumeInput(conn : PGconn) : LibC::Int
  fun pq_copy_result = PQcopyResult(src : PGresult, flags : LibC::Int) : PGresult
  fun pq_db = PQdb(conn : PGconn) : LibC::Char*
  fun pq_describe_portal = PQdescribePortal(conn : PGconn, portal : LibC::Char*) : PGresult
  fun pq_describe_prepared = PQdescribePrepared(conn : PGconn, stmt : LibC::Char*) : PGresult
  fun pq_display_tuples = PQdisplayTuples(res : PGresult, fp : File*, fill_align : LibC::Int, field_sep : LibC::Char*, print_header : LibC::Int, quiet : LibC::Int)
  fun pq_dsplen = PQdsplen(s : LibC::Char*, encoding : LibC::Int) : LibC::Int
  fun pq_encrypt_password = PQencryptPassword(passwd : LibC::Char*, user : LibC::Char*) : LibC::Char*
  fun pq_encrypt_password_conn = PQencryptPasswordConn(conn : PGconn, passwd : LibC::Char*, user : LibC::Char*, algorithm : LibC::Char*) : LibC::Char*
  fun pq_endcopy = PQendcopy(conn : PGconn) : LibC::Int
  fun pq_env2encoding = PQenv2encoding : LibC::Int
  fun pq_error_message = PQerrorMessage(conn : PGconn) : LibC::Char*
  fun pq_escape_bytea = PQescapeBytea(from : UInt8*, from_length : LibC::Int, to_length : LibC::Int*) : UInt8*
  fun pq_escape_bytea_conn = PQescapeByteaConn(conn : PGconn, from : UInt8*, from_length : LibC::Int, to_length : LibC::Int*) : UInt8*
  fun pq_escape_identifier = PQescapeIdentifier(conn : PGconn, str : LibC::Char*, len : LibC::Int) : LibC::Char*
  fun pq_escape_literal = PQescapeLiteral(conn : PGconn, str : LibC::Char*, len : LibC::Int) : LibC::Char*
  fun pq_escape_string = PQescapeString : LibC::Int
  fun pq_escape_string_conn = PQescapeStringConn : LibC::Int
  fun pq_exec = PQexec(conn : PGconn, query : LibC::Char*) : PGresult
  fun pq_exec_params = PQexecParams(conn : PGconn, command : LibC::Char*, n_params : LibC::Int, param_types : Oid*, param_values : LibC::Char**, param_lengths : LibC::Int*, param_formats : LibC::Int*, result_format : LibC::Int) : PGresult
  fun pq_exec_prepared = PQexecPrepared(conn : PGconn, stmt_name : LibC::Char*, n_params : LibC::Int, param_values : LibC::Char**, param_lengths : LibC::Int*, param_formats : LibC::Int*, result_format : LibC::Int) : PGresult
  fun pq_fformat = PQfformat(res : PGresult, field_num : LibC::Int) : LibC::Int
  fun pq_finish = PQfinish(conn : PGconn)
  fun pq_flush = PQflush(conn : PGconn) : LibC::Int
  fun pq_fmod = PQfmod(res : PGresult, field_num : LibC::Int) : LibC::Int
  fun pq_fn = PQfn(conn : PGconn, fnid : LibC::Int, result_buf : LibC::Int*, result_len : LibC::Int*, result_is_int : LibC::Int, args : PqArgBlock*, nargs : LibC::Int) : PGresult
  fun pq_fname = PQfname(res : PGresult, field_num : LibC::Int) : LibC::Char*
  fun pq_fnumber = PQfnumber(res : PGresult, field_name : LibC::Char*) : LibC::Int
  fun pq_free_cancel = PQfreeCancel(cancel : PGcancel)
  fun pq_freemem = PQfreemem(ptr : Void*)
  fun pq_fsize = PQfsize(res : PGresult, field_num : LibC::Int) : LibC::Int
  fun pq_ftable = PQftable(res : PGresult, field_num : LibC::Int) : Oid
  fun pq_ftablecol = PQftablecol(res : PGresult, field_num : LibC::Int) : LibC::Int
  fun pq_ftype = PQftype(res : PGresult, field_num : LibC::Int) : Oid
  fun pq_get_cancel = PQgetCancel(conn : PGconn) : PGcancel
  fun pq_get_copy_data = PQgetCopyData(conn : PGconn, buffer : LibC::Char**, async : LibC::Int) : LibC::Int
  fun pq_get_result = PQgetResult(conn : PGconn) : PGresult
  fun pq_getisnull = PQgetisnull(res : PGresult, tup_num : LibC::Int, field_num : LibC::Int) : LibC::Int
  fun pq_getlength = PQgetlength(res : PGresult, tup_num : LibC::Int, field_num : LibC::Int) : LibC::Int
  fun pq_getline = PQgetline(conn : PGconn, string : LibC::Char*, length : LibC::Int) : LibC::Int
  fun pq_getline_async = PQgetlineAsync(conn : PGconn, buffer : LibC::Char*, bufsize : LibC::Int) : LibC::Int
  fun pq_getssl = PQgetssl(conn : PGconn) : Void*
  fun pq_getvalue = PQgetvalue(res : PGresult, tup_num : LibC::Int, field_num : LibC::Int) : LibC::Char*
  fun pq_host = PQhost(conn : PGconn) : LibC::Char*
  fun pq_init_open_ssl = PQinitOpenSSL(do_ssl : LibC::Int, do_crypto : LibC::Int)
  fun pq_init_ssl = PQinitSSL(do_init : LibC::Int)
  fun pq_is_busy = PQisBusy(conn : PGconn) : LibC::Int
  fun pq_isnonblocking = PQisnonblocking(conn : PGconn) : LibC::Int
  fun pq_isthreadsafe = PQisthreadsafe : LibC::Int
  fun pq_lib_version = PQlibVersion : LibC::Int
  fun pq_make_empty_p_gresult = PQmakeEmptyPGresult(conn : PGconn, status : ExecStatusType) : PGresult
  fun pq_mblen = PQmblen(s : LibC::Char*, encoding : LibC::Int) : LibC::Int
  fun pq_nfields = PQnfields(res : PGresult) : LibC::Int
  fun pq_notifies = PQnotifies(conn : PGconn) : PGnotify*
  fun pq_nparams = PQnparams(res : PGresult) : LibC::Int
  fun pq_ntuples = PQntuples(res : PGresult) : LibC::Int
  fun pq_oid_status = PQoidStatus(res : PGresult) : LibC::Char*
  fun pq_oid_value = PQoidValue(res : PGresult) : Oid
  fun pq_options = PQoptions(conn : PGconn) : LibC::Char*
  fun pq_parameter_status = PQparameterStatus(conn : PGconn, param_name : LibC::Char*) : LibC::Char*
  fun pq_paramtype = PQparamtype(res : PGresult, param_num : LibC::Int) : Oid
  fun pq_pass = PQpass(conn : PGconn) : LibC::Char*
  fun pq_ping = PQping(conninfo : LibC::Char*) : PgPing
  fun pq_ping_params = PQpingParams(keywords : LibC::Char**, values : LibC::Char**, expand_dbname : LibC::Int) : PgPing
  fun pq_port = PQport(conn : PGconn) : LibC::Char*
  fun pq_prepare = PQprepare(conn : PGconn, stmt_name : LibC::Char*, query : LibC::Char*, n_params : LibC::Int, param_types : Oid*) : PGresult
  fun pq_print = PQprint(fout : File*, res : PGresult, ps : PQprintOpt*)
  fun pq_print_tuples = PQprintTuples(res : PGresult, fout : File*, print_att_name : LibC::Int, terse_output : LibC::Int, width : LibC::Int)
  fun pq_protocol_version = PQprotocolVersion(conn : PGconn) : LibC::Int
  fun pq_put_copy_data = PQputCopyData(conn : PGconn, buffer : LibC::Char*, nbytes : LibC::Int) : LibC::Int
  fun pq_put_copy_end = PQputCopyEnd(conn : PGconn, errormsg : LibC::Char*) : LibC::Int
  fun pq_putline = PQputline(conn : PGconn, string : LibC::Char*) : LibC::Int
  fun pq_putnbytes = PQputnbytes(conn : PGconn, buffer : LibC::Char*, nbytes : LibC::Int) : LibC::Int
  fun pq_register_thread_lock = PQregisterThreadLock(newhandler : PgthreadlockT) : PgthreadlockT
  fun pq_request_cancel = PQrequestCancel(conn : PGconn) : LibC::Int
  fun pq_res_status = PQresStatus(status : ExecStatusType) : LibC::Char*
  fun pq_reset = PQreset(conn : PGconn)
  fun pq_reset_poll = PQresetPoll(conn : PGconn) : PostgresPollingStatusType
  fun pq_reset_start = PQresetStart(conn : PGconn) : LibC::Int
  fun pq_result_alloc = PQresultAlloc(res : PGresult, n_bytes : LibC::Int) : Void*
  fun pq_result_error_field = PQresultErrorField(res : PGresult, fieldcode : LibC::Int) : LibC::Char*
  fun pq_result_error_message = PQresultErrorMessage(res : PGresult) : LibC::Char*
  fun pq_result_status = PQresultStatus(res : PGresult) : ExecStatusType
  fun pq_result_verbose_error_message = PQresultVerboseErrorMessage(res : PGresult, verbosity : PgVerbosity, show_context : PgContextVisibility) : LibC::Char*
  fun pq_send_describe_portal = PQsendDescribePortal(conn : PGconn, portal : LibC::Char*) : LibC::Int
  fun pq_send_describe_prepared = PQsendDescribePrepared(conn : PGconn, stmt : LibC::Char*) : LibC::Int
  fun pq_send_prepare = PQsendPrepare(conn : PGconn, stmt_name : LibC::Char*, query : LibC::Char*, n_params : LibC::Int, param_types : Oid*) : LibC::Int
  fun pq_send_query = PQsendQuery(conn : PGconn, query : LibC::Char*) : LibC::Int
  fun pq_send_query_params = PQsendQueryParams(conn : PGconn, command : LibC::Char*, n_params : LibC::Int, param_types : Oid*, param_values : LibC::Char**, param_lengths : LibC::Int*, param_formats : LibC::Int*, result_format : LibC::Int) : LibC::Int
  fun pq_send_query_prepared = PQsendQueryPrepared(conn : PGconn, stmt_name : LibC::Char*, n_params : LibC::Int, param_values : LibC::Char**, param_lengths : LibC::Int*, param_formats : LibC::Int*, result_format : LibC::Int) : LibC::Int
  fun pq_server_version = PQserverVersion(conn : PGconn) : LibC::Int
  fun pq_set_client_encoding = PQsetClientEncoding(conn : PGconn, encoding : LibC::Char*) : LibC::Int
  fun pq_set_error_context_visibility = PQsetErrorContextVisibility(conn : PGconn, show_context : PgContextVisibility) : PgContextVisibility
  fun pq_set_error_verbosity = PQsetErrorVerbosity(conn : PGconn, verbosity : PgVerbosity) : PgVerbosity
  fun pq_set_notice_processor = PQsetNoticeProcessor(conn : PGconn, proc : PQnoticeProcessor, arg : Void*) : PQnoticeProcessor
  fun pq_set_notice_receiver = PQsetNoticeReceiver(conn : PGconn, proc : PQnoticeReceiver, arg : Void*) : PQnoticeReceiver
  fun pq_set_result_attrs = PQsetResultAttrs(res : PGresult, num_attributes : LibC::Int, att_descs : PGresAttDesc*) : LibC::Int
  fun pq_set_single_row_mode = PQsetSingleRowMode(conn : PGconn) : LibC::Int
  fun pq_setdb_login = PQsetdbLogin(pghost : LibC::Char*, pgport : LibC::Char*, pgoptions : LibC::Char*, pgtty : LibC::Char*, db_name : LibC::Char*, login : LibC::Char*, pwd : LibC::Char*) : PGconn
  fun pq_setnonblocking = PQsetnonblocking(conn : PGconn, arg : LibC::Int) : LibC::Int
  fun pq_setvalue = PQsetvalue(res : PGresult, tup_num : LibC::Int, field_num : LibC::Int, value : LibC::Char*, len : LibC::Int) : LibC::Int
  fun pq_socket = PQsocket(conn : PGconn) : LibC::Int
  fun pq_ssl_attribute = PQsslAttribute(conn : PGconn, attribute_name : LibC::Char*) : LibC::Char*
  fun pq_ssl_attribute_names = PQsslAttributeNames(conn : PGconn) : LibC::Char**
  fun pq_ssl_in_use = PQsslInUse(conn : PGconn) : LibC::Int
  fun pq_ssl_struct = PQsslStruct(conn : PGconn, struct_name : LibC::Char*) : Void*
  fun pq_status = PQstatus(conn : PGconn) : ConnStatusType
  fun pq_trace = PQtrace(conn : PGconn, debug_port : File*)
  fun pq_transaction_status = PQtransactionStatus(conn : PGconn) : PgTransactionStatusType
  fun pq_tty = PQtty(conn : PGconn) : LibC::Char*
  fun pq_unescape_bytea = PQunescapeBytea(strtext : UInt8*, retbuflen : LibC::Int*) : UInt8*
  fun pq_untrace = PQuntrace(conn : PGconn)
  fun pq_user = PQuser(conn : PGconn) : LibC::Char*
  fun pg_char_to_encoding(name : LibC::Char*) : LibC::Int
  fun pg_encoding_to_char(encoding : LibC::Int) : LibC::Char*
  fun pg_valid_server_encoding_id(encoding : LibC::Int) : LibC::Int

  struct PgNotify
    relname : LibC::Char*
    be_pid : LibC::Int
    extra : LibC::Char*
    next : PgNotify*
  end

  struct PgresAttDesc
    name : LibC::Char*
    tableid : Oid
    columnid : LibC::Int
    format : LibC::Int
    typid : Oid
    typlen : LibC::Int
    atttypmod : LibC::Int
  end

  struct PqArgBlock
    len : LibC::Int
    isint : LibC::Int
    u : PqArgBlockU
  end

  struct X_IoFile
    _flags : LibC::Int
    _io_read_ptr : LibC::Char*
    _io_read_end : LibC::Char*
    _io_read_base : LibC::Char*
    _io_write_base : LibC::Char*
    _io_write_ptr : LibC::Char*
    _io_write_end : LibC::Char*
    _io_buf_base : LibC::Char*
    _io_buf_end : LibC::Char*
    _io_save_base : LibC::Char*
    _io_backup_base : LibC::Char*
    _io_save_end : LibC::Char*
    _markers : X_IoMarker*
    _chain : X_IoFile*
    _fileno : LibC::Int
    _flags2 : LibC::Int
    _old_offset : X__OffT
    _cur_column : LibC::UShort
    _vtable_offset : LibC::Char
    _shortbuf : LibC::Char[1]
    _lock : X_IoLockT*
    _offset : X__Off64T
    __pad1 : Void*
    __pad2 : Void*
    __pad3 : Void*
    __pad4 : Void*
    __pad5 : LibC::Int
    _mode : LibC::Int
    _unused2 : LibC::Char
  end

  struct X_IoMarker
    _next : X_IoMarker*
    _sbuf : X_IoFile*
    _pos : LibC::Int
  end

  struct X_PQconninfoOption
    keyword : LibC::Char*
    envvar : LibC::Char*
    compiled : LibC::Char*
    val : LibC::Char*
    label : LibC::Char*
    dispchar : LibC::Char*
    dispsize : LibC::Int
  end

  struct X_PQprintOpt
    header : Pqbool
    align : Pqbool
    standard : Pqbool
    html3 : Pqbool
    expanded : Pqbool
    pager : Pqbool
    field_sep : LibC::Char*
    table_opt : LibC::Char*
    caption : LibC::Char*
    field_name : LibC::Char**
  end

  type File = X_IoFile
  type PGcancel = Void*
  type PGconn = Void*
  type PGnotify = PgNotify
  type PGresAttDesc = PgresAttDesc
  type PGresult = Void*
  type PQconninfoOption = X_PQconninfoOption
  type PQprintOpt = X_PQprintOpt

  union PqArgBlockU
    ptr : LibC::Int*
    integer : LibC::Int
  end
end
