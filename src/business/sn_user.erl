%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for working with users: creation,
%%% updating and getting users.
%%% This module is not big, so no need to split it to manager and logic.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_user).
-author("tihon").

%% API
-export([
  register_user/2,
  set_user/2,
  get_users/2,
  is_user_online/1,
  reset_password/1,
  cancel_account/1,
  get_state/2]).
%% And others

-type seq() :: binary().
-export_type([seq/0]).

-spec register_user(map(), map()) -> tuple().
register_user(_Message, _UserState) ->
  erlang:error(not_implemented).

-spec set_user(map(), map()) -> tuple().
set_user(_Message, _UserState) ->
  erlang:error(not_implemented).

-spec get_users(map(), map()) -> {{true, map()}, map()}.
get_users(_Message, _UserState) ->
  erlang:error(not_implemented).

-spec is_user_online(seq()) -> boolean().
is_user_online(_Seq) ->
  erlang:error(not_implemented).

-spec reset_password(seq()) -> binary().
reset_password(_Seq) ->
  erlang:error(not_implemented).

-spec reset_password(map()) -> binary().
cancel_account(_UserState) ->
  erlang:error(not_implemented).

-spec get_state(map(), map()) -> {{true, map()}, map()}.
get_state(_Message, _UserState) ->
  erlang:error(not_implemented).