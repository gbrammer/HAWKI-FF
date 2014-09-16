%% $Id: esoform.cls,v 1.7 2006/09/01 12:27:19 visas Exp $
%%
%% ESOFORM class file (ported from esoform.sty)
%% A M Chavan, ESO, 19-May-2003
%%
%% Copyright 1998-2003 by the European Southern Observatory

\ProvidesClass{esoform}		%Added  by ST (Changed from esoform)
\LoadClass{article}
\RequirePackage{common2e}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Page 1
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageOne
%%
%% Generate page 1 layout for normal programmes.
%%
\def\@MakePageOne{

        \begin{picture}(\@pageWidth,\@pageonelength)

        \makebox(\@pageWidth,\@pageonelength)[tl]{
                \vbox{
                        \MakeHeader
                        \MakeTitle
                        \CheckPcal
                        \MakeAbstract
                        \MakeRunsBox

                        \if@keyprg
                                \MakeInvestigator
                        \else
                                \MakeNightBox
                                \MakeSpecialRemarks
                                \MakeInvestigator
                                \MakeCoisnew
                        \fi     
                        \MakePageNumber
                }
        }

        \end{picture}
        \vfill
        \pagebreak
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Page 2 
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageTwo
%%
%% Generate page 2 layout for normal programmes.
%%
\def\@MakePageTwo{
        \MakeDescriptionPages
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Page 3
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageThree
%%
%% Generate page 3 layout for normal programmes.
%%
\def\@MakePageThree{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{
                \vbox{
                        \MakeNightLunarPhase
                        \MakePageNumber
                }
        }
        \end{picture}
        \vfill
        \pagebreak
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Page 4
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageFour
%%
%% Generate page 4 layout for normal programmes.
%%
\def\@MakePageFour{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{
                \vbox{
                        \MakeLastProgramme
                        \MakeRequestedData
			\MakeRequestedDuplicate
                        \MakePublications
                        \MakePageNumber
                }
        }
        \end{picture}
        \vfill
        \pagebreak
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%    Page 5
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageFive
%%
%% Generate page 4 layout for normal programmes.
%%
\def\@MakePageFive{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{
                \vbox{
                        \MakeTargets
                        \MakePageNumber
                }
        }
        \end{picture}
        \vfill
        \pagebreak
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Page 6
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageSix
%%
%% Generate page 6 layout for normal programmes.
%%
\def\@MakePageSix{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{
                \vbox{
                        \MakeSchedulingReq
                        \MakePageNumber
                }
        }
        \end{picture}
        \vfill
        \pagebreak
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Page 7
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageSeven
%%
%% Generate page 7 layout for normal programmes.
%%

   \def\@MakePageSeven{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{\vbox{ \MakeTimeCritReq \MakePageNumber } }
        \end{picture}
        \vfill
        \pagebreak
   }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%     Page 8
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Macro: @MakePageEight
%%
%% Generate page 8 layout for normal programmes.
%%
\def\@MakePageEight{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{
                \vbox{
                        \MakeInstrumentConfBox
                        \MakePageNumber
                }
        }
        \end{picture}
        \vfill
        \pagebreak

%%%%%%%%%%%%%%%%%%%%%%
        \if@DefAdonis 
                \@MakeAdonisPage 
        \fi

        \if@DefInterferometry
                \@MakeInterferometryPage 
        \fi             
	\ifx\@emptyValue\@tooPage
	\else
                \@MakeTOOPage
        \fi             
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Macro: @MakeAdonisPage
%%
%% Generate ADONIS page layout for normal programmes.
%%
\def\@MakeAdonisPage{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{
                \vbox{
                        \MakeAdonisBox
                        \MakePageNumber
                }
        }
        \end{picture}
        \vfill
        \pagebreak
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Macro: @MakeInterferometryPage
%%
%% Generate Interferometry page layout for normal programmes.
%%
\def\@MakeInterferometryPage{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{
                \vbox{
                        \MakeInterferometryBox
                        \MakePageNumber
                }
        }
        \end{picture}
        \vfill
        \pagebreak
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakeTOOPage
%%
%% Generate Interferometry page layout for normal programmes.
%%
\def\@MakeTOOPage{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{
                \vbox{
                        \MakeTOOBox
                        \MakePageNumber
                }
        }
        \end{picture}
        \vfill
        \pagebreak
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Visitor Page (Page 7)
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakeVisitorInstrumentPage
%%
%% Generate visitor page layout for normal programmes.
%%
\def\@MakeVisitorInstrumentPage{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{
                \vbox{
                        \MakeVisitorInstrumentBox
                        \MakePageNumber
                }
        }
        \end{picture}
        \vfill
        \pagebreak
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Overflow page
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakeOptionalPages
%%
%% Generate an overflow page for extra information
%%
\def\@MakeOptionalPages{

  %% If needed, make the \ObsRuns overflow page
  %%------------------------------------------------------------
  \ifnum\the\@obsRunCounterOverflow>0
  \begin{picture}(\@pageWidth,\@pagetwolength)
    \makebox(\@pageWidth,\@pagetwolength)[tl]{
      \vbox{
        \MakeOverflowRunsBox
        \MakePageNumber
      }
    }
  \end{picture}
  \vfill
  \pagebreak
  \fi

%% If needed, make the \CoIs overflow page
  %%------------------------------------------------------------
  \@coisnewOverflowPage=1
  \loop
  \expandafter\ifx\csname coinewList\the\@coisnewOverflowPage\endcsname\relax
  \else
  \begin{picture}(\@pageWidth,\@pagetwolength)
    \makebox(\@pageWidth,\@pagetwolength)[tl]{
      \vbox{
        \MakeOverflowcoisnew{\the\@coisnewOverflowPage}%
        \MakePageNumber
        \global\advance\@coisnewOverflowPage by 1
      }
    }
  \end{picture}
  \vfill
  \pagebreak
  \repeat

%% If needed, make the \Target overflow page
  %%------------------------------------------------------------
  \@targetsOverflowPage=1
  \loop
  \expandafter\ifx\csname TargetList\the\@targetsOverflowPage\endcsname\relax
  \else
  \begin{picture}(\@pageWidth,\@pagetwolength)
    \makebox(\@pageWidth,\@pagetwolength)[tl]{
      \vbox{
        \MakeOverflowTargets{\the\@targetsOverflowPage}%
        \MakePageNumber
        \global\advance\@targetsOverflowPage by 1
      }
    }
  \end{picture}
  \vfill
  \pagebreak
  \repeat

  %% If needed, make the \INSConfig overflow page
  %%------------------------------------------------------------
  \ifnum\the\@instConfCounter>\@instConfCounterMax
    \begin{picture}(\@pageWidth,\@pagetwolength)
      \makebox(\@pageWidth,\@pagetwolength)[tl]{
        \vbox{
          \MakeInstrumentConfBoxB
          \MakePageNumber
        }
      }

    \end{picture}
    \vfill
    \pagebreak
  \fi


  %% If needed, make the \vltiTarget overflow page
  %%------------------------------------------------------------
  \@vltitargetsOverflowPage=1
  \loop
  \expandafter\ifx\csname vltiTargetList\the\@vltitargetsOverflowPage\endcsname\relax
  \else
  \begin{picture}(\@pageWidth,\@pagetwolength)
    \makebox(\@pageWidth,\@pagetwolength)[tl]{
      \vbox{
        \MakeOverflowVLTITargets{\the\@vltitargetsOverflowPage}%
        \MakePageNumber
        \global\advance\@vltitargetsOverflowPage by 1
      }
    }
  \end{picture}
  \vfill
  \pagebreak
  \repeat
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Make all the document
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: MakeProposal
%%
%% Generate all the document for normal programmes.
%%
\def\MakeProposal{

        \@MakePageOne
        \@MakePageTwo	% Added by ST: changed from  makepagetwothree
        \@MakePageThree
        \@MakePageFour
        \@MakePageFive
        \@MakePageSix
	\ifx\@emptyValue\@pageTimeCritical
	\else
            \@MakePageSeven
	\fi
	\@MakePageEight
        \ifx\@emptyValue\@pageVisitorInstrument
        \else
                \@MakeVisitorInstrumentPage
        \fi
        \@MakeOptionalPages     % create some pages if needed.
	\@compmsg

}
