-module(lesson3_task1).
-author("soldatenko").
-export([first_word/1]).

first_word(BinText) ->
  first_word(BinText, <<>>).

first_word(<<>>, Acc) ->
  Acc;
first_word(<<32, _/binary>>, Acc) when byte_size(Acc) > 0 ->
  Acc;
first_word(<<32, Rest/binary>>, Acc) ->
  first_word(Rest, Acc);
first_word(<<C, Rest/binary>>, Acc) ->
  first_word(Rest, <<Acc/binary, C>>).
