# App for Fun

A collection of small, useful, and enjoyable applications built as experiments. Each project added to this repository will be documented here with its purpose, features, requirements, and launch instructions.

## Projects

### 1. Heavy Talks

Heavy Talks is a focused Windows desktop application that presents one positive, disciplined thought at a time. It is designed as a calm daily reminder for consistency, focus, courage, habits, action, and progress.

#### Features

- A library of 100 motivational and discipline-focused quotes.
- A polished dark-blue interface built with native Windows WPF.
- A **New thought** button for displaying another randomly selected quote.
- A **Copy quote** button for copying the current quote to the clipboard.
- Keyboard shortcuts: `Space` for another quote and `Ctrl+C` to copy.
- Automatic Windows startup support when its Startup shortcut is installed.
- No third-party packages or internet connection required.

#### Requirements

- Windows 10 or Windows 11.
- Windows PowerShell 5.1, which is included with Windows.

#### Run Heavy Talks

Double-click **Launch Heavy Talks.bat**.

You can also launch `HeavyTalks.ps1` directly with Windows PowerShell.

#### Project files

- `HeavyTalks.ps1` contains the interface, quote library, animations, and application logic.
- `Launch Heavy Talks.bat` starts the application with the correct PowerShell options.

## Repository approach

As more apps are added, each one will receive its own section in this README explaining:

- What the project does.
- Its main features and technology.
- Any requirements or installation steps.
- How to run and use it.
