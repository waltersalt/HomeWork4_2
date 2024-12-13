-module(lesson3_task1_tests).
-author("soldatenko").
-include_lib("eunit/include/eunit.hrl").
-import(lesson3_task1, [first_word/1]).

first_word_test() ->
  ?assertEqual(first_word(<<"Hello World">>), <<"Hello">>),
  ?assertEqual(first_word(<<"   Hello World">>), <<"Hello">>),
  ?assertEqual(first_word(<<"  ">>), <<>>),
  ?assertEqual(first_word(<<"Hello">>), <<"Hello">>).