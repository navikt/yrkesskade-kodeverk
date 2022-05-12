ALTER TABLE type_kode ADD COLUMN sortering INTEGER DEFAULT 0;

UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'stukketEllerKuttet';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'stoetEllerTreffAvGjenstand';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'sammenstoetMedGjenstandEllerPaakjoersel';
UPDATE public.type_kode SET sortering = 400 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'sammenstoetEllerBittEllerSpark';
UPDATE public.type_kode SET sortering = 500 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'trafikkulykke';
UPDATE public.type_kode SET sortering = 600 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'fallAvPerson';
UPDATE public.type_kode SET sortering = 700 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'velt';
UPDATE public.type_kode SET sortering = 800 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'klemtEllerFanget';
UPDATE public.type_kode SET sortering = 900 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'druknetEllerBegravdEllerOmsvoept';
UPDATE public.type_kode SET sortering = 1000 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'brann';
UPDATE public.type_kode SET sortering = 1100 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'eksplosjonEllerSprenging';
UPDATE public.type_kode SET sortering = 1200 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'kontaktMedKjemikalierEllerFarligeStoffer';
UPDATE public.type_kode SET sortering = 1300 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'kontaktMedElektriskSpenning';
UPDATE public.type_kode SET sortering = 1400 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'hoeyTemperatur';
UPDATE public.type_kode SET sortering = 1500 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'lavTemperatur';
UPDATE public.type_kode SET sortering = 1600 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'paafoertVoldsskade';
UPDATE public.type_kode SET sortering = 1700 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'truslerOmVold';
UPDATE public.type_kode SET sortering = 1800 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'fysiskEllerPsykiskBelastning';
UPDATE public.type_kode SET sortering = 100000 WHERE type_navn = 'aarsakOgBakgrunn' AND kode = 'alternativenePasserIkke';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'alvorlighetsgrad' AND kode = 'antattIkkeOppsoektLege';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'alvorlighetsgrad' AND kode = 'antattOppsoektLege';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'alvorlighetsgrad' AND kode = 'alvorligKreftsykdom';
UPDATE public.type_kode SET sortering = 400 WHERE type_navn = 'alvorlighetsgrad' AND kode = 'livstruendeSykdomEllerSkade';
UPDATE public.type_kode SET sortering = 500 WHERE type_navn = 'alvorlighetsgrad' AND kode = 'innmeldtDoedsfall';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'manglendeMerkingEllerVarsling';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'verneutstyrUtAvFunksjon';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'verneutstyrFjernet';
UPDATE public.type_kode SET sortering = 400 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'uautorisertBrukAvUtstyr';
UPDATE public.type_kode SET sortering = 500 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'defektUtstyr';
UPDATE public.type_kode SET sortering = 600 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'mangelfulleSikkerhetsrutiner';
UPDATE public.type_kode SET sortering = 700 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'mangelfullOpplaering';
UPDATE public.type_kode SET sortering = 800 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'utilstrekkeligSikring';
UPDATE public.type_kode SET sortering = 900 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'vernetiltakIkkeGjennomfoert';
UPDATE public.type_kode SET sortering = 1000 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'feilBrukEllerTapAvKontrollOverMaskinEllerTransportmiddel';
UPDATE public.type_kode SET sortering = 1100 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'feilBrukEllerTapAvKontrollAvHaandholdtVerktoeyEllerAnnenGjenstand';
UPDATE public.type_kode SET sortering = 1200 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'tapAvKontrollOverDyr';
UPDATE public.type_kode SET sortering = 1300 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'feilUtfoerelseAvOppgaven';
UPDATE public.type_kode SET sortering = 1400 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'feilLoefting';
UPDATE public.type_kode SET sortering = 1500 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'feilPlassering';
UPDATE public.type_kode SET sortering = 1600 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'feilPaalasting';
UPDATE public.type_kode SET sortering = 1700 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'bedriftsidrett';
UPDATE public.type_kode SET sortering = 1800 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'uforsvarligLekEllerSpoekEllerVeddemaal';
UPDATE public.type_kode SET sortering = 1900 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'paavirkningAvAlkoholEllerAndreRusmidler';
UPDATE public.type_kode SET sortering = 2000 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'materialsvikt';
UPDATE public.type_kode SET sortering = 2100 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'sviktIUnderlag';
UPDATE public.type_kode SET sortering = 2200 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'fallendeObjekt';
UPDATE public.type_kode SET sortering = 2300 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'glidningEllerSnubling';
UPDATE public.type_kode SET sortering = 2400 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'fallFraEgenHoeyde';
UPDATE public.type_kode SET sortering = 2500 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'fallAvPersonTilLavereNivaa';
UPDATE public.type_kode SET sortering = 2600 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'kroppsbevegelseUtenFysiskBelastning';
UPDATE public.type_kode SET sortering = 2700 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'kroppsbevegelseMedFysiskBelastning';
UPDATE public.type_kode SET sortering = 2800 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'avvikSomFoelgeAvElektriskeProblemerEllerEksplosjonEllerBrann';
UPDATE public.type_kode SET sortering = 2900 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'avvikSomFoelgeAvLekkasjeEllerOversvoemmelse';
UPDATE public.type_kode SET sortering = 3000 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'avvikSomFoelgeAvGassutslippEllerKjemikalierEllerStoevEllerPartikler';
UPDATE public.type_kode SET sortering = 3100 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'angrepetEllerTruetAvEnPerson';
UPDATE public.type_kode SET sortering = 3200 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'tilstedeVedVoldEllerAggresjonEllerTrussel';
UPDATE public.type_kode SET sortering = 100000 WHERE type_navn = 'bakgrunnForHendelsen' AND kode = 'alternativenePasserIkke';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'foerteDinSkadeEllerSykdomTilFravaer' AND kode = 'nei';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'foerteDinSkadeEllerSykdomTilFravaer' AND kode = 'treDagerEllerMindre';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'foerteDinSkadeEllerSykdomTilFravaer' AND kode = 'merEnnTreDager';
UPDATE public.type_kode SET sortering = 900 WHERE type_navn = 'foerteDinSkadeEllerSykdomTilFravaer' AND kode = 'fravaersdagerUkjent';
UPDATE public.type_kode SET sortering = 1000 WHERE type_navn = 'foerteDinSkadeEllerSykdomTilFravaer' AND kode = 'oenskerIkkeAaOppgi';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'fravaertype' AND kode = 'sykemelding';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'fravaertype' AND kode = 'egenmelding';
UPDATE public.type_kode SET sortering = 400 WHERE type_navn = 'fravaertype' AND kode = 'kombinasjonSykemeldingEgenmelding';
UPDATE public.type_kode SET sortering = 100000 WHERE type_navn = 'fravaertype' AND kode = 'alternativenePasserIkke';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'harSkadelidtHattFravaer' AND kode = 'fravaersdagerUkjent';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'harSkadelidtHattFravaer' AND kode = 'treDagerEllerMindre';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'harSkadelidtHattFravaer' AND kode = 'merEnnTreDager';
UPDATE public.type_kode SET sortering = 100000 WHERE type_navn = 'harSkadelidtHattFravaer' AND kode = 'alternativenePasserIkke';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'arbeidsstedInne';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'undervisningstedInne';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'undervisningsstedUte';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'arbeidsstedUte';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'arbeidsstedLukketOmraade';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'sfoEllerAks';
UPDATE public.type_kode SET sortering = 400 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'paaVeiTilEllerFraUndervisningssted';
UPDATE public.type_kode SET sortering = 400 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'kommetFremTilMidlertidigArbeidssted';
UPDATE public.type_kode SET sortering = 500 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'paaVeiMellomArbeidssteder';
UPDATE public.type_kode SET sortering = 500 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'transportISkolensRegi';
UPDATE public.type_kode SET sortering = 600 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'arrangementISkolensRegi';
UPDATE public.type_kode SET sortering = 600 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'paaVeiTilEllerFraArbeidssted';
UPDATE public.type_kode SET sortering = 700 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'avtaltHjemmekontor';
UPDATE public.type_kode SET sortering = 700 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'paalagtHjemmeskole';
UPDATE public.type_kode SET sortering = 800 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'transportIArbeidsgiversRegi';
UPDATE public.type_kode SET sortering = 800 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'paaInternatskole';
UPDATE public.type_kode SET sortering = 900 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'omBordISkoleskip';
UPDATE public.type_kode SET sortering = 900 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'offentligSted';
UPDATE public.type_kode SET sortering = 100000 WHERE type_navn = 'hvorSkjeddeUlykken' AND kode = 'alternativenePasserIkke';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'innmelderrolle' AND kode = 'denSkadelidte';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'innmelderrolle' AND kode = 'vergeOgForesatt';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'rolletype' AND kode = 'arbeidstaker';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'rolletype' AND kode = 'arbeidstakerOffshorePetroleum';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'rolletype' AND kode = 'arbeidstakerPaaSkip';
UPDATE public.type_kode SET sortering = 400 WHERE type_navn = 'rolletype' AND kode = 'elevEllerStudent';
UPDATE public.type_kode SET sortering = 500 WHERE type_navn = 'rolletype' AND kode = 'laerling';
UPDATE public.type_kode SET sortering = 600 WHERE type_navn = 'rolletype' AND kode = 'tiltaksdeltaker';
UPDATE public.type_kode SET sortering = 700 WHERE type_navn = 'rolletype' AND kode = 'lottaker';
UPDATE public.type_kode SET sortering = 800 WHERE type_navn = 'rolletype' AND kode = 'fiskerEllerFangstmann';
UPDATE public.type_kode SET sortering = 900 WHERE type_navn = 'rolletype' AND kode = 'frilanserEllerSelvstendigNaeringsdrivende';
UPDATE public.type_kode SET sortering = 1000 WHERE type_navn = 'rolletype' AND kode = 'personerIHelseinstitusjon';
UPDATE public.type_kode SET sortering = 1100 WHERE type_navn = 'rolletype' AND kode = 'innsatt';
UPDATE public.type_kode SET sortering = 1200 WHERE type_navn = 'rolletype' AND kode = 'vernepliktigIFoerstegangstjenesten';
UPDATE public.type_kode SET sortering = 1300 WHERE type_navn = 'rolletype' AND kode = 'militaerArbeidstaker';
UPDATE public.type_kode SET sortering = 1400 WHERE type_navn = 'rolletype' AND kode = 'veteran';
UPDATE public.type_kode SET sortering = 1500 WHERE type_navn = 'rolletype' AND kode = 'militaerLaerling';
UPDATE public.type_kode SET sortering = 1600 WHERE type_navn = 'rolletype' AND kode = 'militaerElev';
UPDATE public.type_kode SET sortering = 1700 WHERE type_navn = 'rolletype' AND kode = 'frivilligTjenestegjoerende';
UPDATE public.type_kode SET sortering = 1800 WHERE type_navn = 'rolletype' AND kode = 'oevrigVernepliktig';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hode';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'skadetKroppsdel' AND kode = 'ansikt';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreOeye';
UPDATE public.type_kode SET sortering = 400 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreOeye';
UPDATE public.type_kode SET sortering = 500 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreOere';
UPDATE public.type_kode SET sortering = 600 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreOere';
UPDATE public.type_kode SET sortering = 700 WHERE type_navn = 'skadetKroppsdel' AND kode = 'tenner';
UPDATE public.type_kode SET sortering = 800 WHERE type_navn = 'skadetKroppsdel' AND kode = 'kjeve';
UPDATE public.type_kode SET sortering = 900 WHERE type_navn = 'skadetKroppsdel' AND kode = 'halsOgNakke';
UPDATE public.type_kode SET sortering = 1000 WHERE type_navn = 'skadetKroppsdel' AND kode = 'rygg';
UPDATE public.type_kode SET sortering = 1100 WHERE type_navn = 'skadetKroppsdel' AND kode = 'seteEllerBekkenEllerHalebein';
UPDATE public.type_kode SET sortering = 1200 WHERE type_navn = 'skadetKroppsdel' AND kode = 'ribbenOgSkulderblad';
UPDATE public.type_kode SET sortering = 1300 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreSkulder';
UPDATE public.type_kode SET sortering = 1400 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreSkulder';
UPDATE public.type_kode SET sortering = 1500 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreArmOgAlbue';
UPDATE public.type_kode SET sortering = 1600 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreArmOgAlbue';
UPDATE public.type_kode SET sortering = 1700 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreHaandledd';
UPDATE public.type_kode SET sortering = 1800 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreHaandledd';
UPDATE public.type_kode SET sortering = 1900 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreHaand';
UPDATE public.type_kode SET sortering = 2000 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreHaand';
UPDATE public.type_kode SET sortering = 2100 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreFingre';
UPDATE public.type_kode SET sortering = 2200 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreFingre';
UPDATE public.type_kode SET sortering = 2300 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreHofte';
UPDATE public.type_kode SET sortering = 2400 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreHofte';
UPDATE public.type_kode SET sortering = 2500 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreBenOgKne';
UPDATE public.type_kode SET sortering = 2600 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreBenOgKne';
UPDATE public.type_kode SET sortering = 2700 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreAnkel';
UPDATE public.type_kode SET sortering = 2800 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreAnkel';
UPDATE public.type_kode SET sortering = 2900 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreFot';
UPDATE public.type_kode SET sortering = 3000 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreFot';
UPDATE public.type_kode SET sortering = 3100 WHERE type_navn = 'skadetKroppsdel' AND kode = 'venstreTaer';
UPDATE public.type_kode SET sortering = 3200 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hoeyreTaer';
UPDATE public.type_kode SET sortering = 3300 WHERE type_navn = 'skadetKroppsdel' AND kode = 'brystkasseOgLunger';
UPDATE public.type_kode SET sortering = 3400 WHERE type_navn = 'skadetKroppsdel' AND kode = 'hjerte';
UPDATE public.type_kode SET sortering = 3500 WHERE type_navn = 'skadetKroppsdel' AND kode = 'spiseroer';
UPDATE public.type_kode SET sortering = 3600 WHERE type_navn = 'skadetKroppsdel' AND kode = 'mage';
UPDATE public.type_kode SET sortering = 3700 WHERE type_navn = 'skadetKroppsdel' AND kode = 'fordoeyelsesorgan';
UPDATE public.type_kode SET sortering = 3800 WHERE type_navn = 'skadetKroppsdel' AND kode = 'nyrerOgUrinveier';
UPDATE public.type_kode SET sortering = 3900 WHERE type_navn = 'skadetKroppsdel' AND kode = 'kjoennsorgan';
UPDATE public.type_kode SET sortering = 4000 WHERE type_navn = 'skadetKroppsdel' AND kode = 'heleKroppen';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'skadetype' AND kode = 'saarskade';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'skadetype' AND kode = 'bloetdelsskadeUtenSaar';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'skadetype' AND kode = 'forstuingOgForvridning';
UPDATE public.type_kode SET sortering = 400 WHERE type_navn = 'skadetype' AND kode = 'bruddskade';
UPDATE public.type_kode SET sortering = 500 WHERE type_navn = 'skadetype' AND kode = 'knusningsskade';
UPDATE public.type_kode SET sortering = 600 WHERE type_navn = 'skadetype' AND kode = 'tapAvLegemsdel';
UPDATE public.type_kode SET sortering = 700 WHERE type_navn = 'skadetype' AND kode = 'indreSkade';
UPDATE public.type_kode SET sortering = 800 WHERE type_navn = 'skadetype' AND kode = 'kuldeskade';
UPDATE public.type_kode SET sortering = 900 WHERE type_navn = 'skadetype' AND kode = 'varmeskade';
UPDATE public.type_kode SET sortering = 1000 WHERE type_navn = 'skadetype' AND kode = 'etsing';
UPDATE public.type_kode SET sortering = 1100 WHERE type_navn = 'skadetype' AND kode = 'akuttForgiftning';
UPDATE public.type_kode SET sortering = 1200 WHERE type_navn = 'skadetype' AND kode = 'oeyeskade';
UPDATE public.type_kode SET sortering = 1300 WHERE type_navn = 'skadetype' AND kode = 'akustiskSjokk';
UPDATE public.type_kode SET sortering = 1400 WHERE type_navn = 'skadetype' AND kode = 'sjokkEtterAggresjon';
UPDATE public.type_kode SET sortering = 1500 WHERE type_navn = 'skadetype' AND kode = 'traumatiskSjokk';
UPDATE public.type_kode SET sortering = 1600 WHERE type_navn = 'skadetype' AND kode = 'psykiskeEttervirkninger';
UPDATE public.type_kode SET sortering = 1700 WHERE type_navn = 'skadetype' AND kode = 'infeksjon';
UPDATE public.type_kode SET sortering = 1800 WHERE type_navn = 'skadetype' AND kode = 'nedsattAllmenntilstand';
UPDATE public.type_kode SET sortering = 100000 WHERE type_navn = 'skadetype' AND kode = 'alternativenePasserIkke';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'tidsrom' AND kode = 'iAvtaltArbeidstid';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'tidsrom' AND kode = 'iUndervisningstid';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'tidsrom' AND kode = 'utenforArbeidstid';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'tidsrom' AND kode = 'utenforUndervisningstid';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'tidsrom' AND kode = 'fritidEllerPrivatAktivitet';
UPDATE public.type_kode SET sortering = 400 WHERE type_navn = 'tidsrom' AND kode = 'hvilendeVakt';
UPDATE public.type_kode SET sortering = 500 WHERE type_navn = 'tidsrom' AND kode = 'underFullSykemelding';
UPDATE public.type_kode SET sortering = 600 WHERE type_navn = 'tidsrom' AND kode = 'underPermisjon';
UPDATE public.type_kode SET sortering = 700 WHERE type_navn = 'tidsrom' AND kode = 'underFrivilligArbeid';
UPDATE public.type_kode SET sortering = 800 WHERE type_navn = 'tidsrom' AND kode = 'underRedningsarbeidEllerVaktholdEllerRedningsoevelse';
UPDATE public.type_kode SET sortering = 100000 WHERE type_navn = 'tidsrom' AND kode = 'alternativenePasserIkke';
UPDATE public.type_kode SET sortering = 100 WHERE type_navn = 'typeArbeidsplass' AND kode = 'industriellVirksomhet';
UPDATE public.type_kode SET sortering = 200 WHERE type_navn = 'typeArbeidsplass' AND kode = 'anleggsomraadeEllerByggeplassEllerStenbruddEllerGruve';
UPDATE public.type_kode SET sortering = 300 WHERE type_navn = 'typeArbeidsplass' AND kode = 'iLuftenOverBakkenivaaPaaTakEllerTerrasserEllerHeis';
UPDATE public.type_kode SET sortering = 400 WHERE type_navn = 'typeArbeidsplass' AND kode = 'underJordoverflatenIGroeftEllerTunellEllerGruve';
UPDATE public.type_kode SET sortering = 500 WHERE type_navn = 'typeArbeidsplass' AND kode = 'paaEllerOverVann';
UPDATE public.type_kode SET sortering = 600 WHERE type_navn = 'typeArbeidsplass' AND kode = 'helseinstitusjoner';
UPDATE public.type_kode SET sortering = 700 WHERE type_navn = 'typeArbeidsplass' AND kode = 'kontorEllerKonferanseEllerBibliotek';
UPDATE public.type_kode SET sortering = 800 WHERE type_navn = 'typeArbeidsplass' AND kode = 'undervisningEllerBarnehage';
UPDATE public.type_kode SET sortering = 900 WHERE type_navn = 'typeArbeidsplass' AND kode = 'handel';
UPDATE public.type_kode SET sortering = 1000 WHERE type_navn = 'typeArbeidsplass' AND kode = 'restauranterEllerOvernattingssted';
UPDATE public.type_kode SET sortering = 1100 WHERE type_navn = 'typeArbeidsplass' AND kode = 'museumEllerFornoeyelsespark';
UPDATE public.type_kode SET sortering = 1200 WHERE type_navn = 'typeArbeidsplass' AND kode = 'idrettsomraade';
UPDATE public.type_kode SET sortering = 1300 WHERE type_navn = 'typeArbeidsplass' AND kode = 'offentligSted';
UPDATE public.type_kode SET sortering = 1400 WHERE type_navn = 'typeArbeidsplass' AND kode = 'offentligeTransportmidler';
UPDATE public.type_kode SET sortering = 1500 WHERE type_navn = 'typeArbeidsplass' AND kode = 'iLuftenIFlyEllerHelikopter';
UPDATE public.type_kode SET sortering = 1600 WHERE type_navn = 'typeArbeidsplass' AND kode = 'iHoeytrykksomgivelserEllerDykkingEllerDykkerkammer';
UPDATE public.type_kode SET sortering = 1700 WHERE type_navn = 'typeArbeidsplass' AND kode = 'fiskeoppdrett';
UPDATE public.type_kode SET sortering = 1800 WHERE type_navn = 'typeArbeidsplass' AND kode = 'jordbrukEllerAvlAvDyrEllerSkogbruk';
UPDATE public.type_kode SET sortering = 1900 WHERE type_navn = 'typeArbeidsplass' AND kode = 'privateHjem';
UPDATE public.type_kode SET sortering = 100000 WHERE type_navn = 'typeArbeidsplass' AND kode = 'alternativenePasserIkke';
