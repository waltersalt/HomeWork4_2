-module(lesson3_task3).
-author("soldatenko").
-export([split/2]).

split(BinText, Delimiter) ->
  split(BinText, Delimiter, byte_size(Delimiter), [], []).

split(<<>>, _, _, _, Acc) ->
  lists:reverse(Acc);
split(BinText, Delimiter, DelimSize, _, Acc) ->
  case binary:match(BinText, Delimiter) of
    {Pos, _} ->
      Part = binary:part(BinText, 0, Pos),
      RemainingText = binary:part(BinText, Pos + DelimSize, byte_size(BinText) - Pos - DelimSize),
      split(RemainingText, Delimiter, DelimSize, <<>>, [Part | Acc]);
    nomatch ->
      lists:reverse([BinText | Acc])
  end.