# LOGD – Lab 04

## Bug Record

**Date:** 06/11/2026

**Symptom:** Flutter initially displayed the default counter application instead of the Pizza Store App.

**Cause:** The default Flutter template code was still present in `main.dart`.

**Fix:** Replaced the default code with the Pizza Store App implementation, including named routes and detail screens.

**Evidence:** The app successfully displayed the menu and opened all three detail screens. All 4 widget tests passed, and `flutter analyze` reported no issues.