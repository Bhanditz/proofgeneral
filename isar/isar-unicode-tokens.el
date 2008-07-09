;;; -*- coding: utf-8; -*-
;; isar-unicode-tokens.el --- Tokens for Unicode Tokens package
;;
;; Copyright(C) 2008 David Aspinall / LFCS Edinburgh
;; Author:    David Aspinall <David.Aspinall@ed.ac.uk>
;;
;; This file is loaded by `proof-unicode-tokens.el'.
;;
;; It sets the variables defined at the top of unicode-tokens.el,
;; unicode-tokens-<foo> is set from isar-<foo>.  See the corresponding
;; variable for documentation.
;;

(defconst isar-token-format "\\<%s>")
(defconst isar-charref-format "\\<#x%x>")
(defconst isar-token-prefix "\\<")
(defconst isar-token-suffix ">")
(defconst isar-token-match "\\\\<\\([a-zA-Z][a-zA-Z0-9_']+\\)>")
(defconst isar-control-token-match "\\\\<^\\([a-zA-Z][a-zA-Z0-9_']+\\)>")
(defconst isar-control-token-format "\\<^%s>")
(defconst isar-hexcode-match "\\\\<\\(#[xX][0-9A-Fa-f]+\\)")
(defconst isar-next-character-regexp "\\\\<#[xX][0-9A-Fa-f]+>\\|.")

(defcustom isar-token-name-alist
  (flet 
      ((script (s) (format "\\<^bscript>%s\\<^escript>" s))
       (frakt (s) (format "\\<^bfrak>%s\\<^efrak>" s))
       (serif (s) (format "\\<^bserif>%s\\<^eserif>" s))
       (bold (s) (format "\\<^bbold>%s\\<^ebold>" s)))

    ;; property-based annotations.  More direct for input
    ;; but inverse mapping tricky: need to ignore for 
    ;; reverse and fold \<^bscript>A\<^escript> -> \<AA> etc.
    ;; Extra dimension in table required.
    ;; (Also: not supported in XEmacs?)
      ;((script (s) (unicode-tokens-annotate-string "script" s))
      ; (frakt    (s) (unicode-tokens-annotate-string "frak" s))
      ; (serif     (s) (unicode-tokens-annotate-string "serif" s)))
  `(; token name, unicode char sequence
    ;; Based on isabellesym.sty,v 1.45 2006/01/05

    ;; Bold numerals
    ("one" . ,(bold "1"))
    ("two" . ,(bold "2"))
    ("three" . ,(bold "3"))
    ("four" . ,(bold "4"))
    ("five" . ,(bold "5"))
    ("six" . ,(bold "6"))
    ("seven" . ,(bold "7"))
    ("eight" . ,(bold "8"))
    ("nine" . ,(bold "9"))
    ;; Mathcal 
    ("A" . ,(script "A"))
    ("B" . ,(script "B"))
    ("C" . ,(script "C"))
    ("D" . ,(script "D"))
    ("E" . ,(script "E"))
    ("F" . ,(script "F"))
    ("G" . ,(script "G"))
    ("H" . ,(script "H"))
    ("I" . ,(script "I"))
    ("J" . ,(script "J"))
    ("K" . ,(script "K"))
    ("L" . ,(script "L"))
    ("M" . ,(script "M"))
    ("N" . ,(script "N"))
    ("O" . ,(script "O"))
    ("P" . ,(script "P"))
    ("Q" . ,(script "Q"))
    ("R" . ,(script "R"))
    ("S" . ,(script "S"))
    ("T" . ,(script "T"))
    ("U" . ,(script "U"))
    ("V" . ,(script "V"))
    ("W" . ,(script "W"))
    ("X" . ,(script "X"))
    ("Y" . ,(script "Y"))
    ("Z" . ,(script "Z"))
    ;; Math roman
    ("a" . ,(serif "a"))
    ("b" . ,(serif "b"))
    ("c" . ,(serif "c"))
    ("d" . ,(serif "d"))
    ("e" . ,(serif "e"))
    ("f" . ,(serif "f"))
    ("g" . ,(serif "g"))
    ("h" . ,(serif "h"))
    ("i" . ,(serif "i"))
    ("j" . ,(serif "j"))
    ("k" . ,(serif "k"))
    ("l" . ,(serif "l"))
    ("m" . ,(serif "m"))
    ("n" . ,(serif "n"))
    ("o" . ,(serif "o"))
    ("p" . ,(serif "p"))
    ("q" . ,(serif "q"))
    ("r" . ,(serif "r"))
    ("s" . ,(serif "s"))
    ("t" . ,(serif "t"))
    ("u" . ,(serif "u"))
    ("v" . ,(serif "v"))
    ("w" . ,(serif "w"))
    ("x" . ,(serif "x"))
    ("y" . ,(serif "y"))
    ("z" . ,(serif "z"))
    ;; Fraktur
    ("AA" . ,(frakt "A"))
    ("BB" . ,(frakt "B"))
    ("CC" . ,(frakt "C"))
    ("DD" . ,(frakt "D"))
    ("EE" . ,(frakt "E"))
    ("FF" . ,(frakt "F"))
    ("GG" . ,(frakt "G"))
    ("HH" . ,(frakt "H"))
    ("II" . ,(frakt "I"))
    ("JJ" . ,(frakt "J"))
    ("KK" . ,(frakt "K"))
    ("LL" . ,(frakt "L"))
    ("MM" . ,(frakt "M"))
    ("NN" . ,(frakt "N"))
    ("OO" . ,(frakt "O"))
    ("PP" . ,(frakt "P"))
    ("QQ" . ,(frakt "Q"))
    ("RR" . ,(frakt "R"))
    ("SS" . ,(frakt "S"))
    ("TT" . ,(frakt "T"))
    ("UU" . ,(frakt "U"))
    ("VV" . ,(frakt "V"))
    ("WW" . ,(frakt "W"))
    ("XX" . ,(frakt "X"))
    ("YY" . ,(frakt "Y"))
    ("ZZ" . ,(frakt "Z"))
    ("aa" . ,(frakt "a"))
    ("bb" . ,(frakt "b"))
    ("cc" . ,(frakt "c"))
    ("dd" . ,(frakt "d"))
    ("ee" . ,(frakt "e"))
    ("ff" . ,(frakt "f"))
    ("gg" . ,(frakt "g"))
    ("hh" . ,(frakt "h"))
    ("ii" . ,(frakt "i"))
    ("jj" . ,(frakt "j"))
    ("kk" . ,(frakt "k"))
    ("ll" . ,(frakt "l"))
    ("mm" . ,(frakt "m"))
    ("nn" . ,(frakt "n"))
    ("oo" . ,(frakt "o"))
    ("pp" . ,(frakt "p"))
    ("qq" . ,(frakt "q"))
    ("rr" . ,(frakt "r"))
    ("ss" . ,(frakt "s"))
    ("tt" . ,(frakt "t"))
    ("uu" . ,(frakt "u"))
    ("vv" . ,(frakt "v"))
    ("ww" . ,(frakt "w"))
    ("xx" . ,(frakt "x"))
    ("yy" . ,(frakt "y"))
    ("zz" . ,(frakt "z"))
    ("alpha" . "α")
    ("beta" . "β")
    ("gamma" . "γ")
    ("delta" . "δ")
    ("epsilon" . "ε") ; actually varepsilon (some is epsilon)
    ("zeta" . "ζ")
    ("eta" . "η")
    ("theta" . "θ")
    ("iota" . "ι")
    ("kappa" . "κ")
    ("lambda" . "λ")
    ("mu" . "μ")
    ("nu" . "ν")
    ("xi" . "ξ")
    ("pi" . "π")
    ("rho" . "ρ")
    ("sigma" . "σ")
    ("tau" . "τ")
    ("upsilon" . "υ")
    ("phi" . "ϕ")
    ("chi" . "χ")
    ("psi" . "ψ")
    ("omega" . "ω")
    ("Gamma" . "Γ")
    ("Delta" . "Δ")
    ("Theta" . "Θ")
    ("Lambda" . "Λ")
    ("Xi" . "Ξ")
    ("Pi" . "Π")
    ("Sigma" . "Σ")
    ("Upsilon" . "Υ")
    ("Phi" . "Φ")
    ("Psi" . "Ψ")
    ("Omega" . "Ω")
;;  ("bool" . "")
    ("complex" . "ℂ")
    ("nat" . "ℕ")
    ("rat" . "ℚ")
    ("real" . "ℝ")
    ("int" . "ℤ")
    ;; Arrows
    ("leftarrow" . "←")
    ("rightarrow" . "→")
    ("Leftarrow" . "⇐")
    ("Rightarrow" . "⇒")
    ("leftrightarrow" . "↔")
    ("Leftrightarrow" . "⇔")
    ("mapsto" . "↦")
    ;; Real long symbols, may work in some places
    ("longleftarrow" . "⟵")
    ("Longleftarrow" . "⟸")
    ("longrightarrow" . "⟶")
    ("Longrightarrow" . "⟹")
    ("longleftrightarrow" . "⟷")
    ("Longleftrightarrow" . "⟺")
    ("longmapsto" . "⟼")
    ;; Faked long symbols, for use otherwise:
;;;     ("longleftarrow" . "←–")
;;;     ("Longleftarrow" . "⇐–")
;;;     ("longrightarrow" . "–→")
;;;     ("Longrightarrow" . "–⇒")
;;;     ("longleftrightarrow" . "←→")
;;;     ("Longleftrightarrow" . "⇐⇒")
;;;     ("longmapsto" . "❘→")
    ("midarrow" . "–") ; #x002013 en dash
    ("Midarrow" . "‗") ; #x002017 double low line (not mid)
    ("hookleftarrow" . "↩")
    ("hookrightarrow" . "↪")
    ("leftharpoondown" . "↽")
    ("rightharpoondown" . "⇁")
    ("leftharpoonup" . "↼")
    ("rightharpoonup" . "⇀")
    ("rightleftharpoons" . "⇌")
    ("leadsto" . "↝")
    ("downharpoonleft" . "⇃")
    ("downharpoonright" . "⇂")
    ("upharpoonleft" . "↿")
    ;; ("upharpoonright" . "↾") overlaps restriction
    ("restriction" . "↾") ;; 
    ("Colon" . "∷")
    ("up" . "↑")
    ("Up" . "⇑")
    ("down" . "↓")
    ("Down" . "⇓")
    ("updown" . "↕")
    ("Updown" . "⇕")
    ("langle" . "⟪")
    ("rangle" . "⟫")
    ("lceil" . "⌈")
    ("rceil" . "⌉")
    ("lfloor" . "⌊")
    ("rfloor" . "⌋")
    ("lparr" . "⦇")
    ("rparr" . "⦈")
    ("lbrakk" . "⟦")
    ("rbrakk" . "⟧")
;;     ("lbrace" . "") TODO
;;    ("rbrace" . "")
    ("guillemotleft" . "«")
    ("guillemotright" . "»")
    ("bottom" . "⊥")
    ("top" . "⊤")
    ("and" . "∧")
    ("And" . "⋀")
    ("or" . "∨")
    ("Or" . "⋁")
    ("forall" . "∀")
    ("exists" . "∃")
    ("nexists" . "∄")
    ("not" . "¬")
    ("box" . "□")
    ("diamond" . "◇")
    ("turnstile" . "⊢")
    ("Turnstile" . "⊨")
    ("tturnstile" . "⊩")
    ("TTurnstile" . "⊫")
    ("stileturn" . "⊣")
    ("surd" . "√")
    ("le" . "≤")
    ("ge" . "≥")
    ("lless" . "≪")
    ("ggreater" . "≫")
    ("lesssim" . "⪍")
    ("greatersim" . "⪎")
    ("lessapprox" . "⪅")
    ("greaterapprox" . "⪆")
    ("in" . "∈")
    ("notin" . "∉")
    ("subset" . "⊂")
    ("supset" . "⊃")
    ("subseteq" . "⊆")
    ("supseteq" . "⊇")    
    ("sqsubset" . "⊏")
    ("sqsupset" . "⊐")
    ("sqsubseteq" . "⊑")
    ("sqsupseteq" . "⊒")
    ("inter" . "∩")
    ("Inter" . "⋂")
    ("union" . "∪")
    ("Union" . "⋃")
    ("squnion" . "⊔")
    ("Squnion" . "⨆")
    ("sqinter" . "⊓")
    ("Sqinter" . "⨅")
    ("setminus" . "∖")
    ("propto" . "∝")
    ("uplus" . "⊎")
    ("Uplus" . "⨄")
    ("noteq" . "≠")
    ("sim" . "∼")
    ("doteq" . "≐")
    ("simeq" . "≃")
    ("approx" . "≈")
    ("asymp" . "≍")
    ("cong" . "≅")
    ("smile" . "⌣")
    ("equiv" . "≡")
    ("frown" . "⌢")
    ("Join" . "⨝")
    ("bowtie" . "⋈")
    ("prec" . "≺")
    ("succ" . "≻")
    ("preceq" . "≼")
    ("succeq" . "≽")
    ("parallel" . "∥")
    ("bar" . "¦")
    ("plusminus" . "±")
    ("minusplus" . "∓")
    ("times" . "×")
    ("div" . "÷")
    ("cdot" . "⋅")
    ("star" . "⋆")
    ("bullet" . "∙")
    ("circ" . "∘")
    ("dagger" . "†")
    ("ddagger" . "‡")
    ("lhd" . "⊲")
    ("rhd" . "⊳")
    ("unlhd" . "⊴")
    ("unrhd" . "⊵")
    ("triangleleft" . "◁")
    ("triangleright" . "▷")
    ("triangle" . "▵") ; or △
    ("triangleq" . "≜")
    ("oplus" . "⊕")
    ("Oplus" . "⨁")
    ("otimes" . "⊗")
    ("Otimes" . "⨂")
    ("odot" . "⊙")
    ("Odot" . "⨀")
    ("ominus" . "⊖")
    ("oslash" . "⊘") 
    ("dots" . "…")
    ("cdots" . "⋯")
    ("Sum" . "∑")
    ("Prod" . "∏")
    ("Coprod" . "∐")
    ("infinity" . "∞")
    ("integral" . "∫")
    ("ointegral" . "∮")
    ("clubsuit" . "♣")
    ("diamondsuit" . "♢")
    ("heartsuit" . "♡")
    ("spadesuit" . "♠")
    ("aleph" . "ℵ")
    ("emptyset" . "∅")
    ("nabla" . "∇")
    ("partial" . "∂")
    ("Re" . "ℜ")
    ("Im" . "ℑ")
    ("flat" . "♭")
    ("natural" . "♮")
    ("sharp" . "♯")
    ("angle" . "∠")
    ("copyright" . "©")
    ("registered" . "®")
    ("hyphen" . "‐")
    ("inverse" . "¯¹") ; X-Symb: just "¯"
    ("onesuperior" . "¹")
    ("twosuperior" . "²")
    ("threesuperior" . "³")
    ("onequarter" . "¼")
    ("onehalf" . "½")
    ("threequarters" . "¾")
    ("ordmasculine" . "º")
    ("ordfeminine" . "ª")
    ("section" . "§")
    ("paragraph" . "¶")
    ("exclamdown" . "¡")
    ("questiondown" . "¿")
    ("euro" . "€")
    ("pounds" . "£")
    ("yen" . "¥")
    ("cent" . "¢")
    ("currency" . "¤")
    ("degree" . "°")
    ("amalg" . "⨿")
    ("mho" . "℧")
    ("lozenge" . "◊")
    ("wp" . "℘")
    ("wrong" . "≀") ;; #x002307
;;    ("struct" . "") ;; TODO
    ("acute" . "´")
    ("index" . "ı")
    ("dieresis" . "¨")
    ("cedilla" . "¸")
    ("hungarumlaut" . "ʺ")
    ("spacespace" . "⁣⁣") ;; two #x002063
;    ("module" . "") ??
    ("some" . "ϵ")
    
    ;; Not in Standard Isabelle Symbols
    ;; (some are in X-Symbols)

    ("stareq" . "≛")
    ("defeq" . "≝")
    ("questioneq" . "≟")
    ("vartheta" . "ϑ")
    ; ("o" . "ø")
    ("varpi" . "ϖ")
    ("varrho" . "ϱ")
    ("varsigma" . "ς")
    ("varphi" . "φ")
    ("hbar" . "ℏ")
    ("ell" . "ℓ")
    ("ast" . "∗")

    ("bigcirc" . "◯")
    ("bigtriangleup" . "△")
    ("bigtriangledown" . "▽")
    ("ni" . "∋")
    ("mid" . "∣")
    ("notlt" . "≮")
    ("notle" . "≰")
    ("notprec" . "⊀")
    ("notpreceq" . "⋠")
    ("notsubset" . "⊄")
    ("notsubseteq" . "⊈")
    ("notsqsubseteq" . "⋢")
    ("notgt" . "≯")
    ("notge" . "≱")
    ("notsucc" . "⊁")
    ("notsucceq" . "⋡")
    ("notsupset" . "⊅")
    ("notsupseteq" . "⊉")
    ("notsqsupseteq" . "⋣")
    ("notequiv" . "≢")
    ("notsim" . "≁")
    ("notsimeq" . "≄")
    ("notapprox" . "≉")
    ("notcong" . "≇")
    ("notasymp" . "≭")
    ("nearrow" . "↗")
    ("searrow" . "↘")
    ("swarrow" . "↙")
    ("nwarrow" . "↖")
    ("vdots" . "⋮")
    ("ddots" . "⋱")
    ("closequote" . "’")
    ("openquote" . "‘")
    ("opendblquote" . "”")
    ("closedblquote" . "“")
    ("emdash" . "—")
    ("prime" . "′")
    ("doubleprime" . "″")
    ("tripleprime" . "‴")
    ("quadrupleprime" . "⁗")
    ("nbspace" . " ")
    ("thinspace" . " ")
    ("notni" . "∌")
    ("colonequals" . "≔")
    ("foursuperior" . "⁴")
    ("fivesuperior" . "⁵")
    ("sixsuperior" . "⁶")
    ("sevensuperior" . "⁷")
    ("eightsuperior" . "⁸")
    ("ninesuperior" . "⁹")))
  "Table mapping Isabelle symbol token names to Unicode strings.

