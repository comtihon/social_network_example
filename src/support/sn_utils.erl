%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. May 2017 15:30
%%%-------------------------------------------------------------------
-module(sn_utils).
-author("tihon").

%% API
-export([
  get_value/2,
  get_value/3,
  index_of/2,
  now_to_timestamp/0,
  ts_to_timestamp/1]).
%% and others.


-spec get_value(any(), list()) -> any().
get_value(_Key, _List) ->
  erlang:error(not_implemented).

-spec get_value(any(), list(), any()) -> any().
get_value(_Key, _List, _Default) ->
  erlang:error(not_implemented).

-spec index_of(any(), list()) -> integer() | undefined.
index_of(_Item, _List) ->
  erlang:error(not_implemented).

-spec now_to_timestamp() -> integer().
now_to_timestamp() ->
  erlang:error(not_implemented).

-spec ts_to_timestamp(erlang:timestamp()) -> integer().
ts_to_timestamp(_Arg0) ->
  erlang:error(not_implemented).