% Rules for major and minor keys
key(c_major, [c, d_minor, e_minor, f, g, a_minor, b_dim]).
key(c_minor, [c_minor, d_dim, d_sharp, f_minor, g_minor, g_sharp, a_sharp]).

key(c_sharp_major, [c_sharp, d_sharp_minor, e_sharp_minor, f_sharp, g_sharp, a_sharp_minor, b_sharp_dim]).
key(c_sharp_minor, [c_sharp_minor, d_sharp_minor, e, f_sharp_minor, g_sharp_minor, a, b]).

key(d_major, [d, e_minor, f_sharp_minor, g, a, b_minor, c_sharp_dim]).
key(d_minor, [d_minor, e_dim, f, g_minor, a_minor, a_sharp, c]).

key(d_sharp_major, [d_sharp, f_minor, g_minor, g_sharp, a_sharp, c_minor, d_dim]).
key(d_sharp_minor, [d_sharp_minor, f_dim, f_sharp, g_sharp_minor, a_sharp_minor, b, c_sharp]).

key(e_major, [e, f_sharp_minor, g_sharp_minor, a, b, c_sharp_minor, d_sharp_dim]).
key(e_minor, [e_minor, f_sharp_dim, g, a_minor, b_minor, c, d]).

key(f_major, [f, g_minor, a_minor, a_sharp, c, d_minor, e_dim]).
key(f_minor, [f_minor, g_dim, g_sharp, a_sharp_minor, c_minor, c_sharp, d_sharp]).

key(f_sharp_major, [f_sharp, g_sharp_minor, a_sharp_minor, b, c_sharp, d_sharp_minor, e_sharp_dim]).
key(f_sharp_minor, [f_sharp_minor, g_sharp_dim, a, b_minor, c_sharp_minor, d, e]).

key(g_major, [g, a_minor, b_minor, c, d, e_minor, f_sharp_dim]).
key(g_minor, [g_minor, a_dim, a_sharp, c_minor, d_minor, d_sharp, f]).

key(g_sharp_major, [g_sharp, a_sharp_minor, b_sharp_minor, c_sharp, d_sharp, f_minor, g_dim]).
key(g_sharp_minor, [g_sharp_minor, a_sharp_dim, b, c_sharp_minor, d_sharp_minor, e, f_sharp]).

key(a_major, [a, b_minor, c_sharp_minor, d, e, f_sharp_minor, g_sharp_dim]).
key(a_minor, [a_minor, b_dim, c, d_minor, e_minor, f, g]).

key(a_sharp_major, [a_sharp, c_minor, d_minor, d_sharp, f, g_minor, a_dim]).
key(a_sharp_minor, [a_sharp_minor, c_dim, c_sharp, d_sharp_minor, f_minor, f_sharp, g_sharp]).

key(b_major, [b, c_sharp_minor, d_sharp_minor, e, f_sharp, g_sharp_minor, a_sharp_dim]).
key(b_minor, [b_minor, c_sharp_dim, d, e_minor, f_sharp_minor, g, a]).

% Rule to check if a key contains all the given chords
key_contains_chords(Chords, Key) :-
    key(Key, ChordList),
    subset(Chords, ChordList).

% Main function to find the keys
find_key(Chords, Key) :-
    key_contains_chords(Chords, Key).

% Example test: find_key([c_sharp, g_sharp, a_sharp_minor], K).
