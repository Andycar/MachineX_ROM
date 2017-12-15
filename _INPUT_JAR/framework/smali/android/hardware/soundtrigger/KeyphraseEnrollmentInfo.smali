.class public Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
.super Ljava/lang/Object;
.source "KeyphraseEnrollmentInfo.java"


# static fields
.field public static final ACTION_MANAGE_VOICE_KEYPHRASES:Ljava/lang/String; = "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

.field public static final EXTRA_VOICE_KEYPHRASE_ACTION:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_ACTION"

.field public static final EXTRA_VOICE_KEYPHRASE_HINT_TEXT:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_HINT_TEXT"

.field public static final EXTRA_VOICE_KEYPHRASE_LOCALE:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_LOCALE"

.field private static final TAG:Ljava/lang/String; = "KeyphraseEnrollmentInfo"

.field private static final VOICE_KEYPHRASE_META_DATA:Ljava/lang/String; = "android.voice_enrollment"


# instance fields
.field private mEnrollmentPackage:Ljava/lang/String;

.field private mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private mParseError:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 18
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v14, 0x10000

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 95
    .local v11, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v11, :cond_1a

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_21

    .line 97
    :cond_1a
    const-string v13, "No enrollment application found"

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 175
    :cond_20
    :goto_20
    return-void

    .line 101
    :cond_21
    const/4 v5, 0x0

    .line 102
    .local v5, "found":Z
    const/4 v1, 0x0

    .line 103
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_96

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 105
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_33
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v14, 0x80

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 107
    iget v13, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x40000000    # 2.0f

    and-int/2addr v13, v14

    if-nez v13, :cond_6a

    .line 110
    const-string v13, "KeyphraseEnrollmentInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "is not a privileged system app"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_60} :catch_61

    goto :goto_27

    .line 122
    :catch_61
    move-exception v4

    .line 123
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "KeyphraseEnrollmentInfo"

    const-string v14, "error parsing voice enrollment meta-data"

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 113
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6a
    :try_start_6a
    const-string v13, "android.permission.MANAGE_VOICE_KEYPHRASES"

    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8f

    .line 116
    const-string v13, "KeyphraseEnrollmentInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " does not require MANAGE_VOICE_KEYPHRASES"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 119
    :cond_8f
    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mEnrollmentPackage:Ljava/lang/String;
    :try_end_95
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_95} :catch_61

    .line 120
    const/4 v5, 0x1

    .line 127
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_96
    if-nez v5, :cond_a5

    .line 128
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 129
    const-string v13, "No suitable enrollment application found"

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    goto/16 :goto_20

    .line 133
    :cond_a5
    const/4 v8, 0x0

    .line 135
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_a6
    const-string v13, "android.voice_enrollment"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v13}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 136
    if-nez v8, :cond_d0

    .line 137
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No android.voice_enrollment meta-data for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;
    :try_end_c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a6 .. :try_end_c9} :catch_113
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_c9} :catch_139
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a6 .. :try_end_c9} :catch_15f
    .catchall {:try_start_a6 .. :try_end_c9} :catchall_185

    .line 173
    if-eqz v8, :cond_20

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_20

    .line 142
    :cond_d0
    :try_start_d0
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 143
    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 147
    .local v3, "attrs":Landroid/util/AttributeSet;
    :cond_da
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_e4

    const/4 v13, 0x2

    if-ne v12, v13, :cond_da

    .line 150
    :cond_e4
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v13, "voice-enrollment-application"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_fe

    .line 152
    const-string v13, "Meta-data does not start with voice-enrollment-application tag"

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;
    :try_end_f7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d0 .. :try_end_f7} :catch_113
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_f7} :catch_139
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d0 .. :try_end_f7} :catch_15f
    .catchall {:try_start_d0 .. :try_end_f7} :catchall_185

    .line 173
    if-eqz v8, :cond_20

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_20

    .line 156
    :cond_fe
    :try_start_fe
    sget-object v13, Lcom/android/internal/R$styleable;->VoiceEnrollmentApplication:[I

    invoke-virtual {v9, v3, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 158
    .local v2, "array":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->initializeKeyphrasesFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 159
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_10c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fe .. :try_end_10c} :catch_113
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_10c} :catch_139
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fe .. :try_end_10c} :catch_15f
    .catchall {:try_start_fe .. :try_end_10c} :catchall_185

    .line 173
    if-eqz v8, :cond_20

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_20

    .line 160
    .end local v2    # "array":Landroid/content/res/TypedArray;
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v12    # "type":I
    :catch_113
    move-exception v4

    .line 161
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_114
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error parsing keyphrase enrollment meta-data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 162
    const-string v13, "KeyphraseEnrollmentInfo"

    const-string v14, "error parsing keyphrase enrollment meta-data"

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_132
    .catchall {:try_start_114 .. :try_end_132} :catchall_185

    .line 173
    if-eqz v8, :cond_20

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_20

    .line 164
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_139
    move-exception v4

    .line 165
    .local v4, "e":Ljava/io/IOException;
    :try_start_13a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error parsing keyphrase enrollment meta-data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 166
    const-string v13, "KeyphraseEnrollmentInfo"

    const-string v14, "error parsing keyphrase enrollment meta-data"

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_158
    .catchall {:try_start_13a .. :try_end_158} :catchall_185

    .line 173
    if-eqz v8, :cond_20

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_20

    .line 168
    .end local v4    # "e":Ljava/io/IOException;
    :catch_15f
    move-exception v4

    .line 169
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_160
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error parsing keyphrase enrollment meta-data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 170
    const-string v13, "KeyphraseEnrollmentInfo"

    const-string v14, "error parsing keyphrase enrollment meta-data"

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17e
    .catchall {:try_start_160 .. :try_end_17e} :catchall_185

    .line 173
    if-eqz v8, :cond_20

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_20

    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_185
    move-exception v13

    if-eqz v8, :cond_18b

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_18b
    throw v13
