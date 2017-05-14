%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module contains all useful functions, which are related to
%%% secret generation, decode certificates and others.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_crypto_utils).
-author("tihon").

%% API
-export([
  get_random_secret/0,
  hash_secret/1,
  hash_sha1/1]).
%% and others

-spec get_random_secret() -> string().
get_random_secret() ->
  erlang:error(not_implemented).

-spec hash_secret(string() | binary()) -> binary().
hash_secret(_Secret) ->
  erlang:error(not_implemented).

-spec hash_sha1(binary() | string()) -> string().
hash_sha1(_Data) ->
  erlang:error(not_implemented).