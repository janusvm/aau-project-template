## fig/alg

<<&intro>>

<<#example>>
<<&before>>

```latex
\begin{algorithm}[htbp]
  \begin{algorithmic}
    \Procedure{bubblesort}{\,\(a_{1}, \dotsc, a_{n}\) : <<&argdesc>>\,}
    \For{\(i \coloneqq 1\) to \(n - 1\)}
    \For{\(j \coloneqq 1\) to \(n - i\)}
    \If{\(a_{j} > a_{j+1}\)}
    <<&swap>>
    \EndIf
    \EndFor
    \EndFor
    \EndProcedure
    \Comment{\(a_{1}, \dotsc, a_{n}\) <<&end>>}
  \end{algorithmic}
  \caption{<<&caption>>}
  \label{alg:bubblesort}
\end{algorithm}
```

<<&after>>

```latex
\input{fig/alg/bubblesort}
```
<</example>>
