%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module implements all low-level code for working with database
%%% driver. It's exports are not exposed outside of database package.
%%% Other modules, which use database - call it. No database calls should
%%% be done without this module.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_database_logic).
-author("tihon").

%% API
-export([
  find_all/3, find_all/4,
  find_hibernate/4, find_hibernate/3,
  find_limit/4, find_limit/5,
  find_one/3, find_one/4]).

-export([
  put_duplicate/3,
  update/5, update/6,
  append_array/4]).
%% and other functions...


find_all(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).

find_all(_Arg0, _Arg1, _Arg2, _Arg3) ->
  erlang:error(not_implemented).

find_hibernate(_Arg0, _Arg1, _Arg2, _Arg3) ->
  erlang:error(not_implemented).

find_hibernate(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).

find_limit(_Arg0, _Arg1, _Arg2, _Arg3) ->
  erlang:error(not_implemented).

find_limit(_Arg0, _Arg1, _Arg2, _Arg3, _Arg4) ->
  erlang:error(not_implemented).

find_one(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).

find_one(_Arg0, _Arg1, _Arg2, _Arg3) ->
  erlang:error(not_implemented).

put_duplicate(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).

update(_Arg0, _Arg1, _Arg2, _Arg3, _Arg4) ->
  erlang:error(not_implemented).

update(_Arg0, _Arg1, _Arg2, _Arg3, _Arg4, _Arg5) ->
  erlang:error(not_implemented).

append_array(_Arg0, _Arg1, _Arg2, _Arg3) ->
  erlang:error(not_implemented).