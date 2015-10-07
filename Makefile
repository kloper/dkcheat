TeX	=	pdftex

PAGES	=	t1.pdf t2.pdf

cheat:	cheat.pdf

cheat.tex: macros.tex

%.pdf: %.fig
	fig2dev -L pdftex $< $@

t1.pdf:	
	$(TeX) t1.tex

t2.pdf:	
	$(TeX) t2.tex

clean:
	rm -f t1.pdf t2.pdf \
	parabola.pdf triangle.pdf trig.pdf \
	$(PAGES) *.log *.bak 

cheat.tex: macros.tex

t1.pdf: t1.tex cheat.tex comb.tex common_values.tex gseries.tex lequations.tex \
        pascal.tex powers_of_two.tex series.tex parabola.tex aseries.tex \
	powers.tex balgebra.tex parabola.pdf

t2.pdf: t2.tex trigbase.tex trigbform.tex angles.tex phase.tex doubleangle.tex \
	halfangle.tex sumangle.tex sumfangle.tex sinetheorem.tex trigarcf.tex \
	trig.pdf triangle.pdf

