%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for users friendship via sending friend
%%% requests. When user send friend invitation to other user it becomes
%%% follower. Other user can cancel or accept this invitation. In case
%%% of accept they become friends.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_follow_logic).
-author("tihon").

%% API
-export([
  invite_friend/2,
  cancel_invite_friend/2,
  accept_friend/2]).


invite_friend(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

cancel_invite_friend(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

accept_friend(_Arg0, _Arg1) ->
  erlang:error(not_implemented).
