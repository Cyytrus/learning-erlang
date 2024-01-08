%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/42dd0cea20498fd544b152c4e2c0a419bb7e266a/exercises/rna-transcription/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(rna_transcription_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_empty_rna_sequence_test_'() ->
    {"Empty RNA sequence",
     ?_assertMatch([], rna_transcription:to_rna([]))}.

'2_rna_complement_of_cytosine_is_guanine_test_'() ->
    {"RNA complement of cytosine is guanine",
     ?_assertMatch("G", rna_transcription:to_rna("C"))}.

'3_rna_complement_of_guanine_is_cytosine_test_'() ->
    {"RNA complement of guanine is cytosine",
     ?_assertMatch("C", rna_transcription:to_rna("G"))}.

'4_rna_complement_of_thymine_is_adenine_test_'() ->
    {"RNA complement of thymine is adenine",
     ?_assertMatch("A", rna_transcription:to_rna("T"))}.

'5_rna_complement_of_adenine_is_uracil_test_'() ->
    {"RNA complement of adenine is uracil",
     ?_assertMatch("U", rna_transcription:to_rna("A"))}.

'6_rna_complement_test_'() ->
    {"RNA complement",
     ?_assertMatch("UGCACCAGAAUU",
		   rna_transcription:to_rna("ACGTGGTCTTAA"))}.
