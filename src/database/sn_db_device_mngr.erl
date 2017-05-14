%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Devices specific database functions.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_db_device_mngr).
-author("tihon").

%% API
-export([
  add_user_to_device/1,
  save_device/1,
  get_devices_by/1,
  find_device/2]).

add_user_to_device(_Arg0) ->
  erlang:error(not_implemented).

save_device(_Arg0) ->
  erlang:error(not_implemented).

get_devices_by(_Arg0) ->
  erlang:error(not_implemented).

find_device(_Arg0, _Arg1) ->
  erlang:error(not_implemented).