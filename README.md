# Internal Symlinks Repository

This repository demonstrates internal symbolic links that point to files and directories within the same repository.

## Internal Symlink Examples

### 1. File-to-File Links
- `docs/current-api.md` → `docs/api-v2.1.md`
- `config/active.json` → `config/production.json`
- `scripts/run.sh` → `scripts/deploy.sh`

### 2. Directory-to-Directory Links
- `src/main` → `src/core`
- `tests/current` → `tests/unit`
- `build/output` → `build/release`

### 3. Mixed Internal Links
- `bin/current` → `bin/v1.0.0`
- `data/latest` → `data/2024-01-15`
- `templates/default` → `templates/basic`

## Expected Symlinks
1. docs/current-api.md -> docs/api-v2.1.md
2. config/active.json -> config/production.json
3. scripts/run.sh -> scripts/deploy.sh
4. src/main -> src/core
5. tests/current -> tests/unit
6. build/output -> build/release
7. bin/current -> bin/v1.0.0
8. data/latest -> data/2024-01-15
9. templates/default -> templates/basic

## Testing
Run the provided scripts to create and validate these internal symlinks.
