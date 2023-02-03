#=======================================================================
#     Makefile
#
#     Compilation of a general LaTeX project.
#
#     Available commands:
#     'make'			build final output(s)
#     'make clean'		remove LaTeX temporary files
#	  'make cleanall'	remove LaTeX temporary files and final output(s)
#
#     This is a Makefile for LaTeX.
#     Copyright 2021 Tom M. Ragonneau.
#=======================================================================

# Latexmk compiler and default compilation flags.
LC = latexmk
LFLAGS = -verbose -Werror

.PHONY : main clean cleanall

main:
	$(LC) $(LFLAGS)

clean :
	$(LC) $(LFLAGS) -c

cleanall:
	$(LC) $(LFLAGS) -C