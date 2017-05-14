%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module contains low level message sending logic. It searches
%%% all pid's by seq in syn/gproc and sends messages to pids found.
%%% It also saves messages to guarantee messages getting for offline users.
%%% It is subpackage and not big enough, so no need to split it into manager
%%% and logic modules.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_message).
-author("tihon").

%% API
-export([
  send/5,
  send_one_way/4,
  send_and_save/4,
  send_and_save/5,
  send_one_way_and_save/3,
  send_one_way_and_save/4,
  save/3, save/2]).


send(_Arg0, _Arg1, _Arg2, _Arg3, _Arg4) ->
  erlang:error(not_implemented).

send_one_way(_Arg0, _Arg1, _Arg2, _Arg3) ->
  erlang:error(not_implemented).

send_and_save(_Arg0, _Arg1, _Arg2, _Arg3) ->
  erlang:error(not_implemented).

send_and_save(_Arg0, _Arg1, _Arg2, _Arg3, _Arg4) ->
  erlang:error(not_implemented).

send_one_way_and_save(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).

send_one_way_and_save(_Arg0, _Arg1, _Arg2, _Arg3) ->
  erlang:error(not_implemented).

save(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).

save(_Arg0, _Arg1) ->
  erlang:error(not_implemented).