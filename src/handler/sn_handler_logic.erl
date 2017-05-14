%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Message routing module. Is responsible for calling proper functions
%%% for each package type.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_handler_logic).
-author("tihon").

-include("sn_net_models.hrl").
-include("sn_package_headers.hrl").
-include("sn_error_codes.hrl").

%% API
-export([process_package_async/4]).

%% Take package and execute it asynchronously. This is done to let
%% clients execute multiple packages per connection and not block client
%% while it's package is executing.
-spec process_package_async(sn_msg_logic:msg_type(), map(), map(), map()) -> pid().
process_package_async(_Type, _Header, _Message, _UserState) ->
  erlang:error(not_implemented).


%% private functions there - get proper function for each message type.
%% proceed some functions only if user was authenticated.
%% send reply for user if needed and modify its state