%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for starting handlers - http and websocket
%%% @end
%%%-------------------------------------------------------------------
-module(sn_handler_mngr).
-author("tihon").

%% API
-export([init/0, stop/0]).

-spec init() -> ok.
init() ->
  erlang:error(not_implemented).

-spec stop() -> ok.
stop() ->
  erlang:error(not_implemented).


%% private functions here - get handlers configuration and start cowboy listeners
%% determine and set optimal buffer size for messages
