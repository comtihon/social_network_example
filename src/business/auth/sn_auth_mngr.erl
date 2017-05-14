%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Auth package manager. This package contains modules with different
%%% authentication implementations and sn_auth_logic, which is responsible
%%% for whole auth job, setting user online, sending unread messages and
%%% events. Notifying friends.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_auth_mngr).
-author("tihon").

%% API
-export([log_in/2, sign_in/2, log_out/1]).


-spec log_in(map(), map()) -> {{true, map()} | {false, binary()}, UserState :: map()}.
log_in(_Message, _UserState) ->
  erlang:error(not_implemented).

-spec sign_in(map(), map()) -> {{true, map()} | {false, binary()}, UserState :: map()}.
sign_in(_Message, _UserState) ->
  erlang:error(not_implemented).

-spec log_out(map()) -> {{true, map()} | {false, binary()}, UserState :: map()}.
log_out(_UserState) ->
  erlang:error(not_implemented).


%% Private functions for getting authentication modules available and selecting best suitable.