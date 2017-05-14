%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Authentication with MSISDN. Auto auth with partner's service or
%%% sending sms with code on sign_in and checking code on login is
%%% handled here.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_auth_msisdn).
-author("tihon").

-behavior(sn_auth_intf).

%% API
-export([log_in/2, sign_in/2, log_out/1]).


log_in(_Message, _UserState) ->
  erlang:error(not_implemented).

sign_in(_Message, _UserState) ->
  erlang:error(not_implemented).

log_out(_UserState) ->
  erlang:error(not_implemented).