%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module work with facebook. On sign_in it access facebook token,
%%% and on every log_in it checks token from app with facebook. When token
%%% becomes old - it just delete it and require second log_in.
%%% On log_out is just remove token.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_auth_facebook).
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