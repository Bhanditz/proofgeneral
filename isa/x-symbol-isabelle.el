;;  ID:         $Id$
;;  Author:     David von Oheimb
;;  Copyright   1998 Technische Universitaet Muenchen
;;  token language "Isabelle Symbols" for package x-symbol
;;  
;; NB: Part of Proof General distribution.
;;

(defvar x-symbol-isabelle-required-fonts nil)

;; FIXME da: these next two are also set in proof-x-symbol.el, but
;; it's handy to use this file away from PG.  In future could
;; fix things so just (require 'proof-x-symbol) would be enough
;; here.
(defvar x-symbol-isabelle-name "Isabelle Symbol")
(defvar x-symbol-isabelle-modeline-name "isa")

(defvar x-symbol-isabelle-header-groups-alist nil)
;'(("Operator" bigop operator)
;    ("Relation" relation)
;    ("Arrow, Punctuation" arrow triangle shape
;     white line dots punctuation quote parenthesis)
;    ("Symbol" symbol currency mathletter setsymbol)
;    ("Greek Letter" greek greek1)
;    ("Acute, Grave" acute grave))
;  "*If non-nil, used in isasym specific grid/menu.

(defvar x-symbol-isabelle-class-alist
  '((VALID "Isabelle Symbol" (x-symbol-info-face))
    (INVALID "no Isabelle Symbol" (red x-symbol-info-face))))
(defvar x-symbol-isabelle-class-face-alist nil)
(defvar x-symbol-isabelle-electric-ignore "[:'][A-Za-z]\\|<=")

(defvar x-symbol-isabelle-font-lock-keywords nil)
(defvar x-symbol-isabelle-master-directory  'ignore)
(defvar x-symbol-isabelle-image-searchpath '("./"))
(defvar x-symbol-isabelle-image-cached-dirs '("images/" "pictures/"))
(defvar x-symbol-isabelle-image-file-truename-alist nil)
(defvar x-symbol-isabelle-image-keywords nil)

(defvar x-symbol-isabelle-case-insensitive nil)
;(defvar x-symbol-isabelle-token-shape '(?\\ "\\\\\\<[A-Za-z][A-Za-z0-9_']*>\\a'" . "[A-Za-z]"))
(defvar x-symbol-isabelle-token-shape nil)

(defvar x-symbol-isabelle-exec-specs '(nil ("\\`\\\\<[A-Za-z][A-Za-z0-9_']*>\\'" . 
				          "\\\\<[A-Za-z][A-Za-z0-9_']*>")))

(defvar x-symbol-isabelle-input-token-ignore nil)
(defun x-symbol-isabelle-default-token-list (tokens) tokens)


