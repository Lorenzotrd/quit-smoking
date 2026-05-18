---
name: quit-smoking
description: Use this skill when Lorenzo wants to run the Quit Smoking workflow inside Claude Code. It checks smoking status, reinforces Allen Carr-inspired trap-escape reframes, opens the local dark-mode dashboard, and blocks work until micro-actions are completed.
---

# Quit Smoking Skill

## Signature

Start with:

```text
 ██████╗ ██╗   ██╗██╗████████╗
██╔═══██╗██║   ██║██║╚══██╔══╝
██║   ██║██║   ██║██║   ██║
██║▄▄ ██║██║   ██║██║   ██║
╚██████╔╝╚██████╔╝██║   ██║
 ╚══▀▀═╝  ╚═════╝ ╚═╝   ╚═╝

        (  )
         )(
        (  )   cigarette
      -------
  QUIT SMOKING — ESCAPE THE TRAP
```

## Rule

Before helping with any project, ask only 2-3 quick questions:

- Did you smoke today?
- Craving level right now, 0-10?
- Main trigger right now?

Then instruct the user to run:

```bash
quit-smoking check
```

The local script opens the dashboard immediately after the questions.

## Dashboard

The dashboard shows:

- Smoke-free streak (huge Fraunces italic number, dark editorial design)
- 3D lung model that darkens with smoke logs and recovers with clean days
- 4 KPI cards: cigarettes avoided, money saved, cravings defeated, lifetime smoked
- Allen Carr 5-stage escape map with the active stage highlighted and expanded
- Last craving trigger with 3 specific tips
- Today's rotating reframe — a daily Allen Carr-inspired insight
- 7-day bar chart and trigger frequency analytics
- Footer: "Day X of being free. You are not quitting smoking. You are escaping a trap."

## Reframe

Do not copy any book. Use general principles:

- Smoking gives nothing except temporary relief from withdrawal it caused. That is the whole trap.
- The "pleasure" is not real — it is the brief end of discomfort the previous cigarette started.
- A craving is nicotine leaving the body, not the body needing nicotine.
- Stress is not solved by cigarettes. Stress is caused and maintained by the withdrawal cycle.
- You are not a smoker trying to quit. You are a non-smoker discovering yourself.
- The little monster (physical addiction) dies in ~3 weeks. The big monster (conditioning) dies with clarity.

## Tone

Strict, clear, non-medical. Roast the addiction, not the person.
