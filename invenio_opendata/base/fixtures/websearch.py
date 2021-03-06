# -*- coding: utf-8 -*-
#
# This file is part of Invenio.
# Copyright (C) 2012, 2013, 2014 CERN.
#
# Invenio is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of the
# License, or (at your option) any later version.
#
# Invenio is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Invenio; if not, write to the Free Software Foundation, Inc.,
# 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.

from fixture import DataSet
#from invenio.modules.search.fixtures import FormatData
from invenio.modules.search import fixtures as default

class CollectionData(DataSet):

    siteCollection = default.CollectionData.siteCollection

    class CMS(siteCollection):
        id = 2
        name = 'CMS'
        dbquery = None

    class CMSPrimaryDatasets(siteCollection):
        id = 3
        name = 'CMS-Primary-Datasets'
        dbquery = '980__a:"CMS-Primary-Datasets"'
        names = {
            ('en', 'ln'): u'CMS Primary Datasets',
        }

    class CMSDerivedDatasets(siteCollection):
        id = 4
        name = 'CMS-Derived-Datasets'
        dbquery = '980__a:"CMS-Derived-Datasets"'
        names = {
            ('en', 'ln'): u'CMS Derived Datasets',
        }

    class ALICE(siteCollection):
        id = 5
        name = 'ALICE'
        dbquery = None

    class ALICEDerivedDatasets(siteCollection):
        id = 6
        name = 'ALICE-Derived-Datasets'
        dbquery = '980__a:"ALICE-Derived-Datasets"'
        names = {
            ('en', 'ln'): u'ALICE Derived Datasets',
        }

    class ALICETools(siteCollection):
        id = 7
        name = 'ALICE-Tools'
        dbquery = '980__a:"ALICE-Tools"'
        names = {
            ('en', 'ln'): u'ALICE Tools',
        }

    class CMSTools(siteCollection):
        id = 8
        name = 'CMS-Tools'
        dbquery = '980__a:"CMS-Tools"'
        names = {
            ('en', 'ln'): u'CMS Tools',
        }

    class CMSValidatedRuns(siteCollection):
        id = 9
        name = 'CMS-Validated-Runs'
        dbquery = '980__a:"CMS-Validated-Runs"'
        names = {
            ('en', 'ln'): u'CMS Validated Runs',
        }

    class CMSExternalResources(siteCollection):
        id = 10
        name = 'CMS-External-Resources'
        dbquery = '980__a:"CMS-External-Resources"'
        names = {
            ('en', 'ln'): u'CMS External Resources',
        }

    class ALICEReconstructedData(siteCollection):
        id = 11
        name = 'ALICE-Reconstructed-Data'
        dbquery = '980__a:"ALICE-Reconstructed-Data"'
        names = {
            ('en', 'ln'): u'ALICE Reconstructed Data',
        }

    class ATLAS(siteCollection):
        id = 12
        name = 'ATLAS'
        dbquery = None

    class ATLASDerivedDatasets(siteCollection):
        id = 13
        name = 'ATLAS-Derived-Datasets'
        dbquery = '980__a:"ATLAS-Derived-Datasets"'
        names = {
            ('en', 'ln'): u'ATLAS Derived Datasets',
        }

    class ATLASExternalResources(siteCollection):
        id = 14
        name = 'ATLAS-External-Resources'
        dbquery = '980__a:"ATLAS-External-Resources"'
        names = {
            ('en', 'ln'): u'ATLAS External Resources',
        }

    class ATLASTools(siteCollection):
        id = 15
        name = 'ATLAS-Tools'
        dbquery = '980__a:"ATLAS-Tools"'
        names = {
            ('en', 'ln'): u'ATLAS Tools',
        }


