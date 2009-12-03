(*
      Example proof document for Isabelle/Isar Proof General,
      using symbols.  
      View and process this document with Unicode Tokens engaged.
   
      For a more exhaustive test of token display, visit the test
      file etc/isar/TokensAcid.thy

      $Id$
*)

theory "Example-Xsym" imports Main begin

text {* Proper proof text -- \<^bitalic>naive version\<^eitalic>. *}

text {* \<^bbold>Unstructured\<^ebold> proof script. *}

theorem "\<phi>\<^isub>\<alpha> \<and> \<phi>\<^isub>\<beta> \<longrightarrow> \<phi>\<^isub>\<beta> \<and> \<phi>\<^isub>\<alpha>"
  apply (rule impI)
  apply (erule conjE)
  
  apply (rule conjI)
  apply assumption
  apply assumption
done

end

