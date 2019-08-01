## code

<<#intro>>
<<&line>>
<</intro>>

<<#lstinputlisting>>
<<&before>>

```latex
\lstinputlisting[
  firstline=2,
  lastline=20,
  label={code:<<&filename>>},
  caption={<<&caption>>}
]{code/<<&filename>>.py}
```

<<#after>>
<<&line>>
<</after>>
<</lstinputlisting>>
