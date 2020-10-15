# TEVA-SPOT-GUI

# Introduction
The Threat Ensemble Vulnerability Assessment, Sensor Placement Optimization Tool (TEVA-SPOT), graphical user interface (GUI) software program provides the capability to analyze many possible contaminant threat scenarios to a water system’s drinking water distribution network.  TEVA-SPOT-GUI takes as input an EPANET-based water distribution system network model.  TEVA-SPOT-GUI can be used to help determine the potential magnitude of possible consequences given a release of contaminant into the drinking water distribution system of a water system. TEVA-SPOT allows the user to create a threat ensemble, or set of contamination scenarios, based on varying, for instance, the type of contaminant, the amount and concentration of the contaminant, and the location of the contaminant release into the distribution system.  System wide consequences and vulnerability can then be assessed based on the entire threat ensemble.

In TEVA-SPOT-GUI individuals using water from a distribution system are located at the nodes (junctions) in the system.  TEVA-SPOT-GUI uses EPANET to determine contaminant concentrations during a contamination event at all water system nodes.  Since contaminant concentration varies with time and location during a contamination event the behavior of individuals as to how they use water determines their possible exposure.  More specifically, an individual’s behavior determines the times at which possible exposures to contaminated tap water can occur.  TEVA-SPOT-GUI has the capability to determine contaminant exposures and doses from ingestion of tap water and inhalation during showering and from whole house humidifier use.  For showering, TEVA-SPOT-GUI provides the capability to estimate inhalation doses that result from contaminated aerosols or volatile contaminants.  TEVA-SPOT-GUI includes a sensor placement module which uses the results of the consequence assessment to optimally locate sensor monitoring stations or evaluate an existing sensor or sampling monitoring network.  TEVA-SPOT-GUI contains a heuristic algorithm capable of solving large and complicated optimization problems. The algorithm tries to find a solution to the problem of placing a given number of sensors in a water distribution network to optimize a stated objective, and subject to several constraints.

# TEVA-SPOT-GUI Consequence Assessment
For contaminant consequence assessment, here are some of the capabilities that TEVA-SPOT-GUI provides:
* Simulate and model an ensemble of contamination events, e.g., all locations (nodes) in the network model, in a distributed, computationally efficient manner making use of a computer’s multiple processing cores.
* Simulate and model single or multiple, simultaneous contaminant releases to a water system.
* Define an ensemble of contamination event locations. Available ensemble collections consist of all nodes, nonzero demand nodes, utility facilities (e.g., tanks and pump stations), user-defined list, and a user-defined random selection of nodes based on number or percentage of nodes from either all nodes, nonzero demand nodes or by pipe diameter. 
* Define the list of contaminant release locations to be those upstream of user-defined critical locations (nodes).
* Estimate consequences based on public health exposures, doses, and health effects (illnesses and fatalities) from ingestion of contaminated tap water, inhalation of volatile or aerosol contaminants during showering, or the inhalation of aerosol contaminants from humidifier use.  Public health consequences could include injuries, disease, illness, and deaths. 
* Estimate infrastructure contamination as the length of pipe contaminated or gallons of water contaminated.

# TEVA-SPOT-GUI Sensor Placement Evaluation and Optimization
For sensor location placement evaluation and optimization, here are some of the capabilities that TEVA-SPOT-GUI provides:
* TEVA-SPOT-GUI can optimize the placement of sensor monitoring stations with respect to a primary objective (e.g., estimated population exposed to a contaminant (pe) and consider one or more secondary objectives (e.g., minimize the time of detection (td))). 
* TEVA-SPOT-GUI can also evaluate existing sensor monitoring locations with respect to the same primary objectives (e.g., estimated population exposed, population over dose threshold, time of detection, extent of contamination).
* TEVA-SPOT-GUI provides a regret analysis operation mode to allow the user to analyze multiple sensor placement designs with respect to a range of threats. The regret analysis mode allows the user to determine how well a sensor network design performs when confronted with a threat or objective that is different from that used in its design.

# Description
This repository was established to provide U.S. EPA’s official release of TEVA-SPOT-GUI.  The last official release of TEVA-SPOT-GUI was January 10. 2017.  This repository will archive the software and important reports and data files for TEVA-SPOT-GUI.

#Intended Audience
The intended audience for this repository is anyone interested in understanding and using TEVA-SPOT-GUI.

# License
The U.S. Government is granted for itself and others acting on its behalf a paid-up, non-exclusive, irrevocable worldwide license in the binary software libraries associated with TEVA-SPOT-GUI to reproduce, prepare derivative works, and perform publicly and display publicly, including the right to distribute to other Government contractors.

The binary software libraries may be distributed, provided that they are only distributed as part, and remain a part of the TEVA-SPOT-GUI software. Argonne has agreed that all users of TEVA-SPOT-GUI and derivative systems have a perpetual, royalty-free license to use and distribute for free JeoViewer, DIAS, and MSV Java Utility Library binary software as part of TEVA-SPOT-GUI.  However, the source code is not provided as part of this licensing agreement. The existing executables for JeoViewer, DIAS, and MSV Java Utility Library, as well as any improvements and modifications to these systems, are and will be freely available to the EPA and the users of TEVA-SPOT-GUI as part of this effort.
Portions of TEVA-SPOT-GUI are being distributed under the Lesser GNU Public License (LGPL). The LGPL is described in the LICENSE.lgpl file included with the software. TEVA-SPOT-GUI includes a variety of other software packages with different licenses.  The use of this software should be for research purposes, there are restrictions on commercial usages in some cases: 
tevaUtils: Lesser GNU Public License
grasp: AT&T commercial license-randomsample, sideconstraints 
ATT Software for noncommercial use.
ufl -Common Public License

# Documentation
Please refer to the TEVA-SPOT-GUI User’s Manual (https://github.com/USEPA/TEVA-SPOT-GUI/tree/master/Users_Manual) or supporting documents (https://github.com/USEPA/TEVA-SPOT-GUI/tree/master/Supporting_documents) for more information.

# Contact
janke.robert@epa.gov

# EPA Disclaimer
The United States Environmental Protection Agency (EPA) GitHub project code is provided on an "as is" basis and the user assumes responsibility for its use. EPA has relinquished control of the information and no longer has responsibility to protect the integrity, confidentiality, or availability of the information. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by EPA. The EPA seal and logo shall not be used in any manner to imply endorsement of any commercial product or activity by EPA or the United States Government.
