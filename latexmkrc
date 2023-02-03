#=======================================================================
#     latexmkrc
#
#     Configuration file for LaTeX compilation using Latexmk.
#
#     This is a configuration file for Latexmk.
#     Copyright 2021 Tom M. Ragonneau.
#=======================================================================

# Generate pdf using xelatex.
$pdf_mode = 1;
$postscript_mode = 0;
$dvi_mode = 0;

# Configure xelatex engine.
$pdflatex = "xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S";
push @generated_exts, "synctex.gz", "synctex(busy)";

# Remove extra extension on clean.
$clean_ext = "bbl ist nav run.xml snm xdv";

# Build dependencies for the glossaries-extra package.
add_cus_dep("acn", "acr", 0, "makeglo2gls");
add_cus_dep("glo", "gls", 0, "makeglo2gls");
sub makeglo2gls {
    if ($silent) {
        system("makeglossaries -q $_[0]");
    }
    else {
        system("makeglossaries $_[0]");
    };
}
push @generated_exts, "glg", "glo", "gls";
push @generated_exts, "acn", "acr", "alg";