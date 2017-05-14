%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Message manager is responsible for sending messages to user processes
%%% by user seq, saving messages, sending push notifications, checking
%%% user mute and blocking setting, sending chat, user and friend events.
%%% If there will be more api it should be slitted on two managers with
%%% low level and message api.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_message_mngr).
-author("tihon").

%% API
-export([
  send/5,
  send_one_way/4,
  send_and_save/4,
  send_and_save/5,
  send_one_way_and_save/3,
  send_one_way_and_save/4,
  save/3, save/2]).
-export([
  send_message/3,
  update_status/2,
  update_message/3,
  notify_media_uploaded/3,
  notify_typing/3,
  delete_message/3,
  get_messages/2]).
-export([
  send_event/4,
  send_event_one_way/4,
  send_new_event/4,
  send_new_one_way/4,
  delete_event/3]).

-spec send(map(), sn_user:seq() | list(sn_user:seq()), binary(), map(), pid() | undefined) -> ok.
send(Header, To, From, Message, Self) ->
  sn_message:send(Header, To, From, Message, Self).

-spec send_one_way(map(), sn_user:seq() | list(sn_user:seq()), map(), pid() | undefined) -> ok.
send_one_way(Header, To, Message, Self) ->
  sn_message:send_one_way(Header, To, Message, Self).

-spec send_and_save(map(), sn_user:seq(), map(), pid() | undefined) -> ok.
send_and_save(Header, From, Message, Self) ->
  sn_message:send_and_save(Header, From, Message, Self).

-spec send_and_save(map(), sn_user:seq(), map(), fun(), pid() | undefined) -> ok.
send_and_save(Header, From, Message, SaveFun, Self) ->
  sn_message:send_and_save(Header, From, Message, SaveFun, Self).

-spec send_one_way_and_save(map(), map(), pid() | undefined) -> ok.
send_one_way_and_save(Header, Message, Self) ->
  sn_message:send_one_way_and_save(Header, Message, Self).

-spec send_one_way_and_save(map(), map(), fun(), pid() | undefined) -> ok.
send_one_way_and_save(Header, Message, SaveFun, Self) ->
  sn_message:send_one_way_and_save(Header, Message, SaveFun, Self).

-spec save(map(), map(), fun()) -> ok.
save(Header, Message, SaveFun) ->
  sn_message:save(Header, Message, SaveFun).

-spec save(map(), map()) -> ok.
save(Header, Message) ->
  sn_message:save(Header, Message).

-spec send_message(map(), map(), map()) -> {{boolean(), Response :: map()}, map()}.
send_message(Header, Message, UserState) ->
  sn_message_logic:send_message(Header, Message, UserState).

-spec update_status(map(), map()) -> {{boolean(), Response :: map()}, map()}.
update_status(Message, UserState) ->
  sn_message_logic:update_status(Message, UserState).

-spec update_message(map(), map(), map()) -> {{boolean(), map()}, map()}.
update_message(Header, Message, UserState) ->
  sn_message_logic:update_message(Header, Message, UserState).

-spec notify_media_uploaded(map(), map(), map()) -> tuple().
notify_media_uploaded(Header, Message, UserState) ->
  sn_message_logic:notify_media_uploaded(Header, Message, UserState).

-spec notify_typing(map(), map(), map()) -> tuple().
notify_typing(Header, Message, UserState) ->
  sn_message_logic:notify_typing(Header, Message, UserState).

-spec delete_message(map(), map(), map()) -> tuple().
delete_message(Header, Message, UserState) ->
  sn_message_logic:delete_message(Header, Message, UserState).

-spec get_messages(map(), map()) -> tuple().
get_messages(Message, UserState) ->
  sn_message_logic:get_messages(Message, UserState).

-spec send_event(map(), sn_user:seq(), map(), pid()) -> {true, map()}.
send_event(Header, From, Message, Self) ->
  sn_events:send_event(Header, From, Message, Self).

-spec send_event_one_way(map(), sn_user:seq(), map(), pid()) -> {true, map()}.
send_event_one_way(Header, From, Message, Self) ->
  sn_events:send_event_one_way(Header, From, Message, Self).

-spec send_new_event(map(), sn_user:seq(), map(), pid()) -> {true, map()}.
send_new_event(Header, From, Message, Self) ->
  sn_events:send_new_event(Header, From, Message, Self).

-spec send_new_one_way(map(), sn_user:seq(), map(), pid()) -> {true, map()}.
send_new_one_way(Header, From, Message, Self) ->
  sn_events:send_new_one_way(Header, From, Message, Self).

-spec delete_event(sn_msg_logic:msg_type(), sn_user:seq(), sn_user:seq()) -> true.
delete_event(Type, From, To) ->
  sn_events:delete_event(Type, From, To).