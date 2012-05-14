# Giampiero Salvi <giampi@kth.se> 2012-05-11:
# These types are based on libsndfile version 1.0.25. Optimally this information
# should be generated automatically, for example with code similar to the one in
# examples/list_formats.c (in the libsndfile distribution).

package provide snack_sndfile_ext 0.0.1
package require snack

namespace eval snack::snack_sndfile_ext {
    variable extTypesUC
    variable loadTypes
    variable loadKeys

    set extTypes {
	{{AIFF (Apple/SGI)} .aiff}
	{{AU (Sun/NeXT)} .au}
	{{AVR (Audio Visual Research)} .avr}
	{{CAF (Apple Core Audio File)} .caf}
	{{FLAC (FLAC Lossless Audio Codec)} .flac}
	{{HTK (HMM Tool Kit)} .htk}
	{{IFF (Amiga IFF/SVX8/SV16)} .iff}
	{{MAT4 (GNU Octave 2.0 / Matlab 4.2)} .mat}
	{{MAT5 (GNU Octave 2.1 / Matlab 5.0)} .mat}
	{{MPC (Akai MPC 2k)} .mpc}
	{{OGG (OGG Container format)} .oga}
	{{PAF (Ensoniq PARIS)} .paf}
	{{PVF (Portable Voice Format)} .pvf}
	{{RAW (header-less)} .raw}
	{{RF64 (RIFF 64)} .rf64}
	{{SD2 (Sound Designer II)} .sd2}
	{{SDS (Midi Sample Dump Standard)} .sds}
	{{SF (Berkeley/IRCAM/CARL)} .sf}
	{{VOC (Creative Labs)} .voc}
	{{W64 (SoundFoundry WAVE 64)} .w64}
	{{WAV (Microsoft)} .wav}
	{{WAV (NIST Sphere)} .wav}
	{{WAVEX (Microsoft)} .wav}
	{{WVE (Psion Series 3)} .wve}
	{{XI (FastTracker 2)} .xi}
    }
    
    set loadTypes {
	{{AIFF (Apple/SGI)} {.aiff .AIFF}}
	{{AU (Sun/NeXT)} {.au .AU}}
	{{AVR (Audio Visual Research)} {.avr .AVR}}
	{{CAF (Apple Core Audio File)} {.caf .CAF}}
	{{FLAC (FLAC Lossless Audio Codec)} {.flac .FLAC}}
	{{HTK (HMM Tool Kit)} {.htk .HTK}}
	{{IFF (Amiga IFF/SVX8/SV16)} {.iff .IFF}}
	{{MAT4 (GNU Octave 2.0 / Matlab 4.2)} {.mat .MAT}}
	{{MAT5 (GNU Octave 2.1 / Matlab 5.0)} {.mat .MAT}}
	{{MPC (Akai MPC 2k)} {.mpc .MPC}}
	{{OGG (OGG Container format)} {.oga .OGA}}
	{{PAF (Ensoniq PARIS)} {.paf .PAF}}
	{{PVF (Portable Voice Format)} {.pvf .PVF}}
	{{RAW (header-less)} {.raw .RAW}}
	{{RF64 (RIFF 64)} {.rf64 .RF64}}
	{{SD2 (Sound Designer II)} {.sd2 .SD2}}
	{{SDS (Midi Sample Dump Standard)} {.sds .SDS}}
	{{SF (Berkeley/IRCAM/CARL)} {.sf .SF}}
	{{VOC (Creative Labs)} {.voc .VOC}}
	{{W64 (SoundFoundry WAVE 64)} {.w64 .W64}}
	{{WAV (Microsoft)} {.wav .WAV}}
	{{WAV (NIST Sphere)} {.wav .WAV}}
	{{WAVEX (Microsoft)} {.wav .WAV}}
	{{WVE (Psion Series 3)} {.wve .WVE}}
	{{XI (FastTracker 2)} {.xi .XI}}
    }

    set extTypesUC [list]
    set loadKeys [list]
    foreach pair $extTypes {
	set type [string toupper [lindex $pair 0]]
	set ext [lindex $pair 1]
	lappend extTypesUC [list $type $ext]
	lappend loadKeys $type
    }
}

