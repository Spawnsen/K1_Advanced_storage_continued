# K1 Advanced Chests für Factorio 2.1

Inoffizielle Fortführung von **[K1 Advanced storage continued](https://mods.factorio.com/mod/K1_Advanced_storage_continued)** für Factorio 2.1. Die Kisten und ihre Grafiken stammen ursprünglich aus **[Krastorio Legacy](https://mods.factorio.com/mod/Krastorio)** von Krastor und dem Krastorio-Team.

Diese Fortführung behebt die Ladeprobleme unter Factorio 2.1 und erhält die bestehenden Kisten-, Gegenstands-, Rezept- und Forschungsnamen. Sie ist ein eigenständiger Community-Fork und keine offizielle Veröffentlichung der ursprünglichen Autoren.

[**Version 2.1.1 als installierbare ZIP herunterladen**](https://github.com/Spawnsen/K1_Advanced_storage_continued/raw/refs/heads/main/downloads/K1_Advanced_storage_continued_2.1.1.zip)

## Inhalt

Zwölf Kistenvarianten bieten mehr Platz für deine Fabrik:

| Größe | Grundfläche | Inventar standardmäßig | Einstellbarer Bereich |
|---|---|---:|---:|
| Mittlere Kiste | 2 × 2 Felder | 200 Plätze | 100–200 Plätze |
| Große Kiste | 6 × 6 Felder | 2.000 Plätze | 800–2.000 Plätze |

Beide Größen gibt es als normale Stahlkiste sowie als Lager-, Puffer-, Anfrage-, aktive Anbieter- und passive Anbieterkiste. Alle Varianten besitzen Schaltungsanschlüsse.

Die Forschung erfolgt in drei Stufen: größere Kisten, einfache Logistikkisten und erweiterte Logistikkisten. Bei aktiviertem Space Age verwendet die erweiterte Forschung Weltraumwissenschaftspakete; Kisten können dann nicht auf Weltraumplattformen gebaut werden. Diese Regeln wurden aus der Ursprungsmod übernommen.

Enthaltene Übersetzungen: Deutsch, Englisch und Russisch.

## Voraussetzungen

- Factorio **2.1.7 oder neuer innerhalb der 2.1-Reihe**.
- Keine zusätzlichen Drittanbieter-Mods erforderlich.
- Space Age, Quality, Recycler und Elevated Rails sind optional. Getestet wurde mit Factorio **2.1.23**, sowohl ohne Erweiterungen als auch mit allen vier Erweiterungsmods.

## Installation

1. Lade die oben verlinkte Datei `K1_Advanced_storage_continued_2.1.1.zip` herunter.
2. Kopiere die ZIP **unverändert und nicht entpackt** in deinen Factorio-Modordner. Unter Windows ist das üblicherweise `%APPDATA%\Factorio\mods`.
3. Nimm ältere ZIPs oder entpackte Ordner derselben Mod aus diesem Modordner heraus.
4. Starte Factorio neu und aktiviere **K1 Advanced Chests (Factorio 2.1)** im Modmenü.

Verwende zur Installation die verlinkte Mod-ZIP. GitHubs Schaltfläche **Code → Download ZIP** liefert das gesamte Repository einschließlich Entwicklungsdateien.

### Bestehende Spielstände

Der interne Modname bleibt `K1_Advanced_storage_continued`. Auch die Namen der zwölf Kistentypen und der zugehörigen Gegenstände, Rezepte und Forschungen bleiben erhalten. Die bisherigen Migrationen sind weiterhin enthalten.

Das erleichtert den Wechsel von Version 2.0.3 zur 2.1-Fassung. Ein bestehender Benutzer-Spielstand mit weiteren Mods wurde jedoch nicht geprüft. Lade beim ersten Wechsel eine Kopie deines Spielstands und kontrolliere die vorhandenen Kisten und Inhalte. Eine parallel installierte zweite Fortführung mit denselben Prototypen kann Konflikte verursachen.

## Einstellungen

Die Werte findest du unter **Einstellungen → Mod-Einstellungen → Start**. Änderungen erfordern einen Neustart.

| Einstellung | Standard | Minimum | Maximum |
|---|---:|---:|---:|
| Inventar mittlerer Kisten | 200 | 100 | 200 |
| Inventar großer Kisten | 2.000 | 800 | 2.000 |
| Abfallinventar mittlerer Logistikkisten | 20 | 10 | 40 |
| Abfallinventar großer Logistikkisten | 40 | 10 | 80 |

Abfallinventare sind in dieser Fassung für Anfrage- und Pufferkisten definiert. Die Angaben zum Inventar beziehen sich auf normale Qualität.

## Änderungen für Factorio 2.1

- Versionsfreigabe für Factorio 2.1.
- Animationen der zehn Logistikkisten auf `robot_door` umgestellt und die Öffnungsdauer ausdrücklich definiert.
- Schaltungsanschlüsse aller zwölf Kistentypen auf `circuit_connector` umgestellt.
- Veraltetes `logistic_slots_count` durch `max_logistic_slots` ersetzt.
- Lizenztexte, Herkunftsnachweise und Bauanleitung ergänzt.
- Die einfache Logistikforschung verwendet dieselbe belegte Grafik wie die Kistenforschung. Das bisherige grüne Forschungssymbol und das K1-Vorschaubild werden in dieser Veröffentlichungsfassung nicht mitgeliefert, da ihre gesonderte Herkunft nicht abschließend zugeordnet werden konnte.

Rezepte, reguläre Inventargrößen und Forschungsablauf wurden aus Version 2.0.3 übernommen. Weitere Details stehen im [Änderungsprotokoll](changelog.txt).

## Herkunft und Dank

Diese Mod baut auf der Arbeit anderer auf:

| Projekt / Beitragende | Beitrag |
|---|---|
| [Krastor](https://mods.factorio.com/user/Krastor) und [Krastorio Legacy](https://mods.factorio.com/mod/Krastorio) | Ursprüngliche Kisten und Grafikarbeiten |
| Linver und das Krastorio-Team | Ursprüngliche Entwicklung von Krastorio |
| [Krastorio Graphics](https://mods.factorio.com/mod/Krastorio-graphics), [Krastorio 2](https://mods.factorio.com/mod/Krastorio2) und [Krastorio2Assets](https://github.com/raiguard/Krastorio2Assets) | Grafikherkunft, Fortführung und öffentlich dokumentierte Quellen; Wartung durch raiguard |
| [K1 Advanced storage / Juicy_mods](https://mods.factorio.com/mod/Juicy_mods), Keyboarg91 | Frühere eigenständige Auskopplung der Krastorio-Lagerkisten |
| [K1 Advanced storage continued](https://mods.factorio.com/mod/K1_Advanced_storage_continued), Vystella / SuzukinCblH | Grundlage dieser Fortführung: Version 2.0.3 für Factorio 2.0. Vystella ist der Portalinhaber; SuzukinCblH wird in der ursprünglichen `info.json` als Autor genannt. |
| [Spawnsen](https://github.com/Spawnsen) | Pflege dieser Fortführung für Factorio 2.1 |

Die Nennung eines Projekts bedeutet keine Unterstützung oder Freigabe dieses Forks durch dessen Autoren.

## Lizenz

Die Fortführung wird als Gesamtwerk unter **GNU GPL Version 3** veröffentlicht (`GPL-3.0-only`). Der vollständige Text steht in [LICENSE](LICENSE).

Die ursprünglichen Lizenzangaben der übernommenen Bestandteile bleiben in [THIRD-PARTY-NOTICES](THIRD-PARTY-NOTICES.md) dokumentiert. Dazu gehören LGPLv3-Hinweise für Krastorio und die MIT-Angabe der unmittelbaren Ursprungsmod. Die Grafiken werden durch diese Fortführung nicht als ausschließlich MIT-lizenziert ausgegeben.

Eine genaue Zuordnung aller 26 mitgelieferten PNG-Dateien einschließlich Prüfsummen und Quellen steht in [docs/asset-provenance.json](docs/asset-provenance.json). Hintergründe zur Lizenzzuordnung findest du in [docs/LICENSING.md](docs/LICENSING.md).

## Selbst bauen

Voraussetzung ist Python 3.10 oder neuer; zusätzliche Python-Pakete sind nicht erforderlich.

```console
python tools/build.py
```

Das Skript erzeugt die installierbare ZIP unter `downloads/`. Sie enthält die Mod-Dateien, die mitgelieferten Grafiken, Lizenztexte und Herkunftshinweise. Es werden keine Dateien aus einer Factorio-Installation benötigt oder übernommen.

## Prüfung

Mit einer installierten Factorio-Version kannst du die isolierten Kompatibilitätsprüfungen wiederholen:

```console
python tools/test_compatibility.py --factorio "C:\Program Files (x86)\Steam\steamapps\common\Factorio\bin\x64\Factorio.exe"
```

Das Skript baut zunächst die ZIP. Anschließend erzeugt es jeweils einen Testspielstand ohne Erweiterungen und mit Space Age, Quality, Recycler und Elevated Rails, prüft alle zwölf Kistentypen und lädt die Spielstände erneut für 60 Simulationsticks. Logs und Ergebnisse liegen unter `.test-output/`. Normale Modordner, Einstellungen und Spielstände werden dabei nicht verwendet.

Geprüft werden Inventargrößen, eingelagerte Gegenstände, rote und grüne Anschlussdefinitionen, Logistikmodi, Abfallinventare, Gegenstandszuordnungen, Rezepte, Forschungsfreischaltungen und der Erhalt der Testkisten samt Inhalt nach erneutem Laden. Die Tests ersetzen keine Prüfung der Bildschirmdarstellung oder jeder Kombination mit anderen Mods.

## Fehler melden

Bitte erstelle ein [Issue in diesem Repository](https://github.com/Spawnsen/K1_Advanced_storage_continued/issues) und gib Factorio-Version, Mod-Version, weitere aktive Mods und die genaue Fehlermeldung an. Fehler dieser Fortführung gehören hierher.
