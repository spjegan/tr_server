%%%-------------------------------------------------------------------
%%% @author jegan
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 28. Oct 2018 7:49 PM
%%%-------------------------------------------------------------------
-module(tr_server_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
  case tr_server_sup:start_link() of
    {ok, Pid} -> {ok, Pid};
    Other -> {error, Other}
  end.

stop(_State) ->
  ok.
