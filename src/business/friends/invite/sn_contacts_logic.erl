%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is responsible for searching provided msisdn in user's
%%% address book. If userA contacts contain userB and userB contacts
%%% contain userA - they become friends. If only one of them contains
%%% other's msisdn - invite will be sent.
%%% @end
%%%-------------------------------------------------------------------
-module(sn_contacts_logic).
-author("tihon").

%% API
-export([scan_contacts_get_friends/2]).

-spec scan_contacts_get_friends(list(), map()) -> {{true, map()}, map()}.
scan_contacts_get_friends(_Contacts, _UserState) ->
  erlang:error(not_implemented).