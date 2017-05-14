%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module handles email sending to users. Getting user emails,
%%% loading resource template, filling them and sending.
%%% It is not big, so no need to split it to manager and logic.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_email).
-author("tihon").

%% API
-export([send_email/3]).
%% and others


send_email(_Arg0, _Arg1, _Arg2) ->
  erlang:error(not_implemented).