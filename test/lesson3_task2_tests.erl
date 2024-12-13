-module(lesson3_task2_tests).
-author("soldatenko").
-include_lib("eunit/include/eunit.hrl").
-import(lesson3_task2, [words/1]).

words_test() ->
  ?assertEqual(words(<<"Hello World from Erlang">>), [<<"Hello">>, <<"World">>, <<"from">>, <<"Erlang">>]),
  ?assertEqual(words(<<"   Hello   World   ">>), [<<"Hello">>, <<"World">>]),
  ?assertEqual(words(<<"  ">>), []),
  ?assertEqual(words(<<"Hello">>), [<<"Hello">>]).