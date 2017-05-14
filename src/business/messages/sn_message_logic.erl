%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for handling messages from users.
%%% Sending message logic, checking message blocking, sending push
%%% notifications, getting unread messages and other message related
%%% stuff is handled here.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_message_logic).
-author("tihon").

%% API
-export([
  send_message/3,
  update_status/2,
  update_message/3,
  notify_media_uploaded/3,
  notify_typing/3,
  delete_message/3,
  get_messages/2]).
%% and others


-spec send_message(map(), map(), map()) -> {{boolean(), Response :: map()}, map()}.
send_message(_Header, _Message, _UserState) ->
  erlang:error(not_implemented).

-spec update_status(map(), map()) -> {{boolean(), Response :: map()}, map()}.
update_status(_Message, _UserState) ->
  erlang:error(not_implemented).

-spec update_message(map(), map(), map()) -> {{boolean(), map()}, map()}.
update_message(_Header, _Message, _UserState) ->
  erlang:error(not_implemented).

-spec notify_media_uploaded(map(), map(), map()) -> tuple().
notify_media_uploaded(_Header, _Message, _UserState) ->
  erlang:error(not_implemented).

-spec notify_typing(map(), map(), map()) -> tuple().
notify_typing(_Header, _Message, _UserState) ->
  erlang:error(not_implemented).

-spec delete_message(map(), map(), map()) -> tuple().
delete_message(_Header, _Message, _UserState) ->
  erlang:error(not_implemented).

-spec get_messages(map(), map()) -> tuple().
get_messages(_Message, _UserState) ->
  erlang:error(not_implemented).