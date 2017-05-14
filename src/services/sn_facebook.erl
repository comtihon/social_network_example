%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for working with Facebook service.
%%% It is not big, so no need to split it to manager and logic.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_facebook).
-author("tihon").

%% API
-export([check_token/2, get_friends/1]).


-spec check_token(integer(), binary()) -> boolean().
check_token(_UserId, _Token) ->
  erlang:error(not_implemented).

-spec get_friends(binary()) -> list().
get_friends(_UserId) ->
  erlang:error(not_implemented).