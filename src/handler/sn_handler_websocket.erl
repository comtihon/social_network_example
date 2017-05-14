%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% Cowboy websocket handler. Is a process - one per user. Saves user
%%% state data. Messages sent to this process will be sent to user.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_handler_websocket).
-author("tihon").

%% API
-export([init/2, websocket_handle/3, websocket_info/3, terminate/3]).
-export([package_result/2, send_message/3, update_friends/2, disconnect_worker/1]).

-record(state,
{
  buffer = <<>> :: binary(),  % binary for getting message, which exceed one package
  kill_timer,  % timer for killing hanged clients
  transport = <<"msgpack">>,  % msgpack is default preferred transport
  user_state = #{} :: map(),
  ping_ttl :: integer(),
  memory_time = os:timestamp()  % time, when memory was cleaned by hibernate or start.
}).

%% Send package result from sn_handler_logic:process_package_async/4 to current client
-spec package_result(pid(), tuple()) -> tuple().
package_result(_Worker, _Result) ->
  erlang:error(not_implemented).

%% Send message to this user from server or other user
-spec send_message(pid(), map() | atom() | mix, map() | list()) -> tuple().
send_message(_Worker, _Header, _Msg) ->
  erlang:error(not_implemented).

%% Make this process to update State#state.user_state if it was modified by another user or server
-spec update_friends(pid(), list()) -> tuple().
update_friends(_Worker, _Friends) ->
  erlang:error(not_implemented).

%% Kill this user
-spec disconnect_worker(pid()) -> kill.
disconnect_worker(_Worker) ->
  erlang:error(not_implemented).


init(_Req, _Opts) ->
  erlang:error(not_implemented).

websocket_handle(_Data, _Req, _State) ->
  erlang:error(not_implemented).

websocket_info(_Data, _Req, _State) ->
  erlang:error(not_implemented).

terminate(_Reason, _Req, _State) ->
  erlang:error(not_implemented).


%% private functions here - act callbacks, which can be triggered in sn_handler_logic:process_package_async/4,
%% websocket subprotocol selection, disconnect timer acting, message buffer saving if got incomplete.