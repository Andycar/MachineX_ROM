.class public Lcom/sec/android/app/CscFeature;
.super Ljava/lang/Object;
.source "CscFeature.java"


# static fields
.field public static final Bool_NoTag:Z = false

.field private static final FEATURE_XML:Ljava/lang/String; = "/system/csc/feature.xml"

.field public static final Int_NoTag:I = 0x0

.field private static final MPS_FEATURE_XML:Ljava/lang/String; = "/system/csc/others.xml"

.field public static final Str_NoTag:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "CscFeature"

.field private static sInstance:Lcom/sec/android/app/CscFeature;


# instance fields
.field private mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 60
    :try_start_a
    invoke-direct {p0}, Lcom/sec/android/app/CscFeature;->loadFeatureFile()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 64
    :goto_d
    return-void

    .line 61
    :catch_e
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CscFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public static getInstance()Lcom/sec/android/app/CscFeature;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Lcom/sec/android/app/CscFeature;

    invoke-direct {v0}, Lcom/sec/android/app/CscFeature;-><init>()V

    sput-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    .line 75
    :cond_b
    sget-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    return-object v0
.end method

.method private loadFeatureFile()V
    .registers 15

    .prologue
    .line 203
    const/4 v9, 0x0

    .line 204
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .line 205
    .local v7, "fi":Ljava/io/InputStream;
    const/4 v3, -0x1

    .line 206
    .local v3, "eventType":I
    const/4 v0, 0x0

    .line 207
    .local v0, "TagName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 209
    .local v1, "TagValue":Ljava/lang/String;
    :try_start_5
    iget-object v10, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    .line 211
    new-instance v6, Ljava/io/File;

    const-string v10, "/system/csc/feature.xml"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v6, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_4a

    .line 213
    :cond_21
    new-instance v6, Ljava/io/File;

    .end local v6    # "featureXmlFile":Ljava/io/File;
    const-string v10, "/system/csc/others.xml"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_38

    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_31} :catch_12d
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_31} :catch_12b
    .catchall {:try_start_5 .. :try_end_31} :catchall_129

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_4a

    .line 269
    :cond_38
    if-eqz v7, :cond_3e

    .line 270
    :try_start_3a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3f

    .line 271
    const/4 v7, 0x0

    .line 277
    .end local v6    # "featureXmlFile":Ljava/io/File;
    :cond_3e
    :goto_3e
    return-void

    .line 273
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    :catch_3f
    move-exception v2

    .line 274
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 219
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4a
    :try_start_4a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 220
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 221
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 222
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_5b} :catch_12d
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_5b} :catch_12b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_129

    .line 223
    .end local v7    # "fi":Ljava/io/InputStream;
    .local v8, "fi":Ljava/io/InputStream;
    const/4 v10, 0x0

    :try_start_5c
    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 224
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 226
    :goto_63
    const/4 v10, 0x1

    if-eq v3, v10, :cond_e3

    .line 227
    const/4 v10, 0x2

    if-ne v3, v10, :cond_72

    .line 228
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_6c} :catch_95
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_6c} :catch_bc
    .catchall {:try_start_5c .. :try_end_6c} :catchall_da

    move-result-object v0

    .line 251
    :cond_6d
    :goto_6d
    :try_start_6d
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_cf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_70} :catch_95
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_70} :catch_bc
    .catchall {:try_start_6d .. :try_end_70} :catchall_da

    move-result v3

    goto :goto_63

    .line 230
    :cond_72
    const/4 v10, 0x4

    if-ne v3, v10, :cond_6d

    .line 231
    :try_start_75
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 232
    if-eqz v0, :cond_6d

    if-eqz v1, :cond_6d

    .line 233
    iget-object v10, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_82
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_82} :catch_95
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_82} :catch_bc
    .catchall {:try_start_75 .. :try_end_82} :catchall_da

    move-result v10

    if-eqz v10, :cond_a7

    .line 235
    :try_start_85
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_85 .. :try_end_88} :catch_95
    .catch Ljava/io/FileNotFoundException; {:try_start_85 .. :try_end_88} :catch_bc
    .catchall {:try_start_85 .. :try_end_88} :catchall_da

    move-result v3

    goto :goto_63

    .line 236
    :catch_8a
    move-exception v2

    .line 237
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_8b
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_94} :catch_95
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_94} :catch_bc
    .catchall {:try_start_8b .. :try_end_94} :catchall_da

    goto :goto_63

    .line 263
    .end local v2    # "e":Ljava/io/IOException;
    :catch_95
    move-exception v2

    move-object v7, v8

    .line 264
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_97
    :try_start_97
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_129

    .line 269
    if-eqz v7, :cond_3e

    .line 270
    :try_start_a2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_106

    .line 271
    const/4 v7, 0x0

    goto :goto_3e

    .line 242
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_a7
    :try_start_a7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-object v10, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b0} :catch_b1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a7 .. :try_end_b0} :catch_95
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_b0} :catch_bc
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_da

    goto :goto_6d

    .line 244
    :catch_b1
    move-exception v4

    .line 245
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_b2
    const-string v10, "CscFeature"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b2 .. :try_end_bb} :catch_95
    .catch Ljava/io/FileNotFoundException; {:try_start_b2 .. :try_end_bb} :catch_bc
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_da

    goto :goto_6d

    .line 265
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_bc
    move-exception v2

    move-object v7, v8

    .line 266
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_be
    :try_start_be
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_be .. :try_end_c7} :catchall_129

    .line 269
    if-eqz v7, :cond_3e

    .line 270
    :try_start_c9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_112

    .line 271
    const/4 v7, 0x0

    goto/16 :goto_3e

    .line 252
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :catch_cf
    move-exception v2

    .line 253
    .local v2, "e":Ljava/io/IOException;
    :try_start_d0
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d0 .. :try_end_d9} :catch_95
    .catch Ljava/io/FileNotFoundException; {:try_start_d0 .. :try_end_d9} :catch_bc
    .catchall {:try_start_d0 .. :try_end_d9} :catchall_da

    goto :goto_63

    .line 268
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_da
    move-exception v10

    move-object v7, v8

    .line 269
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_dc
    if-eqz v7, :cond_e2

    .line 270
    :try_start_de
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_11e

    .line 271
    const/4 v7, 0x0

    .line 275
    :cond_e2
    :goto_e2
    throw v10

    .line 258
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_e3
    :try_start_e3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e3 .. :try_end_e6} :catch_95
    .catch Ljava/io/FileNotFoundException; {:try_start_e3 .. :try_end_e6} :catch_bc
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_da

    .line 269
    :goto_e6
    if-eqz v8, :cond_130

    .line 270
    :try_start_e8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_f9

    .line 271
    const/4 v7, 0x0

    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_3e

    .line 259
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :catch_ee
    move-exception v2

    .line 260
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_ef
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ef .. :try_end_f8} :catch_95
    .catch Ljava/io/FileNotFoundException; {:try_start_ef .. :try_end_f8} :catch_bc
    .catchall {:try_start_ef .. :try_end_f8} :catchall_da

    goto :goto_e6

    .line 273
    .end local v2    # "e":Ljava/io/IOException;
    :catch_f9
    move-exception v2

    .line 274
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 276
    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_3e

    .line 273
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_106
    move-exception v2

    .line 274
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 273
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_112
    move-exception v2

    .line 274
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 273
    .end local v2    # "e":Ljava/io/IOException;
    :catch_11e
    move-exception v2

    .line 274
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "CscFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    .line 268
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_129
    move-exception v10

    goto :goto_dc

    .line 265
    :catch_12b
    move-exception v2

    goto :goto_be

    .line 263
    :catch_12d
    move-exception v2

    goto/16 :goto_97

    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_130
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_3e
.end method


# virtual methods
.method public getEnableStatus(Ljava/lang/String;)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 87
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    move-result v1

    .line 93
    :goto_15
    return v1

    :cond_16
    move v1, v2

    .line 90
    goto :goto_15

    .line 92
    :catch_18
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 93
    goto :goto_15
.end method

.method public getEnableStatus(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result p2

    .line 114
    .end local p2    # "defaultValue":Z
    :cond_14
    :goto_14
    return p2

    .line 113
    .restart local p2    # "defaultValue":Z
    :catch_15
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 169
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    move-result v1

    .line 175
    :goto_15
    return v1

    :cond_16
    move v1, v2

    .line 172
    goto :goto_15

    .line 174
    :catch_18
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 175
    goto :goto_15
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result p2

    .line 196
    .end local p2    # "defaultValue":I
    :cond_14
    :goto_14
    return p2

    .line 195
    .restart local p2    # "defaultValue":I
    :catch_15
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    :goto_10
    return-object v1

    .line 131
    :cond_11
    const-string v1, ""
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_10

    .line 133
    :catch_14
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_10
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-object p2, v1

    .line 155
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_11
    :goto_11
    return-object p2

    .line 154
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_12
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_11
.end method
