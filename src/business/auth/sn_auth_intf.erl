%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This is a common interface for authentication modules. All new
%%% authentication type - should implement this behaviour.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_auth_intf).
-author("tihon").

%% API
-export([log_in/3, sign_in/3, log_out/2]).

-callback log_in(Message :: map(), UserState :: map()) ->
  {{true, map()} | {false, binary()}, UserState :: map()}.

-callback sign_in(Message :: map(), UserState :: map()) ->
  {{true, map()} | {false, binary()}, UserState :: map()}.

-callback log_out(UserState :: map()) ->
  {{true, map()} | {false, binary()}, UserState :: map()}.

-spec log_in(module(), map(), map()) ->
  {{true, map()} | {false, binary()}, UserState :: map()}.
log_in(Module, Message, UserState) ->
  Module:log_in(Message, UserState).

-spec sign_in(module(), map(), map()) ->
  {{true, map()} | {false, binary()}, UserState :: map()}.
sign_in(Module, Message, UserState) ->
  Module:sign_in(Message, UserState).

-spec log_out(module(), map()) ->
  {{true, map()} | {false, binary()}, UserState :: map()}.
log_out(Module, UserState) ->
  Module:log_out(UserState).