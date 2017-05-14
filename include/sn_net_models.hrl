%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. May 2017 12:10
%%%-------------------------------------------------------------------
-author("tihon").

-define(MSGPACK, <<"msgpack">>).

%% Packets
-define(EXAMPLE_PACKET1, <<"example1">>).
-define(EXAMPLE_PACKET2, <<"example2">>).

-define(MSG_TYPE,
  [
    {?EXAMPLE_PACKET1, 1},
    {?EXAMPLE_PACKET2, 2}
  ]).