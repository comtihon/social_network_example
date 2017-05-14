%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Cowboy http handler. Responsible for handling http callbacks from other
%%% services and some server's http api.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_handler_http).
-author("tihon").

%% API
-export([init/2]).


init(_Req, _Opts) ->
  erlang:error(not_implemented).