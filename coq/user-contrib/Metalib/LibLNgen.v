(* This file is distributed under the terms of the MIT License, also
   known as the X11 Licence.  A copy of this license is in the README
   file that accompanied the original distribution of this file.

   Based on code written by:
     Brian Aydemir *)

(** A library of code for supporting LNgen. *)

Require Export Metalib.LibDefaultSimp.
Require Import Metalib.Metatheory.
Require Import Omega.


(* ********************************************************************** *)
(** * Assorted functions not in the standard library *)

(** [lt_ge_dec] is a useful comparison operation when defining the
    "close" operation on locally nameless terms. *)

Definition lt_ge_dec (n m : nat) : {n < m} + {n >= m} :=
  match Compare_dec.le_gt_dec m n with
    | left pf => right pf
    | right pf => left pf
  end.


(* *********************************************************************** *)
(** * Tactics *)

(** [generalize_wrt x] is an ad hoc tactic that generalizes the goal
    with respect to everything that [x] does not depend on.  It seems
    to work only if [x] is the most recently introduced item into the
    context. *)

Ltac generalize_wrt x :=
  repeat (progress (match goal with
    | J : _ |- _ => move J after x; generalize dependent J
    end)).

(** [apply_mutual_ind] applies to the current goal a mutual induction
    principle that is stated in the form generated by [Combined
    Scheme].  It works even in degenerate cases, i.e., when there is
    no mutual induction, only simple induction.  It is intended to be
    used only at the start of a proof, and the argument(s) to induct
    over should come first. *)

Ltac apply_mutual_ind ind :=
  let H := fresh in
  first [ (* apply ind
        | *) intros H; induction H using ind
        | intros ? H; induction H using ind
        | intros ? ? H; induction H using ind
        | intros ? ? ? H; induction H using ind
        | intros ? ? ? ? H; induction H using ind
        | intros ? ? ? ? ? H; induction H using ind
        | intros ? ? ? ? ? ? H; induction H using ind
        | intros ? ? ? ? ? ? ? H; induction H using ind
        | intros ? ? ? ? ? ? ? ? H; induction H using ind
        ].

(** Renames the last hypothesis to the given identifier. *)

Ltac rename_last_into H :=
  match goal with
    | J : _ |- _ => rename J into H
  end.

(** Specializes every possible hypothesis with the given term. *)

Ltac specialize_all x :=
  repeat (match goal with
            | H : _ |- _ => specialize (H x)
          end).


(* *********************************************************************** *)
(** * Facts about finite sets *)

Lemma remove_union_distrib : forall (s1 s2 : atoms) (x : atom),
  remove x (union s1 s2) [=] union (remove x s1) (remove x s2).
Proof. fsetdec. Qed.

Lemma Equal_union_compat : forall (s1 s2 s3 s4 : atoms),
  s1 [=] s3 ->
  s2 [=] s4 ->
  union s1 s2 [=] union s3 s4.
Proof. fsetdec. Qed.

Lemma Subset_refl : forall (s : atoms),
  s [<=] s.
Proof. fsetdec. Qed.

Lemma Subset_empty_any : forall (s : atoms),
  empty [<=] s.
Proof. fsetdec. Qed.

Lemma Subset_union_compat : forall (s1 s2 s3 s4 : atoms),
  s1 [<=] s3 ->
  s2 [<=] s4 ->
  union s1 s2 [<=] union s3 s4.
Proof. fsetdec. Qed.

Lemma Subset_union_left : forall (s1 s2 s3 : atoms),
  s1 [<=] s2 ->
  s1 [<=] union s2 s3.
Proof. fsetdec. Qed.

Lemma Subset_union_right : forall (s1 s2 s3 : atoms),
  s1 [<=] s3 ->
  s1 [<=] union s2 s3.
Proof. fsetdec. Qed.

Lemma Subset_union_lngen_open_upper :
  forall (s1 s2 s3 s4 s5 : atoms),
  s1 [<=] union s3 s4 ->
  s2 [<=] union s3 s5 ->
  union s1 s2 [<=] union s3 (union s4 s5).
Proof. fsetdec. Qed.


(* *********************************************************************** *)
(** * Hints *)

Hint Resolve sym_eq : brute_force.

Hint Extern 5 (_ = _ :> nat) => omega : brute_force.
Hint Extern 5 (_ < _)        => omega : brute_force.
Hint Extern 5 (_ <= _)       => omega : brute_force.

Hint Rewrite @remove_union_distrib : lngen.

Hint Resolve @Equal_union_compat : lngen.
Hint Resolve @Subset_refl : lngen.
Hint Resolve @Subset_empty_any : lngen.
Hint Resolve @Subset_union_compat : lngen.
Hint Resolve @Subset_union_left : lngen.
Hint Resolve @Subset_union_right : lngen.
Hint Resolve @Subset_union_lngen_open_upper : lngen.
