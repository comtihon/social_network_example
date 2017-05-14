%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for working with chats. Sending notifications,
%%% adding/removing users, sending messages inside chats.
%%% This module is not big, so no need to split it to manager and logic.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_chat).
-author("tihon").

%% API
-export(
[
  set_chat/2,
  add_users_to_chat/3,
  user_leaves_chat/3,
  mute_chat/2,
  get_chats/2,
  get_mutes/1,
  get_chat_msg/2
]).


-spec set_chat(map(), map()) -> tuple().
set_chat(_Message, _UserState) ->
  erlang:error(not_implemented).

-spec add_users_to_chat(Header :: map(), Message :: map(), map()) -> tuple().
add_users_to_chat(_Header, _Message, _UserState) ->
  erlang:error(not_implemented).

-spec user_leaves_chat(Header :: map(), Message :: map(), map()) -> tuple().
user_leaves_chat(_Header, _Message, _UserState) ->
  erlang:error(not_implemented).

-spec mute_chat(map(), map()) -> tuple().
mute_chat(_Message, _UserState) ->
  erlang:error(not_implemented).

-spec get_chats(map(), map()) -> tuple().
get_chats(_Message, _UserState) ->
  erlang:error(not_implemented).

-spec get_mutes(map()) -> tuple().
get_mutes(_UserState) ->
  erlang:error(not_implemented).

-spec get_chat_msg(map(), map()) -> {{false, binary()} | {true, map()}, map()}.
get_chat_msg(_Message, _UserState) ->
  erlang:error(not_implemented).