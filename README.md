# Quit Smoking

A Claude Code skill and terminal tool that acts as a visual quit coach. It asks 3 quick questions before every coding session, then opens an editorial dark-mode dashboard with Allen Carr-inspired reframes, 3D lungs that visually recover over time, and trigger-specific advice.

## What it does

- Quick check every time you open a coding session: 3 questions, then straight to the dashboard.
- Tracks streak, cigarettes avoided, money saved, and cravings defeated.
- Dashboard opens automatically after each check-in.
- 3D lung model that darkens with smoke logs and recovers with clean days and defeated cravings.
- Allen Carr-inspired content: reframes smoking as a trap to escape, not a pleasure to lose.
- 5-stage escape map that advances with your streak.
- Trigger-specific protocols: coffee, morning, stress, coding, after food, party, boredom.
- Daily rotating reframe — a different insight every day.
- Micro-actions on high craving: push-ups, water, 60-second wait before unlocking.

## Install

```bash
chmod +x install.sh
./install.sh
source ~/.zshrc
```

Works on both zsh and bash.

This installs:
- Terminal command: `quit-smoking`
- Claude skill: `quit-smoking`
- Codex skill: `/quit_smoking`
- Aliases for fast access

## Use

```bash
quitcheck        # Quick check-in before working
qclaude .        # Check in, then open Claude Code
qcodex           # Check in, then open Codex
quitdash         # Open the dashboard directly
```

## Reset

```bash
quit-smoking reset
```

## The philosophy (paraphrased, not copied)

The tool is built around one idea: smoking does not give you anything. It temporarily relieves the discomfort it created. The pleasure is not real — it is withdrawal ending.

There are two monsters to kill:
- The **little monster** — physical nicotine addiction. Dies in roughly 3 weeks when you stop feeding it.
- The **big monster** — mental conditioning. The belief that you need it for stress, focus, or social glue. Can take longer, but dies when you understand the trap.

You do not need willpower. You need clarity.

## Disclaimer

This tool is for accountability and motivation. Inspired by general quit-smoking principles. Not medical advice. Speak with a healthcare professional if you need medical support.
