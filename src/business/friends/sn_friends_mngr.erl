%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Friend's package manager. Is responsible for making friends via
%%% invitations and scanning address books, deleting and restoring friends,
%%% a lot of checks which prevents deleted users from self-restore and others.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_friends_mngr).
-author("tihon").

%% API
-export([
  instant_add_friends/3,
  instant_add_friends_notify/2,
  should_notify_new_user/2,
  invite_friend/2,
  cancel_invite_friend/2,
  accept_friend/2,
  delete_friend/2,
  undelete_friend/2,
  notify_friends_save_no_self/3,
  is_friend/2,
  get_friends/1,
  can_invite/2]).


-spec instant_add_friends(binary(), map() | list(), list()) -> list().
instant_add_friends(Self, Friends, UserFriends) ->
  sn_invite_mngr:instant_add_friends(Self, Friends, UserFriends).

-spec instant_add_friends_notify(map(), list(sn_user:seq())) -> map().
instant_add_friends_notify(UserState, FriendSeqs) ->
  sn_invite_mngr:instant_add_friends_notify(UserState, FriendSeqs).

-spec should_notify_new_user(sn_user:seq(), map()) -> boolean().
should_notify_new_user(Seq, User) ->
  sn_notification_logic:should_notify_new_user(Seq, User).

-spec notify_friends_save_no_self(sn_user:seq(), map(), pid()) -> atom().
notify_friends_save_no_self(Seq, Message, SelfPid) ->
  sn_notification_logic:notify_friends_save_no_self(Seq, Message, SelfPid).

-spec invite_friend(map(), map()) -> {{true, ok} | {false, binary()}, map()}.
invite_friend(User, Friend) ->
  sn_invite_mngr:invite_friend(User, Friend).

-spec cancel_invite_friend(map(), map()) -> {{true, ok} | {false, binary()}, map()}.
cancel_invite_friend(User, Friend) ->
  sn_invite_mngr:cancel_invite_friend(User, Friend).

-spec accept_friend(map(), map()) -> {{true, ok} | {false, binary()}, map()}.
accept_friend(Friend, UserState) ->
  sn_invite_mngr:accept_friend(Friend, UserState).

-spec delete_friend(map(), map()) -> {{true, ok} | {false, binary()}, map()}.
delete_friend(Friend, UserState) ->
  sn_delete_logic:delete_friend(Friend, UserState).

-spec undelete_friend(map(), map()) -> {{true, ok} | {false, binary()}, map()}.
undelete_friend(Friend, UserState) ->
  sn_delete_logic:undelete_friend(Friend, UserState).

-spec is_friend(sn_user:seq(), sn_user:seq()) -> boolean().
is_friend(FriendSeq, SelfSeq) ->
  sn_invite_mngr:is_friend(FriendSeq, SelfSeq).

-spec get_friends(sn_user:seq()) -> list().
get_friends(Seq) ->
  sn_invite_mngr:get_friends(Seq).

-spec can_invite(map(), map()) -> boolean().
can_invite(UserA, UserB) ->
  sn_invite_mngr:can_invite(UserA, UserB).