%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%%-------------------------------------------------------------------
-module(sn_invite_mngr).
-author("tihon").

%% API
-export([
  invite_friend/2,
  cancel_invite_friend/2,
  accept_friend/2,
  is_friend/2,
  get_friends/1,
  can_invite/2,
  instant_add_friends/3,
  instant_add_friends_notify/2,
  scan_contacts_get_friends/2]).

-spec invite_friend(map(), map()) -> {{true, ok} | {false, binary()}, map()}.
invite_friend(Friend, UserState) ->
  sn_follow_logic:invite_friend(Friend, UserState).

-spec cancel_invite_friend(map(), map()) -> {{true, ok} | {false, binary()}, map()}.
cancel_invite_friend(Invite, UserState) ->
  sn_follow_logic:cancel_invite_friend(Invite, UserState).

-spec accept_friend(map(), map()) -> {{true, ok} | {false, binary()}, map()}.
accept_friend(Friend, UserState) ->
  sn_follow_logic:accept_friend(Friend, UserState).

-spec is_friend(sn_user:seq(), sn_user:seq()) -> boolean().
is_friend(FriendSeq, SelfSeq) ->
  sn_friends_logic:is_friend(FriendSeq, SelfSeq).

-spec get_friends(sn_user:seq()) -> list().
get_friends(Seq) ->
  sn_friends_logic:get_friends(Seq).

-spec can_invite(map(), map()) -> boolean().
can_invite(UserA, UserB) ->
  sn_friends_logic:can_invite(UserA, UserB).

-spec instant_add_friends(binary(), map() | list(), list()) -> list().
instant_add_friends(Self, Friends, UserFriends) ->
  sn_friends_logic:instant_add_friends(Self, Friends, UserFriends).

-spec instant_add_friends_notify(map(), list(sn_user:seq())) -> map().
instant_add_friends_notify(UserState, FriendSeqs) ->
  sn_friends_logic:instant_add_friends_notify(UserState, FriendSeqs).

-spec scan_contacts_get_friends(list(), map()) -> {{true, map()}, map()}.
scan_contacts_get_friends(Contacts, UserState) ->
  sn_contacts_logic:scan_contacts_get_friends(Contacts, UserState).