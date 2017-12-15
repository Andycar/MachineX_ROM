.class Landroid/media/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field private static final DEFAULT_FRAMERATE:I = 0x1e

.field private static final DEFAULT_SUBFRAMERATE:I = 0x1

.field private static final DEFAULT_TICKRATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "TtmlParser"


# instance fields
.field private mCurrentRunId:J

.field private final mListener:Landroid/media/TtmlNodeListener;

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Landroid/media/TtmlNodeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/TtmlNodeListener;

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    .line 376
    return-void
.end method

.method private extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "i"    # I
    .param p3, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 402
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    return-void
.end method

.method private isEndOfDoc()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 514
    iget-object v1, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 518
    const-string/jumbo v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string/jumbo v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string/jumbo v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string/jumbo v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string/jumbo v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string/jumbo v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string/jumbo v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string/jumbo v0, "smpte:image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string/jumbo v0, "smpte:data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string/jumbo v0, "smpte:information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 526
    :cond_82
    const/4 v0, 0x1

    .line 528
    :goto_83
    return v0

    :cond_84
    const/4 v0, 0x0

    goto :goto_83
.end method

.method private loadParser(Ljava/lang/String;)V
    .registers 5
    .param p1, "ttmlFragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 395
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 396
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    iput-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 397
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 398
    .local v1, "in":Ljava/io/StringReader;
    iget-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 399
    return-void
.end method

.method private parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;
    .registers 22
    .param p1, "parent"    # Landroid/media/TtmlNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    .line 461
    .local v15, "eventType":I
    const/4 v3, 0x2

    if-eq v15, v3, :cond_d

    .line 462
    const/4 v2, 0x0

    .line 510
    :goto_c
    return-object v2

    .line 464
    :cond_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v14, "attrStr":Ljava/lang/StringBuilder;
    const-wide/16 v6, 0x0

    .line 466
    .local v6, "start":J
    const-wide v8, 0x7fffffffffffffffL

    .line 467
    .local v8, "end":J
    const-wide/16 v16, 0x0

    .line 468
    .local v16, "dur":J
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_8c

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 470
    .local v13, "attr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    .line 472
    .local v19, "value":Ljava/lang/String;
    const-string v3, "^.*:"

    const-string v4, ""

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 473
    const-string v3, "begin"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 474
    const/16 v3, 0x1e

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v6

    .line 468
    :goto_57
    add-int/lit8 v18, v18, 0x1

    goto :goto_1d

    .line 476
    :cond_5a
    const-string v3, "end"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 477
    const/16 v3, 0x1e

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v8

    goto :goto_57

    .line 479
    :cond_6d
    const-string v3, "dur"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 480
    const/16 v3, 0x1e

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v16

    goto :goto_57

    .line 483
    :cond_80
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v1, v14}, Landroid/media/TtmlParser;->extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V

    goto :goto_57

    .line 486
    .end local v13    # "attr":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_8c
    if-eqz p1, :cond_a1

    .line 487
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v6, v4

    .line 488
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v8, v4

    if-eqz v3, :cond_a1

    .line 489
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v8, v4

    .line 492
    :cond_a1
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_b9

    .line 493
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v8, v4

    if-eqz v3, :cond_b7

    .line 494
    const-string v3, "TtmlParser"

    const-string v4, "\'dur\' and \'end\' attributes are defined at the same time.\'end\' value is ignored."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_b7
    add-long v8, v6, v16

    .line 499
    :cond_b9
    if-eqz p1, :cond_dd

    .line 502
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v8, v4

    if-nez v3, :cond_dd

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v3, v4, v10

    if-eqz v3, :cond_dd

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v3, v8, v4

    if-lez v3, :cond_dd

    .line 505
    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    .line 508
    :cond_dd
    new-instance v2, Landroid/media/TtmlNode;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v12}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    .line 510
    .local v2, "node":Landroid/media/TtmlNode;
    goto/16 :goto_c
.end method

.method private parseTtml()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    .line 411
    .local v17, "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/media/TtmlNode;>;"
    const/4 v14, 0x0

    .line 412
    .local v14, "depthInUnsupportedTag":I
    const/4 v13, 0x1

    .line 413
    .local v13, "active":Z
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/media/TtmlParser;->isEndOfDoc()Z

    move-result v2

    if-nez v2, :cond_fe

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    .line 415
    .local v15, "eventType":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/TtmlNode;

    .line 416
    .local v10, "parent":Landroid/media/TtmlNode;
    if-eqz v13, :cond_ed

    .line 417
    const/4 v2, 0x2

    if-ne v15, v2, :cond_76

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 419
    const-string v2, "TtmlParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    add-int/lit8 v14, v14, 0x1

    .line 421
    const/4 v13, 0x0

    .line 455
    :cond_57
    :goto_57
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_7

    .line 423
    :cond_5f
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/media/TtmlParser;->parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;

    move-result-object v16

    .line 424
    .local v16, "node":Landroid/media/TtmlNode;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 425
    if-eqz v10, :cond_57

    .line 426
    iget-object v2, v10, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 429
    .end local v16    # "node":Landroid/media/TtmlNode;
    :cond_76
    const/4 v2, 0x4

    if-ne v15, v2, :cond_a9

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/TtmlUtils;->applyDefaultSpacePolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 431
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 432
    iget-object v0, v10, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v2, Landroid/media/TtmlNode;

    const-string v3, "#pcdata"

    const-string v4, ""

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    invoke-direct/range {v2 .. v12}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 437
    .end local v5    # "text":Ljava/lang/String;
    :cond_a9
    const/4 v2, 0x3

    if-ne v15, v2, :cond_57

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TtmlNode;

    invoke-interface {v3, v2}, Landroid/media/TtmlNodeListener;->onTtmlNodeParsed(Landroid/media/TtmlNode;)V

    .line 443
    :cond_ca
    :goto_ca
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_57

    .line 440
    :cond_ce
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TtmlNode;

    invoke-interface {v3, v2}, Landroid/media/TtmlNodeListener;->onRootNodeParsed(Landroid/media/TtmlNode;)V

    goto :goto_ca

    .line 446
    :cond_ed
    const/4 v2, 0x2

    if-ne v15, v2, :cond_f4

    .line 447
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_57

    .line 448
    :cond_f4
    const/4 v2, 0x3

    if-ne v15, v2, :cond_57

    .line 449
    add-int/lit8 v14, v14, -0x1

    .line 450
    if-nez v14, :cond_57

    .line 451
    const/4 v13, 0x1

    goto/16 :goto_57

    .line 457
    .end local v10    # "parent":Landroid/media/TtmlNode;
    .end local v15    # "eventType":I
    :cond_fe
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;J)V
    .registers 6
    .param p1, "ttmlText"    # Ljava/lang/String;
    .param p2, "runId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 388
    iput-wide p2, p0, Landroid/media/TtmlParser;->mCurrentRunId:J

    .line 389
    invoke-direct {p0, p1}, Landroid/media/TtmlParser;->loadParser(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Landroid/media/TtmlParser;->parseTtml()V

    .line 391
    return-void
.end method