(defvar x-symbol-isabelle-token-list 'x-symbol-isabelle-default-token-list)

(defvar x-symbol-isabelle-symbol-table '(;;symbols (isabelle14 font)
    (visiblespace () "\\\\<spacespace>" "\\<spacespace>")
    (Gamma  () "\\\\<Gamma>" "\\<Gamma>")
    (Delta  () "\\\\<Delta>" "\\<Delta>")
    (Theta  () "\\\\<Theta>" "\\<Theta>")
    (Lambda () "\\\\<Lambda>" "\\<Lambda>")
    (Pi     () "\\\\<Pi>" "\\<Pi>")
    (Sigma  () "\\\\<Sigma>" "\\<Sigma>")
    (Phi    () "\\\\<Phi>" "\\<Phi>")
    (Psi    () "\\\\<Psi>" "\\<Psi>")
    (Omega  () "\\\\<Omega>" "\\<Omega>")
    (alpha  () "\\\\<alpha>" "\\<alpha>")
    (beta   () "\\\\<beta>" "\\<beta>")
    (gamma  () "\\\\<gamma>" "\\<gamma>")
    (delta  () "\\\\<delta>" "\\<delta>")
    (epsilon1 () "\\\\<epsilon>" "\\<epsilon>")
    (zeta   () "\\\\<zeta>" "\\<zeta>")
    (eta    () "\\\\<eta>" "\\<eta>")
    (theta1 () "\\\\<theta>" "\\<theta>")
    (kappa1 () "\\\\<kappa>" "\\<kappa>")
    (lambda () "\\\\<lambda>" "\\<lambda>")
    (mu     () "\\\\<mu>" "\\<mu>")
    (nu     () "\\\\<nu>" "\\<nu>")
    (xi     () "\\\\<xi>" "\\<xi>")
    (pi     () "\\\\<pi>" "\\<pi>")
    (rho    () "\\\\<rho>" "\\<rho>")
    (sigma  () "\\\\<sigma>" "\\<sigma>")
    (tau    () "\\\\<tau>" "\\<tau>")
    (phi1   () "\\\\<phi>" "\\<phi>")
    (chi    () "\\\\<chi>" "\\<chi>")
    (psi    () "\\\\<psi>" "\\<psi>")
    (omega  () "\\\\<omega>" "\\<omega>")
    (notsign       () "\\\\<not>" "\\<not>")
    (logicaland    () "\\\\<and>" "\\<and>")
    (logicalor     () "\\\\<or>" "\\<or>")
    (universal1    () "\\\\<forall>" "\\<forall>")
    (existential1  () "\\\\<exists>" "\\<exists>")
    (biglogicaland () "\\\\<And>" "\\<And>")
    (ceilingleft   () "\\\\<lceil>" "\\<lceil>")
    (ceilingright  () "\\\\<rceil>" "\\<rceil>")
    (floorleft     () "\\\\<lfloor>" "\\<lfloor>")
    (floorright    () "\\\\<rfloor>" "\\<rfloor>")
    (bardash       () "\\\\<turnstile>" "\\<turnstile>")
    (bardashdbl    () "\\\\<Turnstile>" "\\<Turnstile>")
    (semanticsleft () "\\\\<lbrakk>" "\\<lbrakk>")
    (semanticsright () "\\\\<rbrakk>" "\\<rbrakk>")
    (periodcentered () "\\\\<cdot>" "\\<cdot>")
    (element      () "\\\\<in>" "\\<in>")
    (reflexsubset () "\\\\<subseteq>" "\\<subseteq>")
    (intersection () "\\\\<inter>" "\\<inter>")
    (union        () "\\\\<union>" "\\<union>")
    (bigintersection   () "\\\\<Inter>" "\\<Inter>")
    (bigunion          () "\\\\<Union>" "\\<Union>")
    (sqintersection    () "\\\\<sqinter>" "\\<sqinter>")
    (squnion           () "\\\\<squnion>" "\\<squnion>")
    (bigsqintersection () "\\\\<Sqinter>" "\\<Sqinter>")
    (bigsqunion        () "\\\\<Squnion>" "\\<Squnion>")
    (perpendicular     () "\\\\<bottom>" "\\<bottom>")
    (dotequal    () "\\\\<doteq>" "\\<doteq>")
    (equivalence () "\\\\<equiv>" "\\<equiv>")
    (notequal    () "\\\\<noteq>" "\\<noteq>")
    (propersqsubset () "\\\\<sqsubset>" "\\<sqsubset>")
    (reflexsqsubset () "\\\\<sqsubseteq>" "\\<sqsubseteq>")
    (properprec  () "\\\\<prec>" "\\<prec>")
    (reflexprec  () "\\\\<preceq>" "\\<preceq>")
    (propersucc  () "\\\\<succ>" "\\<succ>")
    (approxequal () "\\\\<approx>" "\\<approx>")
    (similar     () "\\\\<sim>" "\\<sim>")
    (simequal    () "\\\\<simeq>" "\\<simeq>")
    (lessequal   () "\\\\<le>" "\\<le>")
    (coloncolon  () "\\\\<Colon>" "\\<Colon>")
    (arrowleft   () "\\\\<leftarrow>" "\\<leftarrow>")
    (endash      () "\\\\<midarrow>" "\\<midarrow>")
    (arrowright  () "\\\\<rightarrow>" "\\<rightarrow>")
    (arrowdblleft () "\\\\<Leftarrow>" "\\<Leftarrow>")
;   (rightleftharpoons () "\\\\<Midarrow>" "\\<Midarrow>") ;missing symbol (but not necessary)
    (arrowdblright () "\\\\<Rightarrow>" "\\<Rightarrow>")
    (frown () "\\\\<bow>" "\\<bow>")
    (mapsto () "\\\\<mapsto>" "\\<mapsto>")
    (leadsto () "\\\\<leadsto>" "\\<leadsto>")
    (arrowup () "\\\\<up>" "\\<up>")
    (arrowdown () "\\\\<down>" "\\<down>")
    (notelement () "\\\\<notin>" "\\<notin>")
    (multiply () "\\\\<times>" "\\<times>")
    (circleplus () "\\\\<oplus>" "\\<oplus>")
    (circleminus () "\\\\<ominus>" "\\<ominus>")
    (circlemultiply () "\\\\<otimes>" "\\<otimes>")
    (circleslash () "\\\\<oslash>" "\\<oslash>")
    (propersubset () "\\\\<subset>" "\\<subset>")
    (infinity () "\\\\<infinity>" "\\<infinity>")
    (box () "\\\\<box>" "\\<box>")
    (lozenge1 () "\\\\<diamond>" "\\<diamond>")
    (circ () "\\\\<circ>" "\\<circ>")
    (bullet () "\\\\<bullet>" "\\<bullet>")
    (bardbl () "\\\\<parallel>" "\\<parallel>")
    (radical () "\\\\<surd>" "\\<surd>")
    (copyright () "\\\\<copyright>" "\\<copyright>")
  ))
