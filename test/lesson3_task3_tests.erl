-module(lesson3_task3_tests).
-author("soldatenko").
-include_lib("eunit/include/eunit.hrl").
-import(lesson3_task3, [split/2]).

split_test() ->
  ?assertEqual(split(<<"a,b,c,d">>, <<",">>), [<<"a">>, <<"b">>, <<"c">>, <<"d">>]),
  ?assertEqual(split(<<"apple orange banana">>, <<" ">>), [<<"apple">>, <<"orange">>, <<"banana">>]),
  ?assertEqual(split(<<"x-y-z">>, <<"-">>), [<<"x">>, <<"y">>, <<"z">>]),
  ?assertEqual(split(<<"a,b,,c,d">>, <<",">>), [<<"a">>, <<"b">>, <<>> ,<<"c">>, <<"d">>]).