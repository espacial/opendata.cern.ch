#!/bin/sh
#
# A helper script to download (mostly from CMS DocDB) files that are
# used for FFT uploads when building opendata.cern.ch site.
#
# NOTE: the FFT file cache directory is by default located in
# "$HOME/opendata.cern.ch-fft-file-cache".  The script also makes
# symlink to this place from "/tmp" so that files can be uploaded
# regardless of $HOME.
#
# NOTE: if the files are already present in the destinated directory,
# does not download anything, even without checking whether remote
# files have changed.
#
# NOTE: not using remote CMS DocDB URLs directly, because the total
# amount of files to transfer is about 6.6 GB.  It is better to run
# this script once in your development environment to store the files
# locally on your laptop, in which case further rebuilds of
# opendata.cern.ch site can be run fully locally, hence being
# significantly faster.

# config section:
WGET="wget -nc -nv --no-check-certificate"
DOCDB="https://cms-docdb.cern.ch/cgi-bin/PublicDocDB/RetrieveFile"
OUTDIR="$HOME/opendata.cern.ch-fft-file-cache"

# quit on errors and potentially unbound symbols:
#set -o errexit # because of wget
set -o nounset

# make sur output directory exists:
mkdir -p $OUTDIR
mkdir -p $OUTDIR/cms-eos-file-indexes
mkdir -p $OUTDIR/alice-eos-file-indexes
mkdir -p $OUTDIR/cms-docdb-files
mkdir -p $OUTDIR/cernvm-files
mkdir -p $OUTDIR/github-files

# firstly, mirror EOS files existing in the repository:
rsync -a invenio_opendata/testsuite/data/cms/eos-file-indexes/ $OUTDIR/cms-eos-file-indexes/
rsync -a invenio_opendata/testsuite/data/alice/eos-file-indexes/ $OUTDIR/alice-eos-file-indexes/