(defvar x-symbol-isabelle-xsymbol-table '(;;xsymbols
    (plusminus () "\\\\<plusminus>" "\\<plusminus>")
    (division () "\\\\<div>" "\\<div>")
    (longarrowright () "\\\\<longrightarrow>" "\\<longrightarrow>")
    (longarrowleft  () "\\\\<longleftarrow>" "\\<longleftarrow>")
    (longarrowboth  () "\\\\<longleftrightarrow>" "\\<longleftrightarrow>")
    (longarrowdblright () "\\\\<Longrightarrow>" "\\<Longrightarrow>")
    (longarrowdblleft  () "\\\\<Longleftarrow>" "\\<Longleftarrow>")
    (longarrowdblboth  () "\\\\<Longleftrightarrow>" "\\<Longleftrightarrow>")
    (brokenbar () "\\\\<brokenbar>" "\\<brokenbar>")
    (hyphen () "\\\\<hyphen>" "\\<hyphen>")
    (macron () "\\\\<macron>" "\\<macron>")
    (exclamdown () "\\\\<exclamdown>" "\\<exclamdown>")
    (questiondown () "\\\\<questiondown>" "\\<questiondown>")
    (guillemotleft () "\\\\<guillemotleft>" "\\<guillemotleft>")
    (guillemotright () "\\\\<guillemotright>" "\\<guillemotright>")
    (degree () "\\\\<degree>" "\\<degree>")
    (onesuperior () "\\\\<onesuperior>" "\\<onesuperior>")
    (onequarter () "\\\\<onequarter>" "\\<onequarter>")
    (twosuperior () "\\\\<twosuperior>" "\\<twosuperior>")
    (onehalf () "\\\\<onehalf>" "\\<onehalf>")
    (threesuperior () "\\\\<threesuperior>" "\\<threesuperior>")
    (threequarters () "\\\\<threequarters>" "\\<threequarters>")
    (paragraph () "\\\\<paragraph>" "\\<paragraph>")
    (registered () "\\\\<registered>" "\\<registered>")
    (ordfeminine () "\\\\<ordfeminine>" "\\<ordfeminine>")
    (ordmasculine () "\\\\<ordmasculine>" "\\<ordmasculine>")
    (section () "\\\\<section>" "\\<section>")
    (pounds () "\\\\<pounds>" "\\<pounds>")
    (yen () "\\\\<yen>" "\\<yen>")
    (cent () "\\\\<cent>" "\\<cent>")
    (currency () "\\\\<currency>" "\\<currency>")
    (braceleft2 () "\\\\<lbrace>" "\\<lbrace>")
    (braceright2 () "\\\\<rbrace>" "\\<rbrace>")
    (top () "\\\\<top>" "\\<top>")
  ))
(defvar x-symbol-isabelle-user-table nil)
(defvar x-symbol-isabelle-table
  (append x-symbol-isabelle-user-table 
	  (append x-symbol-isabelle-symbol-table x-symbol-isabelle-xsymbol-table)))

;;;===========================================================================
;;;  Internal
;;;===========================================================================

(defvar x-symbol-isabelle-menu-alist nil
  "Internal.  Alist used for Isasym specific menu.")
(defvar x-symbol-isabelle-grid-alist nil
  "Internal.  Alist used for Isasym specific grid.")

(defvar x-symbol-isabelle-decode-atree nil
  "Internal.  Atree used by `x-symbol-token-input'.")
(defvar x-symbol-isabelle-decode-alist nil
  "Internal.  Alist used for decoding of Isasym macros.")
(defvar x-symbol-isabelle-encode-alist nil
  "Internal.  Alist used for encoding to Isasym macros.")

(defvar x-symbol-isabelle-nomule-decode-exec nil
  "Internal.  File name of Isasym decode executable.")
(defvar x-symbol-isabelle-nomule-encode-exec nil
  "Internal.  File name of Isasym encode executable.")



;;;===========================================================================
;;;  useful key bindings
;;;===========================================================================


;; FIXME: these break some standard bindings, and should only be set
;; for proof shell, script (or minibuffer) modes.

;(global-set-key [(meta l)] 'x-symbol-INSERT-lambda)

;(global-set-key [(meta n)] 'x-symbol-INSERT-notsign)
;(global-set-key [(meta a)] 'x-symbol-INSERT-logicaland)
;(global-set-key [(meta o)] 'x-symbol-INSERT-logicalor)
;(global-set-key [(meta f)] 'x-symbol-INSERT-universal1)
;(global-set-key [(meta t)] 'x-symbol-INSERT-existential1)

;(global-set-key [(meta A)] 'x-symbol-INSERT-biglogicaland)
;(global-set-key [(meta e)] 'x-symbol-INSERT-equivalence)
;(global-set-key [(meta u)] 'x-symbol-INSERT-notequal)
;(global-set-key [(meta m)] 'x-symbol-INSERT-arrowdblright)

;(global-set-key [(meta i)] 'x-symbol-INSERT-longarrowright)

(provide 'x-symbol-isabelle)
