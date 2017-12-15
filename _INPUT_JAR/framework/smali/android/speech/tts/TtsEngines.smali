.class public Landroid/speech/tts/TtsEngines;
.super Ljava/lang/Object;
.source "TtsEngines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TtsEngines$EngineInfoComparator;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOCALE_DELIMITER_NEW:Ljava/lang/String; = "_"

.field private static final LOCALE_DELIMITER_OLD:Ljava/lang/String; = "-"

.field private static final TAG:Ljava/lang/String; = "TtsEngines"

.field private static final XML_TAG_NAME:Ljava/lang/String; = "tts-engine"

.field private static final sNormalizeCountry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNormalizeLanguage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    .line 83
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v7, "normalizeLanguage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_b
    if-ge v3, v5, :cond_20

    aget-object v4, v0, v3

    .line 86
    .local v4, "language":Ljava/lang/String;
    :try_start_f
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/util/MissingResourceException; {:try_start_f .. :try_end_1b} :catch_1e

    .line 84
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 87
    :catch_1e
    move-exception v2

    .line 88
    .local v2, "e":Ljava/util/MissingResourceException;
    goto :goto_1b

    .line 91
    .end local v2    # "e":Ljava/util/MissingResourceException;
    .end local v4    # "language":Ljava/lang/String;
    :cond_20
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    .line 93
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v6, "normalizeCountry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v5, :cond_48

    aget-object v1, v0, v3

    .line 96
    .local v1, "country":Ljava/lang/String;
    :try_start_35
    new-instance v8, Ljava/util/Locale;

    const-string v9, ""

    invoke-direct {v8, v9, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/util/MissingResourceException; {:try_start_35 .. :try_end_43} :catch_46

    .line 94
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 97
    :catch_46
    move-exception v2

    .line 98
    .restart local v2    # "e":Ljava/util/MissingResourceException;
    goto :goto_43

    .line 101
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/MissingResourceException;
    :cond_48
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method private getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .registers 7
    .param p1, "resolve"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 284
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 285
    .local v2, "service":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_31

    .line 286
    new-instance v0, Landroid/speech/tts/TextToSpeech$EngineInfo;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$EngineInfo;-><init>()V

    .line 289
    .local v0, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 290
    invoke-virtual {v2, p2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 291
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    :goto_19
    iput-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    .line 292
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getIconResource()I

    move-result v3

    iput v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->icon:I

    .line 293
    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iput v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    .line 294
    invoke-direct {p0, v2}, Landroid/speech/tts/TtsEngines;->isSystemEngine(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    .line 298
    .end local v0    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v1    # "label":Ljava/lang/CharSequence;
    :goto_2b
    return-object v0

    .line 291
    .restart local v0    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .restart local v1    # "label":Ljava/lang/CharSequence;
    :cond_2c
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    .line 298
    .end local v0    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_31
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private isSystemEngine(Landroid/content/pm/ServiceInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 183
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 184
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_c

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 7
    .param p0, "ttsLocale"    # Ljava/util/Locale;

    .prologue
    .line 452
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "language":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 454
    sget-object v4, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 455
    .local v3, "normalizedLanguage":Ljava/lang/String;
    if-eqz v3, :cond_15

    .line 456
    move-object v1, v3

    .line 460
    .end local v3    # "normalizedLanguage":Ljava/lang/String;
    :cond_15
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 462
    sget-object v4, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 463
    .local v2, "normalizedCountry":Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 464
    move-object v0, v2

    .line 467
    .end local v2    # "normalizedCountry":Ljava/lang/String;
    :cond_2a
    new-instance v4, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v0, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private static parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "prefValue"    # Ljava/lang/String;
    .param p1, "engineName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 509
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 524
    :cond_7
    :goto_7
    return-object v6

    .line 513
    :cond_8
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, "prefValues":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_11
    if-ge v2, v3, :cond_7

    aget-object v5, v0, v2

    .line 516
    .local v5, "value":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 517
    .local v1, "delimiter":I
    if-lez v1, :cond_2f

    .line 518
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 519
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 515
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method private settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 14
    .param p1, "si"    # Landroid/content/pm/ServiceInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v7, 0x0

    .line 236
    const/4 v3, 0x0

    .line 238
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2
    const-string v8, "android.speech.tts"

    invoke-virtual {p1, p2, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 239
    if-nez v3, :cond_29

    .line 240
    const-string v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No meta-data found for :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_22} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_22} :catch_b3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_22} :catch_de
    .catchall {:try_start_2 .. :try_end_22} :catchall_109

    .line 277
    if-eqz v3, :cond_27

    .line 278
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_27
    move-object v5, v7

    :cond_28
    :goto_28
    return-object v5

    .line 244
    :cond_29
    :try_start_29
    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 247
    .local v4, "res":Landroid/content/res/Resources;
    :cond_2f
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_8b

    .line 248
    const/4 v8, 0x2

    if-ne v6, v8, :cond_2f

    .line 249
    const-string/jumbo v8, "tts-engine"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_73

    .line 250
    const-string v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " uses unknown tag :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_6c} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_6c} :catch_b3
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_6c} :catch_de
    .catchall {:try_start_29 .. :try_end_6c} :catchall_109

    .line 277
    if-eqz v3, :cond_71

    .line 278
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_71
    move-object v5, v7

    goto :goto_28

    .line 255
    :cond_73
    :try_start_73
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 256
    .local v1, "attrs":Landroid/util/AttributeSet;
    sget-object v8, Lcom/android/internal/R$styleable;->TextToSpeechEngine:[I

    invoke-virtual {v4, v1, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 258
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "settings":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_85
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_85} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_85} :catch_b3
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_85} :catch_de
    .catchall {:try_start_73 .. :try_end_85} :catchall_109

    .line 277
    if-eqz v3, :cond_28

    .line 278
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_28

    .line 277
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "settings":Ljava/lang/String;
    :cond_8b
    if-eqz v3, :cond_90

    .line 278
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_90
    move-object v5, v7

    goto :goto_28

    .line 267
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v6    # "type":I
    :catch_92
    move-exception v2

    .line 268
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_93
    const-string v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not load resources for : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_93 .. :try_end_ab} :catchall_109

    .line 277
    if-eqz v3, :cond_b0

    .line 278
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b0
    move-object v5, v7

    goto/16 :goto_28

    .line 270
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_b3
    move-exception v2

    .line 271
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b4
    const-string v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catchall {:try_start_b4 .. :try_end_d6} :catchall_109

    .line 277
    if-eqz v3, :cond_db

    .line 278
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_db
    move-object v5, v7

    goto/16 :goto_28

    .line 273
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_de
    move-exception v2

    .line 274
    .local v2, "e":Ljava/io/IOException;
    :try_start_df
    const-string v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catchall {:try_start_df .. :try_end_101} :catchall_109

    .line 277
    if-eqz v3, :cond_106

    .line 278
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_106
    move-object v5, v7

    goto/16 :goto_28

    .line 277
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_109
    move-exception v7

    if-eqz v3, :cond_10f

    .line 278
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_10f
    throw v7
