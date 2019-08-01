## fig/tab

<<&intro>>

<<#example>>
<<&before>>

```latex
\begin{table}[htbp]
  \centering
  \begin{tabular}{ll}
<<#tab>>
    \toprule
    \textbf{<<&environment>>} <<&spacer>>& \textbf{<<&function>>} \\
    \midrule
    \texttt{document}    & <<&document>> \\
    \texttt{table}       & <<&table>> \\
    \texttt{figure}      & <<&figure>> \\
    \texttt{equation}    & <<&equation>> \\
    \texttt{align}       & <<&align>> \\
    \texttt{itemize}     & <<&itemize>> \\
    \texttt{enumerate}   & <<&enumerate>> \\
    \texttt{description} & <<&description>> \\
    \bottomrule
<</tab>>
  \end{tabular}
  \caption{<<&caption>>}
  \label{tab:<<&label>>}
\end{table}
```

<<&after>>

```latex
\input{fig/tab/envirs}
```
<</example>>
