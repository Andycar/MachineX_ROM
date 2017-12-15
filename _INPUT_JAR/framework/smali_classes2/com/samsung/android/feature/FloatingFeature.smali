.class public Lcom/samsung/android/feature/FloatingFeature;
.super Ljava/lang/Object;
.source "FloatingFeature.java"

# interfaces
.implements Lcom/samsung/android/feature/IFloatingFeature;


# static fields
.field public static final BOOL_NOTAG:Z = false

.field private static final FEATURE_XML:Ljava/lang/String; = "/system/etc/floating_feature.xml"

.field public static final INT_NOTAG:I = -0x1

.field public static final STR_NOTAG:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "FloatingFeature"

.field private static sInstance:Lcom/samsung/android/feature/FloatingFeature;


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
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 59
    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/feature/FloatingFeature;->loadFeatureFile()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 63
    :goto_d
    return-void

    .line 60
    :catch_e
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public static getInstance()Lcom/samsung/android/feature/FloatingFeature;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    if-nez v0, :cond_b

    .line 72
    new-instance v0, Lcom/samsung/android/feature/FloatingFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/FloatingFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    .line 74
    :cond_b
    sget-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    return-object v0
.end method

.method private loadFeatureFile()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 202
    const/4 v9, 0x0

    .line 203
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .line 204
    .local v7, "fi":Ljava/io/InputStream;
    const/4 v3, -0x1

    .line 205
    .local v3, "eventType":I
    const/4 v0, 0x0

    .line 206
    .local v0, "TagName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 208
    .local v1, "TagValue":Ljava/lang/String;
    :try_start_6
    iget-object v10, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    .line 210
    new-instance v6, Ljava/io/File;

    const-string v10, "/system/etc/floating_feature.xml"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v6, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_1b} :catch_116
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_1b} :catch_114
    .catchall {:try_start_6 .. :try_end_1b} :catchall_112

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_34

    .line 265
    :cond_22
    if-eqz v7, :cond_28

    .line 266
    :try_start_24
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_29

    .line 267
    const/4 v7, 0x0

    .line 273
    .end local v6    # "featureXmlFile":Ljava/io/File;
    :cond_28
    :goto_28
    return-void

    .line 269
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    :catch_29
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 215
    .end local v2    # "e":Ljava/io/IOException;
    :cond_34
    :try_start_34
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 216
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 217
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 218
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_45} :catch_116
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_45} :catch_114
    .catchall {:try_start_34 .. :try_end_45} :catchall_112

    .line 219
    .end local v7    # "fi":Ljava/io/InputStream;
    .local v8, "fi":Ljava/io/InputStream;
    const/4 v10, 0x0

    :try_start_46
    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 220
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 222
    :goto_4d
    if-eq v3, v14, :cond_cc

    .line 223
    const/4 v10, 0x2

    if-ne v3, v10, :cond_5b

    .line 224
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_55} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_55} :catch_a5
    .catchall {:try_start_46 .. :try_end_55} :catchall_c3

    move-result-object v0

    .line 247
    :cond_56
    :goto_56
    :try_start_56
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_59} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_59} :catch_a5
    .catchall {:try_start_56 .. :try_end_59} :catchall_c3

    move-result v3

    goto :goto_4d

    .line 226
    :cond_5b
    const/4 v10, 0x4

    if-ne v3, v10, :cond_56

    .line 227
    :try_start_5e
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 228
    if-eqz v0, :cond_56

    if-eqz v1, :cond_56

    .line 229
    iget-object v10, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_6b} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_6b} :catch_a5
    .catchall {:try_start_5e .. :try_end_6b} :catchall_c3

    move-result v10

    if-eqz v10, :cond_90

    .line 231
    :try_start_6e
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_71} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_71} :catch_a5
    .catchall {:try_start_6e .. :try_end_71} :catchall_c3

    move-result v3

    goto :goto_4d

    .line 232
    :catch_73
    move-exception v2

    .line 233
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_74
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_7d} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_7d} :catch_a5
    .catchall {:try_start_74 .. :try_end_7d} :catchall_c3

    goto :goto_4d

    .line 259
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7e
    move-exception v2

    move-object v7, v8

    .line 260
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_80
    :try_start_80
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_112

    .line 265
    if-eqz v7, :cond_28

    .line 266
    :try_start_8b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_ef

    .line 267
    const/4 v7, 0x0

    goto :goto_28

    .line 238
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_90
    :try_start_90
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 239
    iget-object v10, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_99} :catch_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_90 .. :try_end_99} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_90 .. :try_end_99} :catch_a5
    .catchall {:try_start_90 .. :try_end_99} :catchall_c3

    goto :goto_56

    .line 240
    :catch_9a
    move-exception v4

    .line 241
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_9b
    const-string v10, "FloatingFeature"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9b .. :try_end_a4} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_a4} :catch_a5
    .catchall {:try_start_9b .. :try_end_a4} :catchall_c3

    goto :goto_56

    .line 261
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_a5
    move-exception v2

    move-object v7, v8

    .line 262
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_a7
    :try_start_a7
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_112

    .line 265
    if-eqz v7, :cond_28

    .line 266
    :try_start_b2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_fb

    .line 267
    const/4 v7, 0x0

    goto/16 :goto_28

    .line 248
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :catch_b8
    move-exception v2

    .line 249
    .local v2, "e":Ljava/io/IOException;
    :try_start_b9
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b9 .. :try_end_c2} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_b9 .. :try_end_c2} :catch_a5
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_c3

    goto :goto_4d

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_c3
    move-exception v10

    move-object v7, v8

    .line 265
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_c5
    if-eqz v7, :cond_cb

    .line 266
    :try_start_c7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_107

    .line 267
    const/4 v7, 0x0

    .line 271
    :cond_cb
    :goto_cb
    throw v10

    .line 254
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_cc
    :try_start_cc
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cc .. :try_end_cf} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_cc .. :try_end_cf} :catch_a5
    .catchall {:try_start_cc .. :try_end_cf} :catchall_c3

    .line 265
    :goto_cf
    if-eqz v8, :cond_119

    .line 266
    :try_start_d1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_e2

    .line 267
    const/4 v7, 0x0

    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_28

    .line 255
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :catch_d7
    move-exception v2

    .line 256
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_d8
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d8 .. :try_end_e1} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_d8 .. :try_end_e1} :catch_a5
    .catchall {:try_start_d8 .. :try_end_e1} :catchall_c3

    goto :goto_cf

    .line 269
    .end local v2    # "e":Ljava/io/IOException;
    :catch_e2
    move-exception v2

    .line 270
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 272
    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_28

    .line 269
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_ef
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 269
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_fb
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 269
    .end local v2    # "e":Ljava/io/IOException;
    :catch_107
    move-exception v2

    .line 270
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_112
    move-exception v10

    goto :goto_c5

    .line 261
    :catch_114
    move-exception v2

    goto :goto_a7

    .line 259
    :catch_116
    move-exception v2

    goto/16 :goto_80

    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_119
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_28
.end method


# virtual methods
.method public getEnableStatus(Ljava/lang/String;)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 86
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 87
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    move-result v1

    .line 92
    :goto_15
    return v1

    :cond_16
    move v1, v2

    .line 89
    goto :goto_15

    .line 91
    :catch_18
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 92
    goto :goto_15
.end method

.method public getEnableStatus(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 108
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result p2

    .line 113
    .end local p2    # "defaultValue":Z
    :cond_14
    :goto_14
    return p2

    .line 112
    .restart local p2    # "defaultValue":Z
    :catch_15
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 168
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 169
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    move-result v1

    .line 174
    :goto_15
    return v1

    :cond_16
    move v1, v2

    .line 171
    goto :goto_15

    .line 173
    :catch_18
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 174
    goto :goto_15
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 190
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result p2

    .line 195
    .end local p2    # "defaultValue":I
    :cond_14
    :goto_14
    return p2

    .line 194
    .restart local p2    # "defaultValue":I
    :catch_15
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 128
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    :goto_10
    return-object v1

    .line 130
    :cond_11
    const-string v1, ""
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_10

    .line 132
    :catch_14
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_10
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 149
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-object p2, v1

    .line 154
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_11
    :goto_11
    return-object p2

    .line 153
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_12
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_11
.end method