.end method

.method private initializeKeyphrasesFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 14
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 179
    invoke-virtual {p1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 181
    .local v5, "searchKeyphraseId":I
    if-gtz v5, :cond_15

    .line 182
    const-string v8, "No valid searchKeyphraseId specified in meta-data"

    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 183
    const-string v8, "KeyphraseEnrollmentInfo"

    iget-object v9, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_14
    return-void

    .line 188
    :cond_15
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "searchKeyphrase":Ljava/lang/String;
    if-nez v4, :cond_27

    .line 191
    const-string v8, "No valid searchKeyphrase specified in meta-data"

    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 192
    const-string v8, "KeyphraseEnrollmentInfo"

    iget-object v9, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 197
    :cond_27
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, "searchKeyphraseSupportedLocales":Ljava/lang/String;
    if-nez v6, :cond_3a

    .line 201
    const-string v8, "No valid searchKeyphraseSupportedLocales specified in meta-data"

    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 202
    const-string v8, "KeyphraseEnrollmentInfo"

    iget-object v9, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 205
    :cond_3a
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 207
    .local v2, "locales":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/util/Locale;>;"
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_68

    .line 209
    :try_start_45
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "supportedLocalesDelimited":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4c
    array-length v8, v7

    if-ge v1, v8, :cond_68

    .line 211
    aget-object v8, v7, v1

    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_58} :catch_5b

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 213
    .end local v1    # "i":I
    .end local v7    # "supportedLocalesDelimited":[Ljava/lang/String;
    :catch_5b
    move-exception v0

    .line 217
    .local v0, "ex":Ljava/lang/Exception;
    const-string v8, "Error reading searchKeyphraseSupportedLocales from meta-data"

    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 218
    const-string v8, "KeyphraseEnrollmentInfo"

    iget-object v9, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 224
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_68
    const/4 v8, 0x3

    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 226
    .local v3, "recognitionModes":I
    if-gez v3, :cond_7b

    .line 227
    const-string v8, "No valid searchKeyphraseRecognitionFlags specified in meta-data"

    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 228
    const-string v8, "KeyphraseEnrollmentInfo"

    iget-object v9, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 231
    :cond_7b
    new-array v8, v11, [Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 232
    iget-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    new-instance v9, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-direct {v9, v5, v4, v2, v3}, Landroid/hardware/soundtrigger/KeyphraseMetadata;-><init>(ILjava/lang/String;Landroid/util/ArraySet;I)V

    aput-object v9, v8, v10

    goto :goto_14
.end method


# virtual methods
.method public getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 10
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x0

    .line 289
    iget-object v5, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    array-length v5, v5

    if-nez v5, :cond_13

    .line 290
    :cond_a
    const-string v5, "KeyphraseEnrollmentInfo"

    const-string v6, "Enrollment application doesn\'t support keyphrases"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 302
    :cond_12
    :goto_12
    return-object v2

    .line 293
    :cond_13
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .local v0, "arr$":[Landroid/hardware/soundtrigger/KeyphraseMetadata;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_17
    if-ge v1, v3, :cond_2a

    aget-object v2, v0, v1

    .line 296
    .local v2, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportsPhrase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v2, p2}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportsLocale(Ljava/util/Locale;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 293
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 301
    .end local v2    # "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :cond_2a
    const-string v5, "KeyphraseEnrollmentInfo"

    const-string v6, "Enrollment application doesn\'t support the given keyphrase/locale"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 302
    goto :goto_12
.end method

.method public getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;
    .registers 8
    .param p1, "action"    # I
    .param p2, "keyphrase"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mEnrollmentPackage:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mEnrollmentPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 263
    :cond_d
    const-string v1, "KeyphraseEnrollmentInfo"

    const-string v2, "No enrollment application exists"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_14
    :goto_14
    return-object v0

    .line 267
    :cond_15
    invoke-virtual {p0, p2, p3}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 268
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mEnrollmentPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.intent.extra.VOICE_KEYPHRASE_HINT_TEXT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.intent.extra.VOICE_KEYPHRASE_LOCALE"

    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.intent.extra.VOICE_KEYPHRASE_ACTION"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_14
.end method

.method public getParseError()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public listKeyphraseMetadata()[Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyphraseEnrollmentInfo [Keyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EnrollmentPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mEnrollmentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ParseError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
