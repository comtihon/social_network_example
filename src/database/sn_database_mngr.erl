%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Main database manager - is responsible for starting database and some
%%% system functions like working with configuration and certificates
%%% stored in db
%%% @end
%%%-------------------------------------------------------------------
-module(sn_database_mngr).
-author("tihon").

%% API
-export([init/0]).
%% some system functions database exports


-spec init() -> ok.
init() ->
  erlang:error(not_implemented).