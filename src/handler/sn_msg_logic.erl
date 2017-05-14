%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module contains functions for encoding and decoding messages.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_msg_logic).
-author("tihon").

-include("sn_net_models.hrl").
-include("sn_package_headers.hrl").
-include("sn_error_codes.hrl").

-type msg_type() :: atom().

-export_type([msg_type/0]).

%% API
-export([decode/2, encode/3]).

-spec decode(binary(), binary()) -> {map(), map(), binary()} | incomplete.
decode(_Package, ?MSGPACK) ->
  erlang:error(not_implemented).

-spec encode(map(), map(), binary()) -> binary().
encode(_Header, _Package, ?MSGPACK) ->
  erlang:error(not_implemented).


%% Some private functions with preparing package to encode/decoding logic