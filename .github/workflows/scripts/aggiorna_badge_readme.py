import re
import sys
import os

# Path to the README file
README_PATH = "README.md"

# Define the new badge URLs template
BADGE_TEMPLATE = "https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fteamcodealchemists%2Fdocs%2Frefs%2Fheads%2F{branch}%2F.github%2Fbadges%2F{badge_name}.json"

BADGES = [
    "err_parole_glossario_badge",
    "gulpease_badge",
    "ordinamento_glossario_badge",
]

def update_badges(readme_path, branch, badges):
    if not os.path.exists(readme_path):
        print(f"Error: File '{readme_path}' does not exist.")
        sys.exit(1)

    if not os.access(readme_path, os.R_OK):
        print(f"Error: File '{readme_path}' is not readable.")
        sys.exit(1)

    branch = branch.replace("/", "%2F")

    with open(readme_path, "r", encoding="utf-8") as file:
        content = file.read()

    for badge_name in badges:
        badge_url = BADGE_TEMPLATE.format(branch=branch, badge_name=badge_name)
        pattern = rf"!\[.*?\]\(https://img\.shields\.io/endpoint\?url=.*?{badge_name}.*?\)"
        replacement = f"![{badge_name}]({badge_url})"
        content = re.sub(pattern, replacement, content)

    with open(readme_path, "w", encoding="utf-8") as file:
        file.write(content)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python aggiorna_badge_readme.py <branch>")
        sys.exit(1)

    branch = sys.argv[1]
    update_badges(README_PATH, branch, BADGES)
    print("Badges updated successfully.")