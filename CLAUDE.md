# homebrew-tap

Distribution repository for SPEQ Homebrew formulae.

## Responsibilities
- Maintain installation/update formula for `speq-cli`.
- Keep version bumps aligned with released artifacts.

## Invariants
- Formula changes must reference published, immutable release artifacts.
- Do not point to unreleased RC assets for stable channels.
- A bump here follows a published `speq-cli` release; it never precedes one.

## How we work

Full process: `speq-docs/docs/delivery/release-flow.md`. Read it before starting delivery work. Summary:

- **Issues live in [`speq-tms/speq-docs`](https://github.com/speq-tms/speq-docs/issues)**, not here. Work for
  this repository carries the `area/release` label.
- **Milestone title == RC branch name.** Milestone `v1.1.0` means branch `v1.1.0`. `backlog` is not a release
  and has no branch.
- **Find the current RC** — GitHub state is authoritative, not any version written in a file:

  ```bash
  gh api repos/speq-tms/speq-docs/milestones \
    --jq '.[] | select(.state=="open" and .title != "backlog") | .title'
  git ls-remote --heads origin 'v*'
  ```

- **Branch from the RC when one exists**, never from `main`: `git switch -c chore/tap-<name> origin/<RC>`.
- **PR base is the RC**, never `main`. One final PR takes the RC into `main`.
- `Closes #N` does **not** work across repositories. Write `Part of speq-tms/speq-docs#N` in the PR, then close
  the issue manually after merge:
  `gh issue close N --repo speq-tms/speq-docs --comment "Landed in <PR url>."`

There is currently no RC branch here. Small non-release changes go through a `chore/*` branch straight into
`main`; a formula bump for a new CLI release gets an RC named after that release.
