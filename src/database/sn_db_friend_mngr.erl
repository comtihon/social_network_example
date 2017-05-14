%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Friends specific database functions.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_db_friend_mngr).
-author("tihon").

%% API
-export([
  create_friends/1,
  remove_friends/1,
  del_friend/2,
  is_friend/3,
  was_invited/2,
  add_friend/2]).


create_friends(_Arg0) ->
  erlang:error(not_implemented).

remove_friends(_Arg0) ->
  erlang:error(not_implemented).

del_friend(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

is_friend(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).

was_invited(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

add_friend(_Arg0, _Arg1) ->
  erlang:error(not_implemented).