%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for sending call signaling to user devices.
%%% It sends events to online user's devices and push notifications to
%%% offline.
%%% This module is not big, so no need to split it to manager and logic.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_call).
-author("tihon").

%% API
-export([call/3]).
%% and some other stuff

-spec call(map(), map(), map()) -> {{true, ok}, map()}.
call(_Header, _Message, _UserState) ->
  erlang:error(not_implemented).