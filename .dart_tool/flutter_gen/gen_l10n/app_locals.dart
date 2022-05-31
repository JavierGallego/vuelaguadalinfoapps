
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_locals_ar.dart';
import 'app_locals_bn.dart';
import 'app_locals_cs.dart';
import 'app_locals_de.dart';
import 'app_locals_en.dart';
import 'app_locals_es.dart';
import 'app_locals_fa.dart';
import 'app_locals_fr.dart';
import 'app_locals_it.dart';
import 'app_locals_ka.dart';
import 'app_locals_ko.dart';
import 'app_locals_nb.dart';
import 'app_locals_nl.dart';
import 'app_locals_pl.dart';
import 'app_locals_pt.dart';
import 'app_locals_ru.dart';
import 'app_locals_se.dart';
import 'app_locals_si.dart';
import 'app_locals_te.dart';
import 'app_locals_zh.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations returned
/// by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'gen_l10n/app_locals.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('cs'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('it'),
    Locale('ka'),
    Locale('ko'),
    Locale('nb'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('se'),
    Locale('si'),
    Locale('te'),
    Locale('zh')
  ];

  /// No description provided for @preferences.
  ///
  /// In es, this message translates to:
  /// **'Preferencias'**
  String get preferences;

  /// No description provided for @aboutApp.
  ///
  /// In es, this message translates to:
  /// **'Acerca de la App'**
  String get aboutApp;

  /// No description provided for @appDescription.
  ///
  /// In es, this message translates to:
  /// **'Simplificando la forma de navegar, instala y actualiza sus Appimages.'**
  String get appDescription;

  /// No description provided for @grid.
  ///
  /// In es, this message translates to:
  /// **'Cuadrícula'**
  String get grid;

  /// No description provided for @list.
  ///
  /// In es, this message translates to:
  /// **'Lista'**
  String get list;

  /// No description provided for @explore.
  ///
  /// In es, this message translates to:
  /// **'Explorar'**
  String get explore;

  /// No description provided for @browse.
  ///
  /// In es, this message translates to:
  /// **'Navegar'**
  String get browse;

  /// No description provided for @installed.
  ///
  /// In es, this message translates to:
  /// **'Instalado'**
  String get installed;

  /// No description provided for @download.
  ///
  /// In es, this message translates to:
  /// **'Descargar'**
  String get download;

  /// No description provided for @downloads.
  ///
  /// In es, this message translates to:
  /// **'Descargas'**
  String get downloads;

  /// No description provided for @downloadCompleted.
  ///
  /// In es, this message translates to:
  /// **'Descarga completada'**
  String get downloadCompleted;

  /// No description provided for @hasBeenDownloadedSuccessfully.
  ///
  /// In es, this message translates to:
  /// **'se ha descargado con éxito'**
  String get hasBeenDownloadedSuccessfully;

  /// No description provided for @noDescriptionFound.
  ///
  /// In es, this message translates to:
  /// **'Descripción no encontrada'**
  String get noDescriptionFound;

  /// No description provided for @license.
  ///
  /// In es, this message translates to:
  /// **'Licencia'**
  String get license;

  /// No description provided for @authors.
  ///
  /// In es, this message translates to:
  /// **'Autores'**
  String get authors;

  /// No description provided for @translators.
  ///
  /// In es, this message translates to:
  /// **'Traducción'**
  String get translators;

  /// No description provided for @credits.
  ///
  /// In es, this message translates to:
  /// **'Créditos'**
  String get credits;

  /// No description provided for @notAvailable.
  ///
  /// In es, this message translates to:
  /// **'N.D.'**
  String get notAvailable;

  /// No description provided for @close.
  ///
  /// In es, this message translates to:
  /// **'Cerrar'**
  String get close;

  /// No description provided for @cantConnect.
  ///
  /// In es, this message translates to:
  /// **'No se puede conectar'**
  String get cantConnect;

  /// No description provided for @youNeedInternetConnectionToUse.
  ///
  /// In es, this message translates to:
  /// **'Para usarlo necesita conectarse a internet'**
  String get youNeedInternetConnectionToUse;

  /// No description provided for @retry.
  ///
  /// In es, this message translates to:
  /// **'Reintentar'**
  String get retry;

  /// No description provided for @fetchingSoftwares.
  ///
  /// In es, this message translates to:
  /// **'Búsqueda de aplicaciones'**
  String get fetchingSoftwares;

  /// No description provided for @featuredApps.
  ///
  /// In es, this message translates to:
  /// **'Aplicaciones destacadas'**
  String get featuredApps;

  /// No description provided for @seeAll.
  ///
  /// In es, this message translates to:
  /// **'Ver todo'**
  String get seeAll;

  /// No description provided for @startingDownload.
  ///
  /// In es, this message translates to:
  /// **'Iniciar descarga'**
  String get startingDownload;

  /// No description provided for @cancelled.
  ///
  /// In es, this message translates to:
  /// **'Cancelada'**
  String get cancelled;

  /// No description provided for @noAppImageInThisRelease.
  ///
  /// In es, this message translates to:
  /// **'No se ha encontrado AppImage para esta versión'**
  String get noAppImageInThisRelease;

  /// No description provided for @noSearchResult.
  ///
  /// In es, this message translates to:
  /// **'Sin resultados,\nprueba a cambiar las palabras de búsqueda.'**
  String get noSearchResult;

  /// No description provided for @downloadPath.
  ///
  /// In es, this message translates to:
  /// **'Ruta de descarga'**
  String get downloadPath;

  /// No description provided for @forceDarkTheme.
  ///
  /// In es, this message translates to:
  /// **'Forzar tema oscuro'**
  String get forceDarkTheme;

  /// No description provided for @portableHome.
  ///
  /// In es, this message translates to:
  /// **'Portable Home'**
  String get portableHome;

  /// No description provided for @portableConfig.
  ///
  /// In es, this message translates to:
  /// **'Portable Config'**
  String get portableConfig;

  /// No description provided for @restoreDefaults.
  ///
  /// In es, this message translates to:
  /// **'Restaurar valores predeterminados'**
  String get restoreDefaults;

  /// No description provided for @browseFolder.
  ///
  /// In es, this message translates to:
  /// **'Examinar...'**
  String get browseFolder;

  /// No description provided for @chooseFolder.
  ///
  /// In es, this message translates to:
  /// **'Seleccione una carpeta'**
  String get chooseFolder;

  /// No description provided for @multimedia.
  ///
  /// In es, this message translates to:
  /// **'Multimedia'**
  String get multimedia;

  /// No description provided for @video.
  ///
  /// In es, this message translates to:
  /// **'Vídeo'**
  String get video;

  /// No description provided for @audio.
  ///
  /// In es, this message translates to:
  /// **'Audio'**
  String get audio;

  /// No description provided for @science.
  ///
  /// In es, this message translates to:
  /// **'Ciencia'**
  String get science;

  /// No description provided for @system.
  ///
  /// In es, this message translates to:
  /// **'Sistema'**
  String get system;

  /// No description provided for @utility.
  ///
  /// In es, this message translates to:
  /// **'Utilidades'**
  String get utility;

  /// No description provided for @network.
  ///
  /// In es, this message translates to:
  /// **'Red'**
  String get network;

  /// No description provided for @development.
  ///
  /// In es, this message translates to:
  /// **'Desarrollo'**
  String get development;

  /// No description provided for @education.
  ///
  /// In es, this message translates to:
  /// **'Educacion'**
  String get education;

  /// No description provided for @graphics.
  ///
  /// In es, this message translates to:
  /// **'Gráficos'**
  String get graphics;

  /// No description provided for @office.
  ///
  /// In es, this message translates to:
  /// **'Oficina'**
  String get office;

  /// No description provided for @game.
  ///
  /// In es, this message translates to:
  /// **'Juego'**
  String get game;

  /// No description provided for @finance.
  ///
  /// In es, this message translates to:
  /// **'Finanzas'**
  String get finance;

  /// No description provided for @others.
  ///
  /// In es, this message translates to:
  /// **'Otros'**
  String get others;

  /// No description provided for @integrate.
  ///
  /// In es, this message translates to:
  /// **'Integrar'**
  String get integrate;

  /// No description provided for @disintegrate.
  ///
  /// In es, this message translates to:
  /// **'Desintegrar'**
  String get disintegrate;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'bn', 'cs', 'de', 'en', 'es', 'fa', 'fr', 'it', 'ka', 'ko', 'nb', 'nl', 'pl', 'pt', 'ru', 'se', 'si', 'te', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'bn': return AppLocalizationsBn();
    case 'cs': return AppLocalizationsCs();
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fa': return AppLocalizationsFa();
    case 'fr': return AppLocalizationsFr();
    case 'it': return AppLocalizationsIt();
    case 'ka': return AppLocalizationsKa();
    case 'ko': return AppLocalizationsKo();
    case 'nb': return AppLocalizationsNb();
    case 'nl': return AppLocalizationsNl();
    case 'pl': return AppLocalizationsPl();
    case 'pt': return AppLocalizationsPt();
    case 'ru': return AppLocalizationsRu();
    case 'se': return AppLocalizationsSe();
    case 'si': return AppLocalizationsSi();
    case 'te': return AppLocalizationsTe();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
