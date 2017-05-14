%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module handles main authentication by checking username and
%%% password.
%%% @end
%%% Created : 14. May 2017 14:05
%%%-------------------------------------------------------------------
-module(sn_auth_plain).
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