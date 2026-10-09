# ⚡ Quran Blitz — Photographic Hifz Trainer

A fast-paced, neon-green, sound-driven web app for memorizing the Quran **one page at a time** using **photographic (position-based) memorization** — you burn *where* each word sits on the page into your visual memory.

## Features

- 📷 **Photographic memory technique** — words are laid out line-by-line as on the page; fade levels (Full → 55% → 28% → 12% → Ghost 👻) + auto **Flash Cycle** train position recall
- 📖 **3 layers per word**: Arabic, English transliteration, word-by-word translation — toggle each independently
- ⚡ **Blitz mode**: memorize-phase countdown → page blanks out → tap the correct *position* for each prompted word against a per-round timer (Chill 8s / Blitz 5s / Hyper 3s)
- 🔊 **Synthesized sound effects** (Web Audio API — no audio files): ticks, countdown, correct chimes that rise with your combo, buzzes, win fanfare
- 🔥 **Combo / streak scoring**, star ratings, best scores saved in `localStorage`
- 💾 **All data pre-stored** — 7 pages embedded in one `index.html`, works fully offline
- 📱 Mobile-friendly, zero dependencies, zero build step

## Pre-stored pages

Al-Fātiḥah (1) · Al-ʿAṣr (103) · Al-Kawthar (108) · An-Naṣr (110) · Al-Ikhlāṣ (112) · Al-Falaq (113) · An-Nās (114)

## Run locally

Just open `index.html` in any browser. That's it.

## Deploy to GitHub Pages (no command line needed)

1. Go to <https://github.com/new> → create a **public** repo, e.g. `quran-blitz`
2. Click **Add file → Upload files** → drag in `index.html` (and this README) → **Commit changes**
3. Go to **Settings → Pages** → Source: **Deploy from a branch** → Branch: **main** / **(root)** → **Save**
4. Wait ~1 minute. Your app is live at:

   **https://\<your-username\>.github.io/quran-blitz/**

## Adding more pages

Append to the `PAGES` array in `index.html`:

```js
{ id:'maun', name:'Al-Māʿūn', arabicName:'الماعون', ref:'Sūrah 107 · Juz 30',
  lines:[
    [ W('أَرَأَيْتَ','Araʾayta','Have you seen'), /* ... */ ],
  ]}
```

Each word is `W(arabic, transliteration, english)`; each inner array is one visual line on the page.
