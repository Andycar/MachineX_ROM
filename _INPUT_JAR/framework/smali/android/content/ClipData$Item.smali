.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field final mHtmlText:Ljava/lang/String;

.field final mIntent:Landroid/content/Intent;

.field final mText:Ljava/lang/CharSequence;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 220
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 221
    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 222
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 230
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 232
    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 197
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 199
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 243
    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 244
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 210
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 212
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    if-eqz p2, :cond_f

    if-nez p1, :cond_f

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Plain text must be supplied if HTML text is supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_f
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 258
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 259
    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 260
    iput-object p4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 261
    return-void
.end method

.method private coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styled"    # Z

    .prologue
    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12d

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    const-string/jumbo v22, "text/*"

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 489
    .local v19, "types":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 490
    .local v9, "hasHtml":Z
    const/4 v10, 0x0

    .line 491
    .local v10, "hasText":Z
    if-eqz v19, :cond_45

    .line 492
    move-object/from16 v4, v19

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_21
    if-ge v11, v13, :cond_45

    aget-object v18, v4, v11

    .line 493
    .local v18, "type":Ljava/lang/String;
    const-string/jumbo v20, "text/html"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_36

    .line 494
    const/4 v9, 0x1

    .line 492
    :cond_33
    :goto_33
    add-int/lit8 v11, v11, 0x1

    goto :goto_21

    .line 495
    :cond_36
    const-string/jumbo v20, "text/"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_33

    .line 496
    const/4 v10, 0x1

    goto :goto_33

    .line 502
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .end local v18    # "type":Ljava/lang/String;
    :cond_45
    if-nez v9, :cond_49

    if-eqz v10, :cond_9a

    .line 503
    :cond_49
    const/16 v16, 0x0

    .line 506
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_4b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    if-eqz v9, :cond_af

    const-string/jumbo v20, "text/html"

    :goto_5a
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 509
    .local v7, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v16

    .line 510
    new-instance v15, Ljava/io/InputStreamReader;

    const-string v20, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 513
    .local v15, "reader":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v20, 0x80

    move/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 514
    .local v6, "builder":Ljava/lang/StringBuilder;
    const/16 v20, 0x2000

    move/from16 v0, v20

    new-array v5, v0, [C

    .line 516
    .local v5, "buffer":[C
    :goto_86
    invoke-virtual {v15, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v12

    .local v12, "len":I
    if-lez v12, :cond_b3

    .line 517
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v5, v0, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_93} :catch_94
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_93} :catch_f7
    .catchall {:try_start_4b .. :try_end_93} :catchall_113

    goto :goto_86

    .line 546
    .end local v5    # "buffer":[C
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v12    # "len":I
    .end local v15    # "reader":Ljava/io/InputStreamReader;
    :catch_94
    move-exception v20

    .line 556
    if-eqz v16, :cond_9a

    .line 558
    :try_start_97
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_16a

    .line 568
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :cond_9a
    :goto_9a
    if-eqz p2, :cond_11a

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 586
    .end local v9    # "hasHtml":Z
    .end local v10    # "hasText":Z
    .end local v19    # "types":[Ljava/lang/String;
    :cond_ae
    :goto_ae
    return-object v17

    .line 506
    .restart local v9    # "hasHtml":Z
    .restart local v10    # "hasText":Z
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v19    # "types":[Ljava/lang/String;
    :cond_af
    :try_start_af
    const-string/jumbo v20, "text/plain"

    goto :goto_5a

    .line 519
    .restart local v5    # "buffer":[C
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v12    # "len":I
    .restart local v15    # "reader":Ljava/io/InputStreamReader;
    :cond_b3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_af .. :try_end_b6} :catch_94
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b6} :catch_f7
    .catchall {:try_start_af .. :try_end_b6} :catchall_113

    move-result-object v17

    .line 520
    .local v17, "text":Ljava/lang/String;
    if-eqz v9, :cond_e1

    .line 521
    if-eqz p2, :cond_d5

    .line 525
    :try_start_bb
    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_be
    .catch Ljava/lang/RuntimeException; {:try_start_bb .. :try_end_be} :catch_cc
    .catch Ljava/io/FileNotFoundException; {:try_start_bb .. :try_end_be} :catch_94
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_f7
    .catchall {:try_start_bb .. :try_end_be} :catchall_113

    move-result-object v14

    .line 526
    .local v14, "newText":Ljava/lang/CharSequence;
    if-eqz v14, :cond_c9

    .line 556
    .end local v14    # "newText":Ljava/lang/CharSequence;
    :goto_c1
    if-eqz v16, :cond_c6

    .line 558
    :try_start_c3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_167

    :cond_c6
    :goto_c6
    move-object/from16 v17, v14

    .line 560
    goto :goto_ae

    .restart local v14    # "newText":Ljava/lang/CharSequence;
    :cond_c9
    move-object/from16 v14, v17

    .line 526
    goto :goto_c1

    .line 527
    .end local v14    # "newText":Ljava/lang/CharSequence;
    :catch_cc
    move-exception v8

    .line 556
    .local v8, "e":Ljava/lang/RuntimeException;
    if-eqz v16, :cond_ae

    .line 558
    :try_start_cf
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_ae

    .line 559
    :catch_d3
    move-exception v20

    goto :goto_ae

    .line 533
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :cond_d5
    :try_start_d5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_d8
    .catch Ljava/io/FileNotFoundException; {:try_start_d5 .. :try_end_d8} :catch_94
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_f7
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_113

    move-result-object v17

    .line 556
    .end local v17    # "text":Ljava/lang/String;
    if-eqz v16, :cond_ae

    .line 558
    :try_start_db
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_ae

    .line 559
    :catch_df
    move-exception v20

    goto :goto_ae

    .line 536
    .restart local v17    # "text":Ljava/lang/String;
    :cond_e1
    if-eqz p2, :cond_eb

    .line 556
    if-eqz v16, :cond_ae

    .line 558
    :try_start_e5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_e9

    goto :goto_ae

    .line 559
    :catch_e9
    move-exception v20

    goto :goto_ae

    .line 543
    :cond_eb
    :try_start_eb
    invoke-static/range {v17 .. v17}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_eb .. :try_end_ee} :catch_94
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_f7
    .catchall {:try_start_eb .. :try_end_ee} :catchall_113

    move-result-object v17

    .line 556
    .end local v17    # "text":Ljava/lang/String;
    if-eqz v16, :cond_ae

    .line 558
    :try_start_f1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f5

    goto :goto_ae

    .line 559
    :catch_f5
    move-exception v20

    goto :goto_ae

    .line 550
    .end local v5    # "buffer":[C
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v12    # "len":I
    .end local v15    # "reader":Ljava/io/InputStreamReader;
    :catch_f7
    move-exception v8

    .line 552
    .local v8, "e":Ljava/io/IOException;
    :try_start_f8
    const-string v20, "ClippedData"

    const-string v21, "Failure loading text"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_10a
    .catchall {:try_start_f8 .. :try_end_10a} :catchall_113

    move-result-object v17

    .line 556
    if-eqz v16, :cond_ae

    .line 558
    :try_start_10d
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_111

    goto :goto_ae

    .line 559
    :catch_111
    move-exception v20

    goto :goto_ae

    .line 556
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_113
    move-exception v20

    if-eqz v16, :cond_119

    .line 558
    :try_start_116
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_16d

    .line 560
    :cond_119
    :goto_119
    throw v20

    .line 571
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :cond_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto :goto_ae

    .line 577
    .end local v9    # "hasHtml":Z
    .end local v10    # "hasText":Z
    .end local v19    # "types":[Ljava/lang/String;
    :cond_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_163

    .line 578
    if-eqz p2, :cond_14d

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    goto/16 :goto_ae

    .line 581
    :cond_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_ae

    .line 586
    :cond_163
    const-string v17, ""

    goto/16 :goto_ae

    .line 559
    .restart local v5    # "buffer":[C
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "hasHtml":Z
    .restart local v10    # "hasText":Z
    .restart local v12    # "len":I
    .restart local v15    # "reader":Ljava/io/InputStreamReader;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "text":Ljava/lang/String;
    .restart local v19    # "types":[Ljava/lang/String;
    :catch_167
    move-exception v20

    goto/16 :goto_c6

    .end local v5    # "buffer":[C
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v12    # "len":I
    .end local v15    # "reader":Ljava/io/InputStreamReader;
    .end local v17    # "text":Ljava/lang/String;
    :catch_16a
    move-exception v20

    goto/16 :goto_9a

    :catch_16d
    move-exception v21

    goto :goto_119
