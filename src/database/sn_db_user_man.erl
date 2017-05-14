%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Users specific database functions.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_db_user_man).
-author("tihon").

%% API
-export([
  save_user/2,
  cancel_user/1,
  set_user_visit/1,
  set_last_seen/2,
  contain_email/2,
  search_users_by/2]).
%% And others

save_user(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

cancel_user(_Arg0) ->
  erlang:error(not_implemented).

set_user_visit(_Arg0) ->
  erlang:error(not_implemented).

set_last_seen(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

contain_email(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

search_users_by(_Arg0, _Arg1) ->
  erlang:error(not_implemented).