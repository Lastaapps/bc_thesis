#!/usr/bin/env python
import os


def fix_color_blind(text: str) -> str:
    patterns = {
        "0.121569,0.466667,0.705882": "currentstroke1",
        "1.000000,0.498039,0.054902": "currentstroke2",
        "0.172549,0.627451,0.172549": "currentstroke3",
        "0.839216,0.152941,0.156863": "currentstroke4",
        "0.580392,0.403922,0.741176": "currentstroke5",
        "0.549020,0.337255,0.294118": "currentstroke6",
        "0.890196,0.466667,0.760784": "currentstroke7",
    }
    for color, stroke in patterns.items():
        text = text.replace(
            r"\definecolor{currentstroke}{rgb}{"
            + color
            + r"}%"
            + "\n"
            + r"\pgfsetstrokecolor{currentstroke}%",
            r"\pgfsetstrokecolor{" + stroke + r"}%",
        )
    return text


def fix_methods(text: str) -> str:
    patterns = [
        (r" CycleMask", r" \CycleMask{}"),
        (r" IsNACColoring", r" \IsNACColoring{}"),
        (r"naive cycles", r"\NaiveCycles{}"),
        (r"none", r"\None{}"),
        # this must come before neighbors
        (r"neighbors\_degree", r"\NeighborsDegree{}"),
        (r"neighbors", r"\Neighbors{}"),
        (r"shared\_vertices", r"\SharedVertices{}"),
        (r"linear", r"\MergeLinear{}"),
    ]
    for pattern, replacement in patterns:
        text = text.replace(pattern, replacement)
    return text


DIR = "figures"
for filename in os.listdir(DIR):
    if filename.endswith(".pgf"):
        print(f"Processing {filename}")
        with open(os.path.join(DIR, filename), "r") as f:
            text = f.read()

        text = fix_color_blind(text)
        text = fix_methods(text)

        with open(os.path.join(DIR, filename), "w") as f:
            f.write(text)
