%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for working with mobile operators for
%%% sending pins, checking MSISDN's and what not.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_mobile_api).
-author("tihon").

%% API
-export([
  request_msisdn/2,
  check_msisdn/1,
  check_pin/3]).
%% And others.

request_msisdn(_Arg0, _Arg1) ->
  erlang:error(not_implemented).

check_msisdn(_Arg0) ->
  erlang:error(not_implemented).

check_pin(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).