class CollectionCollectionData(DataSet):

    class siteCollection_CMS:
        dad = CollectionData.siteCollection
        son = CollectionData.CMS
        score = 0
        type = 'v'

    class CMS_CMSPrimaryDatasets:
        dad = CollectionData.CMS
        son = CollectionData.CMSPrimaryDatasets
        score = 0
        type = 'r'

    class CMS_CMSDerivedDatasets:
        dad = CollectionData.CMS
        son = CollectionData.CMSDerivedDatasets
        score = 1
        type = 'r'

    class CMS_CMSTools:
        dad = CollectionData.CMS
        son = CollectionData.CMSTools
        score = 2
        type = 'r'

    class CMS_CMSValidatedRuns:
        dad = CollectionData.CMS
        son = CollectionData.CMSValidatedRuns
        score = 3
        type = 'r'

    class CMS_CMSExternalResources:
        dad = CollectionData.CMS
        son = CollectionData.CMSExternalResources
        score = 4
        type = 'r'

    class siteCollection_CMSPrimaryDatasets:
        dad = CollectionData.siteCollection
        son = CollectionData.CMSPrimaryDatasets
        score = 0
        type = 'r'

    class siteCollection_CMSDerivedDatasets:
        dad = CollectionData.siteCollection
        son = CollectionData.CMSDerivedDatasets
        score = 1
        type = 'r'

    class siteCollection_CMSTools:
        dad = CollectionData.siteCollection
        son = CollectionData.CMSTools
        score = 2
        type = 'r'

    class siteCollection_CMSValidatedRuns:
        dad = CollectionData.siteCollection
        son = CollectionData.CMSValidatedRuns
        score = 3
        type = 'r'

    class siteCollection_CMSExternalResources:
        dad = CollectionData.siteCollection
        son = CollectionData.CMSExternalResources
        score = 4
        type = 'r'

    class siteCollection_ALICE:
        dad = CollectionData.siteCollection
        son = CollectionData.ALICE
        score = 1
        type = 'v'

    class ALICE_ALICEDerivedDatasets:
        dad = CollectionData.ALICE
        son = CollectionData.ALICEDerivedDatasets
        score = 0
        type = 'r'

    class ALICE_ALICEReconstructedData:
        dad = CollectionData.ALICE
        son = CollectionData.ALICEReconstructedData
        score = 1
        type = 'r'

    class ALICE_ALICETools:
        dad = CollectionData.ALICE
        son = CollectionData.ALICETools
        score = 2
        type = 'r'

    class siteCollection_ALICEDerivedDatasets:
        dad = CollectionData.siteCollection
        son = CollectionData.ALICEDerivedDatasets
        score = 5
        type = 'r'

    class siteCollection_ALICEReconstructedData:
        dad = CollectionData.siteCollection
        son = CollectionData.ALICEReconstructedData
        score = 6
        type = 'r'

    class siteCollection_ALICETools:
        dad = CollectionData.siteCollection
        son = CollectionData.ALICETools
        score = 7
        type = 'r'

    class siteCollection_ATLAS:
        dad = CollectionData.siteCollection
        son = CollectionData.ATLAS
        score = 2
        type = 'v'

    class siteCollection_ATLASDerivedDatasets:
        dad = CollectionData.siteCollection
        son = CollectionData.ATLASDerivedDatasets
        score = 8
        type = 'r'

    class siteCollection_ATLASExternalResources:
        dad = CollectionData.siteCollection
        son = CollectionData.ATLASExternalResources
        score = 9
        type = 'r'

    class siteCollection_ATLASTools:
        dad = CollectionData.siteCollection
        son = CollectionData.ATLASTools
        score = 10
        type = 'r'

    class ATLAS_ATLASDerivedDatasets:
        dad = CollectionData.ATLAS
        son = CollectionData.ATLASDerivedDatasets
        score = 0
        type = 'r'

    class ATLAS_ATLASExternalResources:
        dad = CollectionData.ATLAS
        son = CollectionData.ATLASExternalResources
        score = 1
        type = 'r'

    class ATLAS_ATLASTools:
        dad = CollectionData.ATLAS
        son = CollectionData.ATLASTools
        score = 2
        type = 'r'


class CollectiondetailedrecordpagetabsData(DataSet):

    class Collectiondetailedrecordpagetabs_1:
        tabs = u'metadata;files'
        id_collection = CollectionData.siteCollection.ref('id')


class CollectionFormatData(DataSet):

    class CollectionFormat_1_1:
        score = 100
        id_format = 1 # FormatData.Format_1.ref('id')
        id_collection = CollectionData.siteCollection.ref('id')

    class CollectionFormat_1_2:
        score = 90
        id_format = 2 # FormatData.Format_2.ref('id')
        id_collection = CollectionData.siteCollection.ref('id')

    class CollectionFormat_1_3:
        score = 80
        id_format = 3 # FormatData.Format_3.ref('id')
        id_collection = CollectionData.siteCollection.ref('id')

    class CollectionFormat_1_4:
        score = 70
        id_format = 4 # FormatData.Format_4.ref('id')
        id_collection = CollectionData.siteCollection.ref('id')

    class CollectionFormat_1_5:
        score = 60
        id_format = 5 # FormatData.Format_5.ref('id')
        id_collection = CollectionData.siteCollection.ref('id')


