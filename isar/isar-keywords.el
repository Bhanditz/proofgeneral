;;
;; Keyword classification tables for Isabelle/Isar.
;; This file generated by Isabelle -- DO NOT EDIT!
;;
;; $Id$
;;

(defconst isar-keywords-minor
  '("and"
    "as"
    "binder"
    "con_defs"
    "concl"
    "congs"
    "distinct"
    "files"
    "in"
    "induction"
    "infixl"
    "infixr"
    "inject"
    "intrs"
    "is"
    "monos"
    "output"
    "simpset"
    "where"))

(defconst isar-keywords-control
  '("ProofGeneral\\.context_thy_only"
    "ProofGeneral\\.inform_file_processed"
    "ProofGeneral\\.inform_file_retracted"
    "ProofGeneral\\.kill_proof"
    "ProofGeneral\\.restart"
    "ProofGeneral\\.try_context_thy_only"
    "cannot_undo"
    "cd"
    "clear_undos"
    "exit"
    "init_toplevel"
    "kill"
    "quit"
    "redo"
    "undo"
    "undos_proof"
    "welcome"))

(defconst isar-keywords-diag
  '("ML"
    "ML_command"
    "commit"
    "disable_pr"
    "enable_pr"
    "header"
    "help"
    "kill_thy"
    "pr"
    "pretty_setmargin"
    "print_attributes"
    "print_binds"
    "print_cases"
    "print_context"
    "print_facts"
    "print_methods"
    "print_syntax"
    "print_theorems"
    "print_theory"
    "prop"
    "pwd"
    "remove_thy"
    "term"
    "thm"
    "thms_containing"
    "touch_all_thys"
    "touch_child_thys"
    "touch_thy"
    "typ"
    "update_thy"
    "update_thy_only"
    "use"
    "use_thy"
    "use_thy_only"))

(defconst isar-keywords-theory-begin
  '("theory"))

(defconst isar-keywords-theory-switch
  '("context"))

(defconst isar-keywords-theory-end
  '("end"))

(defconst isar-keywords-theory-heading
  '("chapter"
    "section"
    "subsection"
    "subsubsection"))

(defconst isar-keywords-theory-decl
  '("ML_setup"
    "arities"
    "axclass"
    "axioms"
    "classes"
    "classrel"
    "coinductive"
    "constdefs"
    "consts"
    "datatype"
    "defaultsort"
    "defer_recdef"
    "defs"
    "global"
    "inductive"
    "inductive_cases"
    "judgment"
    "lemmas"
    "local"
    "nonterminals"
    "oracle"
    "parse_ast_translation"
    "parse_translation"
    "primrec"
    "print_ast_translation"
    "print_translation"
    "recdef"
    "record"
    "rep_datatype"
    "setup"
    "syntax"
    "text"
    "text_raw"
    "theorems"
    "token_translation"
    "translations"
    "typed_print_translation"
    "typedecl"
    "types"
    "variables"))

(defconst isar-keywords-theory-goal
  '("instance"
    "lemma"
    "theorem"
    "typedef"))

(defconst isar-keywords-qed
  '("\\."
    "\\.\\."
    "by"
    "sorry"))

(defconst isar-keywords-qed-block
  '("qed"))

(defconst isar-keywords-qed-global
  '("oops"))

(defconst isar-keywords-proof-goal
  '("have"
    "hence"
    "show"
    "thus"))

(defconst isar-keywords-proof-block
  '("next"
    "proof"
    "{{"
    "}}"))

(defconst isar-keywords-proof-chain
  '("finally"
    "from"
    "then"
    "with"))

(defconst isar-keywords-proof-decl
  '("also"
    "let"
    "moreover"
    "note"
    "sect"
    "subsect"
    "subsubsect"
    "txt"
    "txt_raw"))

(defconst isar-keywords-proof-asm
  '("assume"
    "case"
    "def"
    "fix"
    "presume"))

(defconst isar-keywords-proof-asm-goal
  '("obtain"))

(defconst isar-keywords-proof-script
  '("apply"
    "apply_end"
    "back"
    "defer"
    "prefer"))

(provide 'isar-keywords)
