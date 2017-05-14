%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for sending notifications to friends,
%%% such as NewUser, UserActions and others.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_notification_logic).
-author("tihon").

%% API
-export([should_notify_new_user/2, notify_friends_save_no_self/3]).

should_notify_new_user(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

notify_friends_save_no_self(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).


%% private functions for checking user's mute notification settings