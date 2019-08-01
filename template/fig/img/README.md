## fig/img

<<&intro>>
<<#example>>
<<&before>>

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=\textwidth]{fig/img/<<&filename>>}
  \caption{<<&caption>>}
  \label{fig:label}
\end{figure}
```

<<&after>>
<</example>>


<<#commands>>
### <<&title>>

<<&description>>

<<#list>>
  * `imgfig`: <<&imgfig>>
  * `dimgfig`: <<&dimgfig>>
<</list>>
<</commands>>

<<#examples>>
<<&header>>:

```latex
<<#imgfig>>
<<#description1>>
% <<&line>>
<</description1>>
\imgfig{<<&filename>>}{<<&caption>>}
<<#description2>>
% <<&line>>
<</description2>>
\imgfig[0.5]{<<&filename>>}{<<&caption>>}
<</imgfig>>

<<#dimgfig>>
<<#description1>>
% <<&line>>
<</description1>>
\dimgfig{<<&filename1>>}{<<&caption1>>}{<<&filename2>>}{<<&caption2>>}
<<#description2>>
% <<&line>>
<</description2>>
\dimgfig[0.3]{<<&filename1>>}{<<&caption1>>}{<<&filename2>>}{<<&caption2>>}
<</dimgfig>>
```
<</examples>>

<<#endnote>>
<<&line>>
<</endnote>>
