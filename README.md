Fuxploider-NG
=====

Fuxploider-*NG* is an extended version of [Fuxploider](https://github.com/almandin/fuxploider) with the following improvements to increase its UFU vulnerability detection capabilities:

- Added XSS detection in file names and file content
- Fixed PHP code in .gif detection
- Added PHP code in .png file upload exploit
- Added file upload path traveral exploit
- Added file upload path race condition exploit
- Added dangerous file extension replacement exploit

The improvements were implemented for the [evaluation of UFU vulnerability scanners](https://github.com/FUEL-Project/FUEL-Evaluation) using [FUEL](https://github.com/FUEL-Project/FUEL-FileUploadExploitationLab) in the academic publication `Bringing UFUs Back into the Air With FUEL: A Framework for Evaluating the Effectiveness of Unrestricted File Upload Vulnerability Scanners` to be published at [DIMVA 2024](https://www.dimva.org/dimva2024/). You can find a preprint of the paper [here](https://arxiv.org/abs/2405.16619) and the camera-ready version [here](https://doi.org/10.1007/978-3-031-64171-8_11).

Please cite this paper as:

```
@InProceedings{10.1007/978-3-031-64171-8_11,
author="Neef, Sebastian
and Oudeh, Maath",
editor="Maggi, Federico
and Egele, Manuel
and Payer, Mathias
and Carminati, Michele",
title="Bringing UFUs Back into the Air with FUEL: A Framework for Evaluating the Effectiveness of Unrestricted File Upload Vulnerability Scanners",
booktitle="Detection of Intrusions and Malware, and Vulnerability Assessment",
year="2024",
publisher="Springer Nature Switzerland",
address="Cham",
pages="207--226",
isbn="978-3-031-64171-8"
}
```

The original version of Fuxploider authored by `Virgile Jarry` is available at [https://github.com/almandin/fuxploider](https://github.com/almandin/fuxploider) and its original README is included below.

# fuxploider

[![Python 3.6](https://img.shields.io/badge/python-3.6%20%2B-green.svg)](https://www.python.org/) [![License](https://img.shields.io/badge/license-GPLv3-red.svg)](https://raw.githubusercontent.com/almandin/fuxploider/master/LICENSE.md)

Fuxploider is an open source penetration testing tool that automates the process of detecting and exploiting file upload forms flaws. This tool is able to detect the file types allowed to be uploaded and is able to detect which technique will work best to upload web shells or any malicious file on the desired web server.

Screenshots
----
![screenshot](screenshot.png)

Installation
----

_You will need Python 3.6 at least._

    git clone https://github.com/almandin/fuxploider.git
    cd fuxploider
    pip3 install -r requirements.txt

If you have problems with pip (and if you use windows apparently) :

    python3 -m pip install -r requirements.txt

For Docker installation

    # Build the docker image
    docker build -t almandin/fuxploider .

Usage
----

To get a list of basic options and switches use :

    python3 fuxploider.py -h

Basic example :

    python3 fuxploider.py --url https://awesomeFileUploadService.com --not-regex "wrong file type"

> [!] legal disclaimer : Usage of fuxploider for attacking targets without prior mutual consent is illegal. It is the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program