You can adjust this table to add more entries, or to change entries for
glyphs that not are available in your Emacs or chosen font.

The token TNAME is made into the token \\< TNAME >.
The string mapping can be anything, but should be such that
tokens can be uniquely recovered from a decoded text; otherwise
results will be undefined when files are saved."
  :type '(repeat (cons (string :tag "Token name")
		       (string :tag "Unicode string")))
  :set 'proof-set-value
  :group 'isabelle
  :tag "Isabelle Unicode Token Mapping")


(defcustom isar-shortcut-alist
  '(; short cut, unicode string
;    ("<>" . "⋄")
;    ("|>" . "⊳")
    ("\\/" . "∨")
    ("/\\" . "∧")
    ("+O" . "⊕")
    ("-O" . "⊖")
    ("xO" . "⊗")
    ("/O" . "⊘")
    (".O" . "⊙")
    ("|+" . "†")
    ("|++" . "‡")
    ("<=" . "≤")
    ("|-" . "⊢")
    (">=" . "≥")
    ("-|" . "⊣")
    ("||" . "∥")
    ("==" . "≡")
    ("~=" . "≠")
    ("~:" . "∉")
;    ("~=" . "≃")
    ("~~~" . "≍")
    ("~~" . "≈")
    ("~==" . "≅")
    ("|<>|" . "⋈")
    ("|=" . "⊨")
    ("=." . "≐")
    ("_|_" . "⊥")
    ("</" . "≮")
    (">=/" . "≱")
    ("=/" . "≠")
    ("==/" . "≢")
    ("~/" . "≁")
    ("~=/" . "≄")
    ("~~/" . "≉")
    ("~==/" . "≇")
    ("<-" . "←")
;    ("<=" . "⇐")
    ("->" . "→")
    ("=>" . "⇒")
    ("<->" . "↔")
    ("<=>" . "⇔")
    ("|->" . "↦") 
    ("<--" . "⟵")
    ("<==" . "⟸")
    ("-->" . "⟶")
    ("==>" . "⟹")
    ("<==>" . "⟷")
    ("|-->" . "⟼")
    ("<-->" . "⟷")
    ("<<" . "«")
    ("[|" . "⟦")
    (">>" . "»")
    ("|]" . "⟧")
;    ("``" . "”")
;    ("''" . "“")
;    ("--" . "–")
    ("---" . "—")
;    ("''" . "″")
;    ("'''" . "‴")
;    ("''''" . "⁗")
;    (":=" . "≔")
    ;; some word shortcuts, started with backslash otherwise
    ;; too annoying.
    ("\\nat" . "ℕ")
    ("\\int" . "ℤ")
    ("\\rat" . "ℚ")
    ("\\real" . "ℝ")
    ("\\complex" . "ℂ")
    ("\\euro" . "€")
    ("\\yen" . "¥")
    ("\\cent" . "¢"))
  "Shortcut key sequence table for Unicode strings.

You can adjust this table to add more entries, or to change entries for
glyphs that not are available in your Emacs or chosen font.

These shortcuts are only used for input; no reverse conversion is
performed.  But if tokens exist for the target of shortcuts, they
will be used on saving the buffer."
  :type '(repeat (cons (string :tag "Shortcut sequence")
		       (string :tag "Unicode string")))
  :set 'proof-set-value
  :group 'isabelle
  :tag "Isabelle Unicode Token Mapping")

  


;;
;; prover symbol support 
;;

(eval-after-load "isar" 
  '(setq 
    proof-xsym-activate-command
    (isar-markup-ml "change print_mode (insert (op =) \"xsymbols\")")
    proof-xsym-deactivate-command
    (isar-markup-ml "change print_mode (remove (op =) \"xsymbols\")")))



(provide 'isar-unicode-tokens)

;;; isar-unicode-tokens.el ends here
