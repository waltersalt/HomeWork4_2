-module(lesson3_task4_tests).
-author("soldatenko").
-include_lib("eunit/include/eunit.hrl").
-import(lesson3_task4, [decode/2]).

decode_test() ->
  Json = <<"{\"key\":\"value\", \"number\":123, \"is_active\":true, \"nested\":{\"inner\":\"value\"} }">>,
  ExpectedProplist = [{<<"key">>, <<"value">>}, {<<"number">>, 123}, {<<"is_active">>, true}, {<<"nested">>, [{<<"inner">>, <<"value">>}]}],
  ?assertEqual(decode(Json, proplist), ExpectedProplist),

  ExpectedMap = maps:from_list(ExpectedProplist),
  ?assertEqual(decode(Json, map), ExpectedMap).