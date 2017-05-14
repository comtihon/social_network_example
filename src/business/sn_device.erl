%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for working with devices: adding users
%%% to devices, removing users from active owners and moving to previous.
%%% This module is not big, so no need to split it to manager and logic.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_device).
-author("tihon").

%% API
-export([set_device/2, remove_user_from_devices/1]).

-spec set_device(map(), map()) -> tuple().
set_device(_Device, _UserState) ->
  erlang:error(not_implemented).

-spec remove_user_from_devices(sn_user:seq()) -> ok.
remove_user_from_devices(_Seq) ->
  erlang:error(not_implemented).