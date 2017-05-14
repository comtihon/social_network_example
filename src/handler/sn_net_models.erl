%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Small module for converting integer from net protocol to proper message type
%%% @end
%%%-------------------------------------------------------------------
-module(sn_net_models).
-author("tihon").

-include("sn_net_models.hrl").

%% API
-export([msg_type_to_num/1, msg_type_from_num/1]).


%% get message number by type
-spec msg_type_to_num(sn_msg_logic:msg_type()) -> integer().
msg_type_to_num(_MsgType) ->
  erlang:error(not_implemented).

%% get message type by number
-spec msg_type_from_num(integer()) -> sn_msg_logic:msg_type().
msg_type_from_num(_MsgNum) ->
  erlang:error(not_implemented).