.end method

.method private uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 591
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 600
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 601
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 602
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 604
    return-object v0
.end method


# virtual methods
.method public coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 478
    .end local v0    # "htmlText":Ljava/lang/String;
    :goto_6
    return-object v0

    .line 469
    .restart local v0    # "htmlText":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 470
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1d

    .line 471
    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_18

    .line 472
    check-cast v1, Landroid/text/Spanned;

    .end local v1    # "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 474
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_18
    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 477
    :cond_1d
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 478
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_28
    move-object v0, v2

    goto :goto_6

    :cond_2a
    const/4 v2, 0x0

    goto :goto_28
.end method

.method public coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 389
    .local v2, "text":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_9

    .line 407
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_8
    :goto_8
    return-object v2

    .line 392
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 395
    :try_start_f
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_17

    move-result-object v1

    .line 396
    .local v1, "newText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_18

    move-object v2, v1

    .line 397
    goto :goto_8

    .line 399
    .end local v1    # "newText":Ljava/lang/CharSequence;
    :catch_17
    move-exception v3

    .line 404
    :cond_18
    if-nez v2, :cond_8

    .line 407
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_8
.end method

.method public coerceToStyledTextForEditor(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 413
    .local v2, "text":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_9

    .line 431
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_8
    :goto_8
    return-object v2

    .line 416
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 419
    :try_start_f
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_17

    move-result-object v1

    .line 420
    .local v1, "newText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_18

    move-object v2, v1

    .line 421
    goto :goto_8

    .line 423
    .end local v1    # "newText":Ljava/lang/CharSequence;
    :catch_17
    move-exception v3

    .line 428
    :cond_18
    if-nez v2, :cond_8

    .line 431
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 316
    .local v8, "text":Ljava/lang/CharSequence;
    if-eqz v8, :cond_7

    .line 375
    .end local v8    # "text":Ljava/lang/CharSequence;
    :cond_6
    :goto_6
    return-object v8

    .line 321
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 322
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_6d

    .line 327
    const/4 v7, 0x0

    .line 330
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "text/*"

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 332
    .local v2, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v7

    .line 333
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v6, v7, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 336
    .local v6, "reader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v10, 0x80

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 337
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/16 v10, 0x2000

    new-array v0, v10, [C

    .line 339
    .local v0, "buffer":[C
    :goto_30
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_46

    .line 340
    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_3a} :catch_3b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_3a} :catch_52
    .catchall {:try_start_e .. :try_end_3a} :catchall_66

    goto :goto_30

    .line 344
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v5    # "len":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_3b
    move-exception v10

    .line 354
    if-eqz v7, :cond_41

    .line 356
    :try_start_3e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_7c

    .line 364
    :cond_41
    :goto_41
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 342
    .restart local v0    # "buffer":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v5    # "len":I
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_49} :catch_3b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_52
    .catchall {:try_start_46 .. :try_end_49} :catchall_66

    move-result-object v8

    .line 354
    .end local v8    # "text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_6

    .line 356
    :try_start_4c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_6

    .line 357
    :catch_50
    move-exception v10

    goto :goto_6

    .line 348
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v5    # "len":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :catch_52
    move-exception v3

    .line 350
    .local v3, "e":Ljava/io/IOException;
    :try_start_53
    const-string v10, "ClippedData"

    const-string v11, "Failure loading text"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_66

    move-result-object v8

    .line 354
    .end local v8    # "text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_6

    .line 356
    :try_start_60
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_6

    .line 357
    :catch_64
    move-exception v10

    goto :goto_6

    .line 354
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :catchall_66
    move-exception v10

    if-eqz v7, :cond_6c

    .line 356
    :try_start_69
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_7e

    .line 358
    :cond_6c
    :goto_6c
    throw v10

    .line 369
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_6d
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 370
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_79

    .line 371
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 375
    :cond_79
    const-string v8, ""

    goto :goto_6

    .line 357
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_7c
    move-exception v10

    goto :goto_41

    :catch_7e
    move-exception v11

    goto :goto_6c
.end method

.method public getHtmlText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x1

    .line 620
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 621
    const-string v0, "H:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :goto_f
    return-void

    .line 623
    :cond_10
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    .line 624
    const-string v0, "T:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 626
    :cond_1f
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2e

    .line 627
    const-string v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 629
    :cond_2e
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_41

    .line 630
    const-string v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_f

    .line 633
    :cond_41
    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 611
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "ClipData.Item { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {p0, v0}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    .line 613
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
