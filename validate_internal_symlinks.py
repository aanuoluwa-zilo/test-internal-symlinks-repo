#!/usr/bin/env python3

import os

def validate_internal_symlinks():
    """Validate internal symlinks point to correct targets within the repository."""
    
    internal_symlinks = [
        ('docs/current-api.md', 'docs/api-v2.1.md'),
        ('config/active.json', 'config/production.json'),
        ('scripts/run.sh', 'scripts/deploy.sh'),
        ('src/main', 'src/core'),
        ('tests/current', 'tests/unit'),
        ('build/output', 'build/release'),
        ('bin/current', 'bin/v1.0.0'),
        ('data/latest', 'data/2024-01-15'),
        ('templates/default', 'templates/basic')
    ]
    
    print("Validating internal symlinks...")
    
    for link_path, expected_target in internal_symlinks:
        if os.path.exists(link_path):
            if os.path.islink(link_path):
                actual_target = os.readlink(link_path)
                if actual_target == expected_target:
                    print(f"✅ {link_path} -> {actual_target}")
                else:
                    print(f"❌ {link_path} -> {actual_target} (expected: {expected_target})")
            else:
                print(f"❌ {link_path} exists but is not a symlink")
        else:
            print(f"❌ {link_path} does not exist")
    
    print("\nInternal symlink validation completed!")

if __name__ == "__main__":
    validate_internal_symlinks()
