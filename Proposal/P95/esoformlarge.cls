%% $Id: esoformlarge.cls,v 1.9 2007/08/14 11:23:23 fsogni Exp $
%%
%% ESOFORM class file (ported from esoform.sty)
%% A M Chavan, ESO, 19-May-2003
%%
%% Copyright 1998-2003 by the European Southern Observatory

\ProvidesClass{esoformlarge}
\LoadClass{article}
\RequirePackage{common2e}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Large Programme Declaration
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\KeyProgramme

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Page 1
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageOne
%%
%% Generate page 1 layout for large programmes.
%%
\def\@MakePageOne{
        \begin{picture}(\@pageWidth,\@pageonelength)
        \makebox(\@pageWidth,\@pageonelength)[tl]{
                \vbox{
                        \MakeHeader
                        \MakeTitle
                        \MakeAbstract
                        \MakeRunsBox
                        \MakeInvestigator
                        \MakeCoisnew
                        \MakePageNumber
                }
        }
        \end{picture}
        \vfill
        \pagebreak
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Pages 2, 3 and 4
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageTwoThreeAndFour
%%
%% Generate pages 2, 3 and 4 layout for large programmes.
%%
\def\@MakePageTwoThreeAndFour{
        \MakeDescriptionPages
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Page 5
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageFive
%%
%% Generate page 5 layout for large programmes.
%%
\def\@MakePageFive{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{
                \vbox{
                        \MakeExperienceBox
                        \MakeResourcesBox
                        \MakeSpecialRemarks
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
%% Generate page 6 layout for large programmes.
%%
\def\@MakePageSix{
        \begin{picture}(\@pageWidth,\@pagetwolength)
        \makebox(\@pageWidth,\@pagetwolength)[tl]{
                \vbox{
                        \MakeNightLunarPhase
                        \MakeLastProgramme  
                        \MakePublications                       
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
%% Generate page 7 layout for large programmes.
%%
\def\@MakePageSeven{
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
%%      Page 8
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageEight
%%
%% Generate page 8 layout for large programmes.
%%
\def\@MakePageEight{
  	\begin{picture}(\@pageWidth,\@pagetwolength)
    
    	\makebox(\@pageWidth,\@pagetwolength)[tl]{
      		\vbox{
        		\MakeRequestedData
       	 		\MakeRequestedDuplicate
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
%%      Page 8 -- Time Critical
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakePageEight
%%
%% Generate page 8 layout for large programmes.
%%

\def\@MakePageEightTCrit{
  \begin{picture}(\@pageWidth,\@pagetwolength)
    \makebox(\@pageWidth,\@pagetwolength)[tl]{
      \vbox{
        \MakeTimeCritReq
        \MakePageNumber
      }
    }
  \end{picture}
  \vfill
  \pagebreak
  }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page 9
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@MakePageNine{
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

  \if@DefInterferometry
     \@MakeInterferometryPage 
  \fi  
  \if@too
    \@MakeTOOPage
  \fi             
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Macro: @MakeTOOPage
%%
%% Generate TOO page layout for normal programmes.
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
%%      Visitor Page (Page 9)
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: @MakeVisitorInstrumentPage
%%
%% Generate visitor page layout for large programmes.
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


%% If needed, make the CoInew overflow page
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


  %% If requested, make the apecial ADONIS page
  %%------------------------------------------------------------
% ADONIS is not offered any more
%  \if@DefAdonis 
%    \@MakeAdonisPage 
%  \fi

%  %% If requested, make the apecial VisitorInstrument page
%  %%------------------------------------------------------------
%  \ifx\@emptyValue\@pageVisitorInstrument
%  \else
%    \@MakeVisitorInstrumentPage
%  \fi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%      Make all the document
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Macro: MakeProposal
%%
%% Generate all the document for large programmes.
%%
\def\MakeProposal{
        \@MakePageOne
        \@MakePageTwoThreeAndFour
        \@MakePageFive
        \@MakePageSix
        \@MakePageSeven
        \@MakePageEight
	  \ifx\@emptyValue\@pageTimeCritical
	  \else
               \@MakePageEightTCrit
	  \fi
	\@MakePageNine
        \ifx\@emptyValue\@pageVisitorInstrument
        \else
                \@MakeVisitorInstrumentPage
        \fi


        \@MakeOptionalPages     % create some pages, but then maybe not.
	\@compmsg
}