class PortalboxData(DataSet):

    class Portalbox_1:
        body = u'The CMS (Compact Muon Solenoid) experiment is one of two large general-purpose particle physics detectors built on the Large Hadron Collider (LHC) at CERN in Switzerland and France. The goal of CMS is to investigate a wide range of physics, including properties of the recently discovered Higgs boson as well as searches for extra dimensions and particles that could make up dark matter.'
        id = 1
        title = u'description'

    class Portalbox_2:
        body = u'CMS.gif'
        id = 2
        title = u'image'

    class Portalbox_3:
        body = u'ALICE (A Large Ion Collider Experiment) is one of seven detector experiments at the Large Hadron Collider at CERN. The other six are: ATLAS, CMS, TOTEM, LHCb, LHCf and MoEDAL. ALICE is optimized to study heavy-ion (Pb-Pb nuclei) collisions at a centre of mass energy of 2.76 TeV per nucleon pair. The resulting temperature and energy density are expected to be high enough to produce quark–gluon plasma, a state of matter wherein quarks and gluons are freed. Similar conditions are believed to existed a fraction of the second after the Big Bang before quarks and gluons bound together to form hadrons and heavier particles.'
        id = 3
        title = u'description'

    class Portalbox_4:
        body = u'ALICE.gif'
        id = 4
        title = u'image'

    class Portalbox_5:
        body = u'CMS primary datasets are AOD (Analysis Object Data) files, which contain the information that is needed for analysis#$#$#: (1) all the high-level physics objects (such as muons, electrons, etc.) (2) tracks with associated hits, calorimetric clusters with associated hits, vertices and (3) information about event selection (triggers), data needed for further selection and identification criteria for the physics objects.'
        id = 5
        title = u'description'

    class Portalbox_6:
        body = u'default.png'
        id = 6
        title = u'image'

    class Portalbox_7:
        body = u'This collection includes data that have been derived from the CMS primary datasets#$#$#. The data may be reduced in the sense that (a) only part of the information is kept or (b) only part of the events are selected. Datasets include those which may be accessed using the VM image of the CMS environment or those which are adapted for other tools and applications. The tools and instructions to access and use these data are linked to each record.'
        id = 7
        title = u'description'

    class Portalbox_8:
        body = u'default.png'
        id = 8
        title = u'image'

    class Portalbox_9:
        body = u'This collection includes ALICE analysis modules.'
        id = 9
        title = u'description'

    class Portalbox_10:
        body = u'default.png'
        id = 10
        title = u'image'

    class Portalbox_11:
        body = u'This collection includes ALICE simplified datasets.'
        id = 11
        title = u'description'

    class Portalbox_12:
        body = u'default.png'
        id = 12
        title = u'image'

    class Portalbox_13:
        body = u'This collection includes tools, with which the CMS open data can be accessed and used#$#$#. It contains the VM image of the CMS environment through which the datasets can be read. It includes the software with which the derived datasets were produced, and analysis examples. It also contains the source code for the online applications deployed on this site.'
        id = 13
        title = u'description'

    class Portalbox_14:
        body = u'This collection includes CMS Validated Runs'
        id = 14
        title = u'description'

    class Portalbox_15:
        body = u'This collection includes external resources that use CMS public data#$#$#. The items in this collection are suitable for education purposes.'
        id = 15
        title = u'description'

    class Portalbox_16:
        body = u'This collection includes ALICE reconstructed data.'
        id = 16
        title = u'description'

    class Portalbox_17:
        body = u'CMS is releasing data in the same format as used in data analysis by CMS physicists. A CMS-specific analysis framework is needed, and it is provided as a Virtual Machine image with the CMS analysis environment. The data can be downloaded (be aware of the large size of the datasets) or accessed directly through the VM image. Basic information of the data contents is provided in http://opendata.cern.ch/about/CMS and in http://opendata.cern.ch/about/CMS-Physics-Objects. The original data are in primary datasets, i.e. no selection nor identification criteria have been applied (apart from the trigger decision), and these have to be applied in the subsequent analysis step. For the first release, no simulated Monte Carlo datasets are provided'
        id = 17
        title = u'research_description'

    class Portalbox_18:
        body = u'These ALICE datasets contain a sample of events from the p-p an PbPb LHC runs in 2010, in the ESD (event summary data) format of the ALICE reconstruction program. The events are unbiased and are not a result of event selections and this format is directly usable by the analysis done by ALICE physicists. The data can be downloaded and used from a specific ALICE virtual machine image which can be installed using this procedure (link) and which demonstrates some ALICE analysis and event display examples. A single dataset is exposed in the form of a custom VSD (V0 summary data) format which is not usable in normal analysis but just by a set of masterclasses available also from the ALICE VM. For the first release, no simulated Monte Carlo datasets are provided.'
        id = 18
        title = u'research_description'

    class Portalbox_19:
        body = u'ATLAS.gif'
        id = 19
        title = u'image'

    class Portalbox_20:
        body = u'The ATLAS (A Toroidal LHC ApparatuS) experiment is the other general-purpose particle physics detector at the LHC. It covers a wide range of physics exploring topics like the properties of the Higgs-like particle whose discovery was announced in July 2012.'
        id = 20
        title = u'description'

    class Portalbox_21:
        body = u'This collection includes external resources that use ATLAS public data#$#$#. The items in this collection are suitable for education purposes.'
        id = 21
        title = u'description'

    class Portalbox_22:
        body = u'This collection includes tools, with which the ATLAS open data can be accessed and used#$#$#.'
        id = 22
        title = u'description'

    class Portalbox_23:
        body = u'ATLAS is releasing data in an XML format. '
        id = 23
        title = u'research_description'

    class Portalbox_24:
        body = u'This collection includes ATLAS masterclass datasets.'
        id = 24
        title = u'description'


