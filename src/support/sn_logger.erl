%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for logging. It should be called for
%%% logging all over this application.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_logger).
-author("tihon").

%% API
-export([init/0]).
-export([log_debug/2, log_info/2, log_warn/2, log_err/2]).
-export([log_debug/1, log_info/1, log_warn/1, log_err/1]).

log_debug(A) -> log_debug(A, []).

log_debug(_A, _B) -> erlang:error(not_implemented).

log_info(A) -> log_info(A, []).

log_info(_A, _B) -> erlang:error(not_implemented).

log_warn(A) -> log_warn(A, []).

log_warn(_A, _B) -> erlang:error(not_implemented).

log_err(A) -> log_err(A, []).

log_err(_A, _B) -> erlang:error(not_implemented).


init() ->
  erlang:error(not_implemented).