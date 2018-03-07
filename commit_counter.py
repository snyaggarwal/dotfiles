import subprocess

branches = [b.strip() for b in subprocess.check_output(['git', 'branch']).decode('utf-8').splitlines()]

commits = {}

for b in branches:
    _commits = [c.strip() for c in subprocess.check_output(['git', 'shortlog', '-sn', 'origin/' + b]).decode('utf-8').splitlines()]
    for c in _commits:
        _c = c.split('\t')
        count = int(_c[0])
        name = _c[1]
        if commits.get(name):
            commits[name] += count
        else:
            commits[name] = count

print(commits)