class CollectionPortalboxData(DataSet):

    class CollectionPortalbox_2_1_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_1.ref('id')
        score = 100
        id_collection = CollectionData.CMS.ref('id')

    class CollectionPortalbox_2_2_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_2.ref('id')
        score = 100
        id_collection = CollectionData.CMS.ref('id')

    class CollectionPortalbox_5_3_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_3.ref('id')
        score = 100
        id_collection = CollectionData.ALICE.ref('id')

    class CollectionPortalbox_5_4_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_4.ref('id')
        score = 100
        id_collection = CollectionData.ALICE.ref('id')

    class CollectionPortalbox_3_5_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_5.ref('id')
        score = 100
        id_collection = CollectionData.CMSPrimaryDatasets.ref('id')

    class CollectionPortalbox_3_6_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_6.ref('id')
        score = 100
        id_collection = CollectionData.CMSPrimaryDatasets.ref('id')

    class CollectionPortalbox_4_7_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_7.ref('id')
        score = 100
        id_collection = CollectionData.CMSDerivedDatasets.ref('id')

    class CollectionPortalbox_4_8_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_8.ref('id')
        score = 100
        id_collection = CollectionData.CMSDerivedDatasets.ref('id')

    class CollectionPortalbox_6_9_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_9.ref('id')
        score = 100
        id_collection = CollectionData.ALICETools.ref('id')

    class CollectionPortalbox_6_10_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_10.ref('id')
        score = 100
        id_collection = CollectionData.ALICETools.ref('id')

    class CollectionPortalbox_7_11_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_11.ref('id')
        score = 100
        id_collection = CollectionData.ALICEDerivedDatasets.ref('id')

    class CollectionPortalbox_7_12_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_12.ref('id')
        score = 100
        id_collection = CollectionData.ALICEDerivedDatasets.ref('id')

    class CollectionPortalbox_8_13_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_13.ref('id')
        score = 100
        id_collection = CollectionData.CMSTools.ref('id')

    class CollectionPortalbox_9_14_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_14.ref('id')
        score = 100
        id_collection = CollectionData.CMSValidatedRuns.ref('id')

    class CollectionPortalbox_10_15_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_15.ref('id')
        score = 100
        id_collection = CollectionData.CMSExternalResources.ref('id')

    class CollectionPortalbox_11_16_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_16.ref('id')
        score = 100
        id_collection = CollectionData.ALICEReconstructedData.ref('id')

    class CollectionPortalbox_2_17_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_17.ref('id')
        score = 100
        id_collection = CollectionData.CMS.ref('id')

    class CollectionPortalbox_5_18_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_18.ref('id')
        score = 100
        id_collection = CollectionData.ALICE.ref('id')

    class CollectionPortalbox_12_19_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_19.ref('id')
        score = 100
        id_collection = CollectionData.ATLAS.ref('id')

    class CollectionPortalbox_12_20_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_20.ref('id')
        score = 100
        id_collection = CollectionData.ATLAS.ref('id')

    class CollectionPortalbox_14_21_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_21.ref('id')
        score = 100
        id_collection = CollectionData.ATLASExternalResources.ref('id')

    class CollectionPortalbox_15_22_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_22.ref('id')
        score = 100
        id_collection = CollectionData.ATLASTools.ref('id')

    class CollectionPortalbox_12_23_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_23.ref('id')
        score = 100
        id_collection = CollectionData.ATLAS.ref('id')

    class CollectionPortalbox_13_24_en:
        ln = u'en'
        position = u'r'
        id_portalbox = PortalboxData.Portalbox_24.ref('id')
        score = 100
        id_collection = CollectionData.ATLASDerivedDatasets.ref('id')


class FacetCollectionData(DataSet):

    class FacetCollection_1:
        id = 1
        id_collection = CollectionData.siteCollection.ref('id')
        order = 1
        facet_name = 'collection'


__all__ = (
    'CollectionData',
    'CollectionCollectionData',
    'CollectiondetailedrecordpagetabsData',
    'CollectionFormatData',
    'PortalboxData',
    'CollectionPortalboxData',
    'FacetCollectionData',
)
