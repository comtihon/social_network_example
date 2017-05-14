%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module contains shared functions, which are used by different
%%% auth implementations.
%%% They are not real, it is just an example.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_auth_logic).
-author("tihon").

%% API
-export([on_success_login/2, check_credentials/2, on_log_out/2]).

on_success_login(_User, _Fun) ->
  erlang:error(not_implemented).

check_credentials(_UserName, _Token) ->
  erlang:error(not_implemented).

on_log_out(_UserState, _Fun) ->
  erlang:error(not_implemented).


