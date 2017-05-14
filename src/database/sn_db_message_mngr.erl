%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Friends specific database functions.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_db_message_mngr).
-author("tihon").

%% API
-export([
  save_message/2,
  check_message_exists/1,
  resave_message/2,
  resave_by/3,
  mark_deleted_message/2]).


save_message(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

check_message_exists(_Arg0) ->
  erlang:error(not_implemented).

resave_message(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

resave_by(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).

mark_deleted_message(_Arg0, _Arg1) ->
  erlang:error(not_implemented).