.end method

.method public static toOldLocaleStringFormat(Ljava/util/Locale;)[Ljava/lang/String;
    .registers 9
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 484
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    .line 490
    .local v1, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_13
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 491
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 492
    const/4 v2, 0x2

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_27
    .catch Ljava/util/MissingResourceException; {:try_start_13 .. :try_end_27} :catch_28

    .line 498
    .end local v1    # "ret":[Ljava/lang/String;
    :goto_27
    return-object v1

    .line 495
    .restart local v1    # "ret":[Ljava/lang/String;
    :catch_28
    move-exception v0

    .line 498
    .local v0, "e":Ljava/util/MissingResourceException;
    new-array v1, v7, [Ljava/lang/String;

    .end local v1    # "ret":[Ljava/lang/String;
    const-string v2, "eng"

    aput-object v2, v1, v4

    const-string v2, "USA"

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    goto :goto_27
.end method

.method private updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "list"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x3a

    .line 557
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v6, "newPrefList":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 560
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_1a
    :goto_1a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 562
    :cond_1f
    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 564
    .local v7, "prefValues":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 566
    .local v2, "first":Z
    const/4 v3, 0x0

    .line 567
    .local v3, "found":Z
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2a
    if-ge v4, v5, :cond_60

    aget-object v8, v0, v4

    .line 568
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 569
    .local v1, "delimiter":I
    if-lez v1, :cond_4e

    .line 570
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 571
    if-eqz v2, :cond_51

    .line 572
    const/4 v2, 0x0

    .line 576
    :goto_42
    const/4 v3, 0x1

    .line 577
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_4e
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 574
    :cond_51
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 579
    :cond_55
    if-eqz v2, :cond_5c

    .line 580
    const/4 v2, 0x0

    .line 585
    :goto_58
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 582
    :cond_5c
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 590
    .end local v1    # "delimiter":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_60
    if-nez v3, :cond_1a

    .line 593
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a
.end method


# virtual methods
.method public getDefaultEngine()Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    iget-object v1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tts_default_synth"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "engine":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .end local v0    # "engine":Ljava/lang/String;
    :goto_13
    return-object v0

    .restart local v0    # "engine":Ljava/lang/String;
    :cond_14
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v3, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 142
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.TTS_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 149
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    .line 150
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3, v1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v3

    .line 153
    :goto_2a
    return-object v3

    :cond_2b
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method public getEngines()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v7, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 164
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.TTS_SERVICE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 167
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_1a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 179
    :goto_19
    return-object v1

    .line 169
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v1, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 172
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5, v4}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    .line 173
    .local v0, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    if-eqz v0, :cond_27

    .line 174
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 177
    .end local v0    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3d
    sget-object v7, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_19
.end method

.method public getHighestRankedEngineName()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz v1, :cond_1e

    .line 129
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 132
    :goto_1d
    return-object v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;
    .registers 4
    .param p1, "engineName"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 8
    .param p1, "engineName"    # Ljava/lang/String;
    .param p2, "prefValue"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {p2, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "localeString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 351
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 365
    :cond_e
    :goto_e
    return-object v1

    .line 354
    :cond_f
    const-string v2, "com.google.android.tts"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string/jumbo v2, "spa-USA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 355
    const-string/jumbo v0, "spa-MEX"

    .line 357
    :cond_23
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 358
    .local v1, "result":Ljava/util/Locale;
    if-nez v1, :cond_e

    .line 359
    const-string v2, "TtsEngines"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse locale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning en_US instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_e
.end method

.method public getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 10
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v6, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 205
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const v6, 0x10080

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 212
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_3a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3a

    .line 213
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v4, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 214
    .local v4, "service":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_3a

    .line 215
    invoke-direct {p0, v4, v2}, Landroid/speech/tts/TtsEngines;->settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "settings":Ljava/lang/String;
    if-eqz v5, :cond_3a

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    .end local v0    # "i":Landroid/content/Intent;
    .end local v4    # "service":Landroid/content/pm/ServiceInfo;
    .end local v5    # "settings":Ljava/lang/String;
    :goto_39
    return-object v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public isEngineInstalled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 192
    if-nez p1, :cond_4

    .line 196
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z
    .registers 4
    .param p1, "engineName"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;
    .registers 14
    .param p1, "localeString"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x0

    .line 391
    const-string v2, ""

    .local v2, "language":Ljava/lang/String;
    const-string v0, ""

    .local v0, "country":Ljava/lang/String;
    const-string v7, ""

    .line 392
    .local v7, "variant":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7d

    .line 393
    const-string v9, "[-_]"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, "split":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 396
    array-length v9, v6

    if-nez v9, :cond_45

    .line 397
    const-string v9, "TtsEngines"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to convert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to a valid Locale object. Only"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " separators"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 435
    .end local v6    # "split":[Ljava/lang/String;
    :goto_44
    return-object v5

    .line 401
    .restart local v6    # "split":[Ljava/lang/String;
    :cond_45
    array-length v9, v6

    if-le v9, v11, :cond_6e

    .line 402
    const-string v9, "TtsEngines"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to convert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to a valid Locale object. Too"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " many separators"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 404
    goto :goto_44

    .line 406
    :cond_6e
    array-length v9, v6

    if-lt v9, v10, :cond_78

    .line 407
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_78
    array-length v9, v6

    if-lt v9, v11, :cond_7d

    .line 410
    aget-object v7, v6, v10

    .line 415
    .end local v6    # "split":[Ljava/lang/String;
    :cond_7d
    sget-object v9, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 416
    .local v4, "normalizedLanguage":Ljava/lang/String;
    if-eqz v4, :cond_88

    .line 417
    move-object v2, v4

    .line 420
    :cond_88
    sget-object v9, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 421
    .local v3, "normalizedCountry":Ljava/lang/String;
    if-eqz v3, :cond_93

    .line 422
    move-object v0, v3

    .line 428
    :cond_93
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v0, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .local v5, "result":Ljava/util/Locale;
    :try_start_98
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 431
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_9e
    .catch Ljava/util/MissingResourceException; {:try_start_98 .. :try_end_9e} :catch_9f

    goto :goto_44

    .line 433
    :catch_9f
    move-exception v1

    .line 434
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string v9, "TtsEngines"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to convert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to a valid Locale object."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 435
    goto :goto_44
.end method

.method public declared-synchronized updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 8
    .param p1, "engineName"    # Ljava/lang/String;
    .param p2, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 534
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tts_default_locale"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "prefList":Ljava/lang/String;
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_14
    invoke-direct {p0, v1, p1, v2}, Landroid/speech/tts/TtsEngines;->updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "newPrefList":Ljava/lang/String;
    iget-object v2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tts_default_locale"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2d

    .line 548
    monitor-exit p0

    return-void

    .line 541
    .end local v0    # "newPrefList":Ljava/lang/String;
    :cond_2a
    :try_start_2a
    const-string v2, ""
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2d

    goto :goto_14

    .line 534
    .end local v1    # "prefList":Ljava/lang/String;
    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method
