import Lake

open Lake DSL

package «kam» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.35.0"

private def projectLeanOptions : Array LeanOption := #[
  ⟨`autoImplicit, false⟩,
  ⟨`relaxedAutoImplicit, false⟩,
  ⟨`linter.unusedVariables, true⟩,
  ⟨`linter.unusedSectionVars, true⟩,
  ⟨`linter.unusedSimpArgs, true⟩,
  ⟨`linter.unnecessarySimpa, true⟩,
  ⟨`linter.deprecated, true⟩
]

/-- The KAM formalization: reusable infrastructure, proofs, and (under `KAM.Frozen`) the
author-approved frozen statements. The root file `KAM.lean` imports every module, so a plain
`lake build` compiles every declaration in the repository. -/
@[default_target]
lean_lib «KAM» where
  globs := #[.andSubmodules `KAM]
  leanOptions := projectLeanOptions

private def runProjectScript (name : String) (args : List String) : ScriptM ExitCode := do
  let pkg ← getRootPackage
  let child ← IO.Process.spawn {
    cmd := (pkg.dir / "scripts" / name).toString
    args := args.toArray
    cwd := some pkg.dir
  }
  child.wait

/-- Check source-level invariants that Lean's typechecker cannot express. -/
@[lint_driver]
script lintSources (args) do
  runProjectScript "lint_sources.sh" args
