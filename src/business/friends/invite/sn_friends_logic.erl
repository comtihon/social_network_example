%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. May 2017 13:32
%%%-------------------------------------------------------------------
-module(sn_friends_logic).
-author("tihon").

%% API
-export([
  is_friend/2,
  get_friends/1,
  can_invite/2,
  instant_add_friends/3,
  instant_add_friends_notify/2]).


is_friend(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

get_friends(_Arg0) ->
  erlang:error(not_implemented).

can_invite(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

instant_add_friends(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).

instant_add_friends_notify(_Arg0, _Arg1) ->
  erlang:error(not_implemented).