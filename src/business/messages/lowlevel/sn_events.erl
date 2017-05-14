%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsbile for sending chat, user and friend events,
%%% checking user event mute settings and saving/updating critical events
%%% for offline users.
%%% It is subpackage not big enough, so no need to split it into manager
%%% and logic modules.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_events).
-author("tihon").

%% API
-export([
  send_event/4,
  send_event_one_way/4,
  send_new_event/4,
  send_new_one_way/4,
  delete_event/3]).
%% and others


-spec send_event(map(), sn_user:seq(), map(), pid()) -> {true, map()}.
send_event(_Header, _From, _Message, _Self) ->
  erlang:error(not_implemented).

-spec send_event_one_way(map(), sn_user:seq(), map(), pid()) -> {true, map()}.
send_event_one_way(_Header, _From, _Message, _Self) ->
  erlang:error(not_implemented).

-spec send_new_event(map(), sn_user:seq(), map(), pid()) -> {true, map()}.
send_new_event(_Header, _From, _Message, _Self) ->
  erlang:error(not_implemented).

-spec send_new_one_way(map(), sn_user:seq(), map(), pid()) -> {true, map()}.
send_new_one_way(_Header, _From, _Message, _Self) ->
  erlang:error(not_implemented).

-spec delete_event(sn_msg_logic:msg_type(), sn_user:seq(), sn_user:seq()) -> true.
delete_event(_Type, _From, _To) ->
  erlang:error(not_implemented).