# secondly, download CMS DocDB files: (if not already existing)
$WGET -O $OUTDIR/cms-docdb-files/Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_0.csv "$DOCDB?docid=12450&amp;filename=Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_0.csv"
$WGET -O $OUTDIR/cms-docdb-files/Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon.csv "$DOCDB?docid=12450&amp;filename=Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon.csv"
$WGET -O $OUTDIR/cms-docdb-files/Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_1.csv "$DOCDB?docid=12450&amp;filename=Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_1.csv"
$WGET -O $OUTDIR/cms-docdb-files/Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_2.csv "$DOCDB?docid=12450&amp;filename=Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_2.csv"
$WGET -O $OUTDIR/cms-docdb-files/Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_3.csv "$DOCDB?docid=12450&amp;filename=Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_3.csv"
$WGET -O $OUTDIR/cms-docdb-files/Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_4.csv "$DOCDB?docid=12450&amp;filename=Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_4.csv"
$WGET -O $OUTDIR/cms-docdb-files/Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_5.csv "$DOCDB?docid=12450&amp;filename=Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_5.csv"
$WGET -O $OUTDIR/cms-docdb-files/Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_6.csv "$DOCDB?docid=12450&amp;filename=Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_6.csv"
$WGET -O $OUTDIR/cms-docdb-files/Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_7.csv "$DOCDB?docid=12450&amp;filename=Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_7.csv"
$WGET -O $OUTDIR/cms-docdb-files/Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_8.csv "$DOCDB?docid=12450&amp;filename=Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_8.csv"
$WGET -O $OUTDIR/cms-docdb-files/Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_9.csv "$DOCDB?docid=12450&amp;filename=Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon_9.csv"
$WGET -O $OUTDIR/cms-docdb-files/BTau.ig "$DOCDB?docid=12376&amp;filename=BTau.ig"
$WGET -O $OUTDIR/cms-docdb-files/EGMonitor.ig "$DOCDB?docid=12376&amp;filename=EGMonitor.ig"
$WGET -O $OUTDIR/cms-docdb-files/Electron.ig "$DOCDB?docid=12376&amp;filename=Electron.ig"
$WGET -O $OUTDIR/cms-docdb-files/Jet.ig "$DOCDB?docid=12376&amp;filename=Jet.ig"
$WGET -O $OUTDIR/cms-docdb-files/JetMETTauMonitor.ig "$DOCDB?docid=12376&amp;filename=JetMETTauMonitor.ig"
$WGET -O $OUTDIR/cms-docdb-files/METFwd.ig "$DOCDB?docid=12376&amp;filename=METFwd.ig"
$WGET -O $OUTDIR/cms-docdb-files/Mu.ig "$DOCDB?docid=12376&amp;filename=Mu.ig"
$WGET -O $OUTDIR/cms-docdb-files/MuMonitor.ig "$DOCDB?docid=12376&amp;filename=MuMonitor.ig"
$WGET -O $OUTDIR/cms-docdb-files/MuOnia.ig "$DOCDB?docid=12376&amp;filename=MuOnia.ig"
$WGET -O $OUTDIR/cms-docdb-files/MultiJet.ig "$DOCDB?docid=12376&amp;filename=MultiJet.ig"
$WGET -O $OUTDIR/cms-docdb-files/Photon.ig "$DOCDB?docid=12376&amp;filename=Photon.ig"
$WGET -O $OUTDIR/cms-docdb-files/Commissioning.ig "$DOCDB?docid=12376&amp;filename=Commissioning.ig"
$WGET -O $OUTDIR/cms-docdb-files/MinimumBias.ig "$DOCDB?docid=12376&amp;filename=MinimumBias.ig"
$WGET -O $OUTDIR/cms-docdb-files/ZeroBias.ig "$DOCDB?docid=12376&amp;filename=ZeroBias.ig"
$WGET -O $OUTDIR/cms-docdb-files/4lepton.csv "$DOCDB?docid=11976&amp;filename=4lepton.csv"
$WGET -O $OUTDIR/cms-docdb-files/4lepton.ig "$DOCDB?docid=11976&amp;filename=4lepton.ig"
$WGET -O $OUTDIR/cms-docdb-files/4lepton.json "$DOCDB?docid=11976&amp;filename=4lepton.json"
$WGET -O $OUTDIR/cms-docdb-files/diphoton.csv "$DOCDB?docid=11976&amp;filename=diphoton.csv"
$WGET -O $OUTDIR/cms-docdb-files/diphoton.ig "$DOCDB?docid=11976&amp;filename=diphoton.ig"
$WGET -O $OUTDIR/cms-docdb-files/diphoton.json "$DOCDB?docid=11976&amp;filename=diphoton.json"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi.csv "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi.csv"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_7.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_7.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_8.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_8.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_9.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_9.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_10.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_10.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_11.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_11.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_12.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_12.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_13.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_13.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_14.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_14.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_15.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_15.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_16.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_16.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi.json "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi.json"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_17.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_17.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_18.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_18.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_19.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_19.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_0.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_0.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_1.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_1.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_2.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_2.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_3.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_3.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_4.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_4.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_5.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_5.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon-Jpsi_6.ig "$DOCDB?docid=11580&amp;filename=dimuon-Jpsi_6.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_0.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_0.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_17.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_17.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_18.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_18.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_19.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_19.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_2.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_2.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_3.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_3.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_4.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_4.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_5.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_5.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_6.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_6.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_7.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_7.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_8.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_8.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_1.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_1.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_9.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_9.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_10.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_10.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_11.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_11.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_12.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_12.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_13.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_13.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_14.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_14.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_15.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_15.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi_16.ig "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi_16.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi.csv "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi.csv"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Jpsi.json "$DOCDB?docid=12064&amp;filename=dielectron-Jpsi.json"
$WGET -O $OUTDIR/cms-docdb-files/dimuon100k.json "$DOCDB?docid=11583&amp;filename=dimuon100k.json"
$WGET -O $OUTDIR/cms-docdb-files/dimuon_7.ig "$DOCDB?docid=11583&amp;filename=dimuon_7.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon_8.ig "$DOCDB?docid=11583&amp;filename=dimuon_8.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon_9.ig "$DOCDB?docid=11583&amp;filename=dimuon_9.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon100k.csv "$DOCDB?docid=11583&amp;filename=dimuon100k.csv"
$WGET -O $OUTDIR/cms-docdb-files/dimuon_0.ig "$DOCDB?docid=11583&amp;filename=dimuon_0.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon_1.ig "$DOCDB?docid=11583&amp;filename=dimuon_1.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon_2.ig "$DOCDB?docid=11583&amp;filename=dimuon_2.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon_3.ig "$DOCDB?docid=11583&amp;filename=dimuon_3.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon_4.ig "$DOCDB?docid=11583&amp;filename=dimuon_4.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon_5.ig "$DOCDB?docid=11583&amp;filename=dimuon_5.ig"
$WGET -O $OUTDIR/cms-docdb-files/dimuon_6.ig "$DOCDB?docid=11583&amp;filename=dimuon_6.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron_0.ig "$DOCDB?docid=12037&amp;filename=dielectron_0.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron100k.csv "$DOCDB?docid=12037&amp;filename=dielectron100k.csv"
$WGET -O $OUTDIR/cms-docdb-files/dielectron100k.json "$DOCDB?docid=12037&amp;filename=dielectron100k.json"
$WGET -O $OUTDIR/cms-docdb-files/dielectron_1.ig "$DOCDB?docid=12037&amp;filename=dielectron_1.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron_2.ig "$DOCDB?docid=12037&amp;filename=dielectron_2.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron_3.ig "$DOCDB?docid=12037&amp;filename=dielectron_3.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron_4.ig "$DOCDB?docid=12037&amp;filename=dielectron_4.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron_5.ig "$DOCDB?docid=12037&amp;filename=dielectron_5.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron_6.ig "$DOCDB?docid=12037&amp;filename=dielectron_6.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron_7.ig "$DOCDB?docid=12037&amp;filename=dielectron_7.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron_8.ig "$DOCDB?docid=12037&amp;filename=dielectron_8.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron_9.ig "$DOCDB?docid=12037&amp;filename=dielectron_9.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_0.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_0.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_17.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_17.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_18.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_18.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_19.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_19.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_2.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_2.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_3.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_3.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_4.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_4.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_5.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_5.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_6.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_6.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_7.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_7.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_8.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_8.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_1.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_1.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_9.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_9.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_10.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_10.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_11.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_11.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_12.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_12.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_13.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_13.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_14.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_14.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_15.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_15.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon_16.ig "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon_16.ig"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon.csv "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon.csv"
$WGET -O $OUTDIR/cms-docdb-files/dielectron-Upsilon.json "$DOCDB?docid=12065&amp;filename=dielectron-Upsilon.json"
$WGET -O $OUTDIR/cms-docdb-files/Zee.csv "$DOCDB?docid=11581&amp;filename=Zee.csv"
$WGET -O $OUTDIR/cms-docdb-files/Zee.json "$DOCDB?docid=11581&amp;filename=Zee.json"
$WGET -O $OUTDIR/cms-docdb-files/Zee_0.ig "$DOCDB?docid=11581&amp;filename=Zee_0.ig"
$WGET -O $OUTDIR/cms-docdb-files/Zee_1.ig "$DOCDB?docid=11581&amp;filename=Zee_1.ig"
$WGET -O $OUTDIR/cms-docdb-files/Zee_2.ig "$DOCDB?docid=11581&amp;filename=Zee_2.ig"
$WGET -O $OUTDIR/cms-docdb-files/Zee_3.ig "$DOCDB?docid=11581&amp;filename=Zee_3.ig"
$WGET -O $OUTDIR/cms-docdb-files/Zee_4.ig "$DOCDB?docid=11581&amp;filename=Zee_4.ig"
$WGET -O $OUTDIR/cms-docdb-files/Zmumu_0.ig "$DOCDB?docid=11582&amp;filename=Zmumu_0.ig"
$WGET -O $OUTDIR/cms-docdb-files/Zmumu_1.ig "$DOCDB?docid=11582&amp;filename=Zmumu_1.ig"
$WGET -O $OUTDIR/cms-docdb-files/Zmumu_2.ig "$DOCDB?docid=11582&amp;filename=Zmumu_2.ig"
$WGET -O $OUTDIR/cms-docdb-files/Zmumu_3.ig "$DOCDB?docid=11582&amp;filename=Zmumu_3.ig"
$WGET -O $OUTDIR/cms-docdb-files/Zmumu_4.ig "$DOCDB?docid=11582&amp;filename=Zmumu_4.ig"
$WGET -O $OUTDIR/cms-docdb-files/Zmumu.csv "$DOCDB?docid=11582&amp;filename=Zmumu.csv"
$WGET -O $OUTDIR/cms-docdb-files/Zmumu.json "$DOCDB?docid=11582&amp;filename=Zmumu.json"
$WGET -O $OUTDIR/cms-docdb-files/Wenu.csv "$DOCDB?docid=4673&amp;filename=Wenu.csv"
$WGET -O $OUTDIR/cms-docdb-files/Wenu_7.ig "$DOCDB?docid=4673&amp;filename=Wenu_7.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wenu_8.ig "$DOCDB?docid=4673&amp;filename=Wenu_8.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wenu_9.ig "$DOCDB?docid=4673&amp;filename=Wenu_9.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wenu.json "$DOCDB?docid=4673&amp;filename=Wenu.json"
$WGET -O $OUTDIR/cms-docdb-files/Wenu_0.ig "$DOCDB?docid=4673&amp;filename=Wenu_0.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wenu_1.ig "$DOCDB?docid=4673&amp;filename=Wenu_1.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wenu_2.ig "$DOCDB?docid=4673&amp;filename=Wenu_2.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wenu_3.ig "$DOCDB?docid=4673&amp;filename=Wenu_3.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wenu_4.ig "$DOCDB?docid=4673&amp;filename=Wenu_4.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wenu_5.ig "$DOCDB?docid=4673&amp;filename=Wenu_5.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wenu_6.ig "$DOCDB?docid=4673&amp;filename=Wenu_6.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu.csv "$DOCDB?docid=4655&amp;filename=Wmunu.csv"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu_7.ig "$DOCDB?docid=4655&amp;filename=Wmunu_7.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu_8.ig "$DOCDB?docid=4655&amp;filename=Wmunu_8.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu_9.ig "$DOCDB?docid=4655&amp;filename=Wmunu_9.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu.json "$DOCDB?docid=4655&amp;filename=Wmunu.json"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu_0.ig "$DOCDB?docid=4655&amp;filename=Wmunu_0.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu_1.ig "$DOCDB?docid=4655&amp;filename=Wmunu_1.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu_2.ig "$DOCDB?docid=4655&amp;filename=Wmunu_2.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu_3.ig "$DOCDB?docid=4655&amp;filename=Wmunu_3.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu_4.ig "$DOCDB?docid=4655&amp;filename=Wmunu_4.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu_5.ig "$DOCDB?docid=4655&amp;filename=Wmunu_5.ig"
$WGET -O $OUTDIR/cms-docdb-files/Wmunu_6.ig "$DOCDB?docid=4655&amp;filename=Wmunu_6.ig"

# thirdly, download more dependent files:
$WGET -O $OUTDIR/cernvm-files/CMS-OpenData-1.0.0-rc4.ova "http://cernvm.cern.ch/releases/CMS-OpenData-1.0.0-rc4.ova"
$WGET -O $OUTDIR/github-files/Cert_136033-149442_7TeV_Apr21ReReco_Collisions10_JSON_v2.txt "https://raw.githubusercontent.com/ayrodrig/pattuples2010/master/Cert_136033-149442_7TeV_Apr21ReReco_Collisions10_JSON_v2.txt"

# finally, make symlink to FFT cache from tmp:
if [ ! -L "/tmp/$(basename $OUTDIR)" ]; then
    ln -s $OUTDIR /tmp
fi

# end of file
