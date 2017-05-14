%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for working with Amazon Cognito service.
%%% It is not big, so no need to split it to manager and logic.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_cognito).
-author("tihon").

%% API
-export([get_open_id_token/2, get_aws_conf/0]).

-spec get_open_id_token(sn_user:seq(), map()) -> {true, map()} | {false, binary()}.
get_open_id_token(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

-spec get_aws_conf() -> tuple().
get_aws_conf() ->
  erlang:error(not_implemented).