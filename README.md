
# Homomorphic-Filtering
A GUI written in Matlab for homomorphic filtering images.

## Synopsis

The codes in this repository creates a GUI making it possible to apply homomorphic filtering of a jpg image interactively. The program uses the fast Fourier Transform to apply its filter.

**Author(s):** Matz Johansson Bergström

**Maintainer:** Matz Johansson Bergström <matz.johansson@gmail.com>

**License:** GNU Lesser General Public License (LGPL)

## Description

The following source codes were created to demonstrate how you can enhance the image quality of thermal images from cameras, e.g. Seek thermal camera or FLIR.

For more information, see my post showing the effect of the filter: http://matzjb.se/2015/09/enhancing-image-quality-of-thermal-images-seek/ and http://www.thermal.com/products/.


## Prerequisites

Matlab

## Setup

Start the GUI by running ```Homomorphic_filtering_GUI.m``` inside Matlab (pressing F5) and adding the project directory to the Matlab path.

Note: Do not apply the filter on images that are too large. Speedy filtering is expected on images of a size smaller than 400x400.

