.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$CharPos;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field private static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field private static final KEY_HEAD_INFO:I = 0x12

.field private static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_SMPTE_TT_HEAD:I = 0xc8

.field private static final KEY_START_CHAR:I = 0x67

.field public static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field public static final KEY_TEXT_INDEX:I = 0x11

.field private static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0xc8

.field private static final LAST_PUBLIC_KEY:I = 0x12

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadChars:Ljava/lang/String;

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mParcel:Landroid/os/Parcel;

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;

.field private mWrapText:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 110
    iput v3, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 111
    iput v3, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 112
    iput v3, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 113
    iput v3, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 114
    iput v3, p0, Landroid/media/TimedText;->mWrapText:I

    .line 116
    iput-object v2, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 117
    iput-object v2, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 118
    iput-object v2, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 119
    iput-object v2, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 120
    iput-object v2, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 121
    iput-object v2, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 123
    iput-object v2, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 124
    iput-object v2, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Landroid/media/TimedText;->mHeadChars:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 383
    .local v0, "tmp":[B
    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 385
    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, v1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 386
    iget-object v1, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 387
    const-string v1, "TimedText"

    const-string/jumbo v2, "parseParcel() fails"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_4e
    return-void
.end method

.method private containsKey(I)Z
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 779
    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 780
    const/4 v0, 0x1

    .line 782
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isValidKey(I)Z
    .registers 4
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x1

    .line 765
    if-lt p1, v0, :cond_7

    const/16 v1, 0x12

    if-le p1, v1, :cond_10

    :cond_7
    const/16 v1, 0x65

    if-lt p1, v1, :cond_f

    const/16 v1, 0xc8

    if-le p1, v1, :cond_10

    .line 767
    :cond_f
    const/4 v0, 0x0

    .line 769
    :cond_10
    return v0
.end method

.method private keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized parseParcel(Landroid/os/Parcel;)Z
    .registers 20
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 436
    monitor-enter p0

    const/4 v15, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_a6

    move-result v15

    if-nez v15, :cond_10

    .line 438
    const/4 v15, 0x0

    .line 599
    :goto_e
    monitor-exit p0

    return v15

    .line 444
    :cond_10
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 445
    .local v11, "textType":I
    const/16 v15, 0x11

    if-ne v11, v15, :cond_3c

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 447
    .local v6, "mTextIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 456
    .end local v6    # "mTextIndex":I
    .local v13, "type":I
    :goto_2f
    const/16 v15, 0x66

    if-ne v13, v15, :cond_a9

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 458
    const/4 v15, 0x7

    if-eq v13, v15, :cond_3e

    .line 459
    const/4 v15, 0x0

    goto :goto_e

    .line 453
    .end local v13    # "type":I
    :cond_3c
    move v13, v11

    .restart local v13    # "type":I
    goto :goto_2f

    .line 461
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 462
    .local v5, "mStartTimeMs":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 465
    const/16 v15, 0x10

    if-eq v13, v15, :cond_5b

    .line 466
    const/4 v15, 0x0

    goto :goto_e

    .line 469
    :cond_5b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 470
    .local v10, "textLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 471
    .local v9, "text":[B
    if-eqz v9, :cond_68

    array-length v15, v9

    if-nez v15, :cond_9c

    .line 472
    :cond_68
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 499
    .end local v5    # "mStartTimeMs":I
    .end local v9    # "text":[B
    .end local v10    # "textLen":I
    :cond_6d
    :goto_6d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v15

    if-lez v15, :cond_1de

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 501
    .local v3, "key":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v15

    if-nez v15, :cond_f6

    .line 502
    const-string v15, "TimedText"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid timed text key found: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v15, 0x0

    goto/16 :goto_e

    .line 474
    .end local v3    # "key":I
    .restart local v5    # "mStartTimeMs":I
    .restart local v9    # "text":[B
    .restart local v10    # "textLen":I
    :cond_9c
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;
    :try_end_a5
    .catchall {:try_start_10 .. :try_end_a5} :catchall_a6

    goto :goto_6d

    .line 436
    .end local v5    # "mStartTimeMs":I
    .end local v9    # "text":[B
    .end local v10    # "textLen":I
    .end local v11    # "textType":I
    .end local v13    # "type":I
    :catchall_a6
    move-exception v15

    monitor-exit p0

    throw v15

    .line 479
    .restart local v11    # "textType":I
    .restart local v13    # "type":I
    :cond_a9
    const/16 v15, 0xc8

    if-ne v13, v15, :cond_d5

    .line 480
    :try_start_ad
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 481
    const/16 v15, 0x12

    if-eq v13, v15, :cond_b8

    .line 482
    const/4 v15, 0x0

    goto/16 :goto_e

    .line 485
    :cond_b8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 486
    .restart local v10    # "textLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 487
    .restart local v9    # "text":[B
    if-eqz v9, :cond_c5

    array-length v15, v9

    if-nez v15, :cond_cb

    .line 488
    :cond_c5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/TimedText;->mHeadChars:Ljava/lang/String;

    goto :goto_6d

    .line 490
    :cond_cb
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/TimedText;->mHeadChars:Ljava/lang/String;

    goto :goto_6d

    .line 494
    .end local v9    # "text":[B
    .end local v10    # "textLen":I
    :cond_d5
    const/16 v15, 0x65

    if-eq v13, v15, :cond_6d

    .line 495
    const-string v15, "TimedText"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid timed text key found: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v15, 0x0

    goto/16 :goto_e

    .line 506
    .restart local v3    # "key":I
    :cond_f6
    const/4 v7, 0x0

    .line 508
    .local v7, "object":Ljava/lang/Object;
    packed-switch v3, :pswitch_data_1e8

    .line 589
    .end local v7    # "object":Ljava/lang/Object;
    :goto_fa
    :pswitch_fa
    if-eqz v7, :cond_6d

    .line 590
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_115

    .line 591
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_115
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6d

    .line 510
    .restart local v7    # "object":Ljava/lang/Object;
    :pswitch_124
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 512
    .local v7, "object":Ljava/util/List;
    goto :goto_fa

    .line 515
    .local v7, "object":Ljava/lang/Object;
    :pswitch_12c
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 517
    .local v7, "object":Ljava/util/List;
    goto :goto_fa

    .line 520
    .local v7, "object":Ljava/lang/Object;
    :pswitch_134
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 522
    .local v7, "object":Ljava/util/List;
    goto :goto_fa

    .line 525
    .local v7, "object":Ljava/lang/Object;
    :pswitch_13c
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 527
    .local v7, "object":Ljava/util/List;
    goto :goto_fa

    .line 530
    .local v7, "object":Ljava/lang/Object;
    :pswitch_144
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 533
    .local v7, "object":Ljava/util/List;
    goto :goto_fa

    .line 536
    .local v7, "object":Ljava/lang/Object;
    :pswitch_14c
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 539
    .local v7, "object":Ljava/util/List;
    goto :goto_fa

    .line 542
    .local v7, "object":Ljava/lang/Object;
    :pswitch_154
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/TimedText;->mWrapText:I

    .line 543
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/TimedText;->mWrapText:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 544
    .local v7, "object":Ljava/lang/Integer;
    goto :goto_fa

    .line 547
    .local v7, "object":Ljava/lang/Object;
    :pswitch_165
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 548
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 549
    .local v7, "object":Ljava/lang/Integer;
    goto :goto_fa

    .line 552
    .local v7, "object":Ljava/lang/Object;
    :pswitch_176
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 553
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/TimedText;->mDisplayFlags:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 554
    .local v7, "object":Ljava/lang/Integer;
    goto/16 :goto_fa

    .line 558
    .local v7, "object":Ljava/lang/Object;
    :pswitch_188
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 559
    .local v2, "horizontal":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 560
    .local v14, "vertical":I
    new-instance v15, Landroid/media/TimedText$Justification;

    invoke-direct {v15, v2, v14}, Landroid/media/TimedText$Justification;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 562
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 563
    .local v7, "object":Landroid/media/TimedText$Justification;
    goto/16 :goto_fa

    .line 566
    .end local v2    # "horizontal":I
    .end local v14    # "vertical":I
    .local v7, "object":Ljava/lang/Object;
    :pswitch_19f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 567
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 568
    .local v7, "object":Ljava/lang/Integer;
    goto/16 :goto_fa

    .line 571
    .local v7, "object":Ljava/lang/Object;
    :pswitch_1b1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 572
    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 573
    .local v4, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 574
    .local v1, "bottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 575
    .local v8, "right":I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v4, v12, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    goto/16 :goto_fa

    .line 580
    .end local v1    # "bottom":I
    .end local v4    # "left":I
    .end local v8    # "right":I
    .end local v12    # "top":I
    :pswitch_1cc
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/TimedText;->mScrollDelay:I

    .line 581
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/TimedText;->mScrollDelay:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 582
    .local v7, "object":Ljava/lang/Integer;
    goto/16 :goto_fa

    .line 598
    .end local v3    # "key":I
    .end local v7    # "object":Ljava/lang/Integer;
    :cond_1de
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V
    :try_end_1e5
    .catchall {:try_start_ad .. :try_end_1e5} :catchall_a6

    .line 599
    const/4 v15, 0x1

    goto/16 :goto_e

    .line 508
    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_176
        :pswitch_fa
        :pswitch_19f
        :pswitch_165
        :pswitch_1cc
        :pswitch_154
        :pswitch_fa
        :pswitch_14c
        :pswitch_12c
        :pswitch_134
        :pswitch_144
        :pswitch_13c
        :pswitch_124
        :pswitch_1b1
        :pswitch_188
    .end packed-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 749
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 750
    .local v2, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 751
    .local v1, "endChar":I
    new-instance v0, Landroid/media/TimedText$CharPos;

    invoke-direct {v0, v2, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 753
    .local v0, "blinkingPos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_18

    .line 754
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 756
    :cond_18
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    return-void
.end method

.method private readFont(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 671
    .local v0, "entryCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_31

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 673
    .local v3, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 675
    .local v5, "nameLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 676
    .local v6, "text":[B
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Ljava/lang/String;-><init>([BII)V

    .line 678
    .local v4, "name":Ljava/lang/String;
    new-instance v1, Landroid/media/TimedText$Font;

    invoke-direct {v1, v3, v4}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    .line 680
    .local v1, "font":Landroid/media/TimedText$Font;
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v7, :cond_29

    .line 681
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 683
    :cond_29
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 685
    .end local v1    # "font":Landroid/media/TimedText$Font;
    .end local v3    # "id":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "nameLen":I
    .end local v6    # "text":[B
    :cond_31
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 692
    .local v2, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 693
    .local v0, "endChar":I
    new-instance v1, Landroid/media/TimedText$CharPos;

    invoke-direct {v1, v2, v0}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 695
    .local v1, "pos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_18

    .line 696
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 698
    :cond_18
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x0

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 727
    .local v5, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 729
    .local v2, "endChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 730
    .local v4, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 731
    .local v6, "url":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 733
    .local v7, "urlString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 735
    .local v0, "alt":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 736
    .local v1, "altString":Ljava/lang/String;
    new-instance v3, Landroid/media/TimedText$HyperText;

    invoke-direct {v3, v5, v2, v7, v1}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 739
    .local v3, "hyperText":Landroid/media/TimedText$HyperText;
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_33

    .line 740
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 742
    :cond_33
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 705
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 707
    .local v2, "entryCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_2f

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 709
    .local v6, "startTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 710
    .local v1, "endTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 711
    .local v5, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 712
    .local v0, "endChar":I
    new-instance v4, Landroid/media/TimedText$Karaoke;

    invoke-direct {v4, v6, v1, v5, v0}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    .line 715
    .local v4, "kara":Landroid/media/TimedText$Karaoke;
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v7, :cond_27

    .line 716
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 718
    :cond_27
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 720
    .end local v0    # "endChar":I
    .end local v1    # "endTimeMs":I
    .end local v4    # "kara":Landroid/media/TimedText$Karaoke;
    .end local v5    # "startChar":I
    .end local v6    # "startTimeMs":I
    :cond_2f
    return-void
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .registers 16
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 606
    const/4 v9, 0x0

    .line 607
    .local v9, "endOfStyle":Z
    const/4 v1, -0x1

    .line 608
    .local v1, "startChar":I
    const/4 v2, -0x1

    .line 609
    .local v2, "endChar":I
    const/4 v3, -0x1

    .line 610
    .local v3, "fontId":I
    const/4 v4, 0x0

    .line 611
    .local v4, "isBold":Z
    const/4 v5, 0x0

    .line 612
    .local v5, "isItalic":Z
    const/4 v6, 0x0

    .line 613
    .local v6, "isUnderlined":Z
    const/4 v7, -0x1

    .line 614
    .local v7, "fontSize":I
    const/4 v8, -0x1

    .line 615
    .local v8, "colorRGBA":I
    :goto_9
    if-nez v9, :cond_59

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v12

    if-lez v12, :cond_59

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 617
    .local v11, "key":I
    sparse-switch v11, :sswitch_data_70

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 651
    const/4 v9, 0x1

    goto :goto_9

    .line 619
    :sswitch_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 620
    goto :goto_9

    .line 623
    :sswitch_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 624
    goto :goto_9

    .line 627
    :sswitch_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 628
    goto :goto_9

    .line 631
    :sswitch_32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 634
    .local v10, "flags":I
    rem-int/lit8 v12, v10, 0x2

    const/4 v13, 0x1

    if-ne v12, v13, :cond_49

    const/4 v4, 0x1

    .line 635
    :goto_3c
    rem-int/lit8 v12, v10, 0x4

    const/4 v13, 0x2

    if-lt v12, v13, :cond_4b

    const/4 v5, 0x1

    .line 636
    :goto_42
    div-int/lit8 v12, v10, 0x4

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4d

    const/4 v6, 0x1

    .line 637
    :goto_48
    goto :goto_9

    .line 634
    :cond_49
    const/4 v4, 0x0

    goto :goto_3c

    .line 635
    :cond_4b
    const/4 v5, 0x0

    goto :goto_42

    .line 636
    :cond_4d
    const/4 v6, 0x0

    goto :goto_48

    .line 640
    .end local v10    # "flags":I
    :sswitch_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 641
    goto :goto_9

    .line 644
    :sswitch_54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 645
    goto :goto_9

    .line 657
    .end local v11    # "key":I
    :cond_59
    new-instance v0, Landroid/media/TimedText$Style;

    invoke-direct/range {v0 .. v8}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    .line 659
    .local v0, "style":Landroid/media/TimedText$Style;
    iget-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez v12, :cond_69

    .line 660
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 662
    :cond_69
    iget-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    return-void

    .line 617
    nop

    :sswitch_data_70
    .sparse-switch
        0x2 -> :sswitch_32
        0x67 -> :sswitch_23
        0x68 -> :sswitch_28
        0x69 -> :sswitch_2d
        0x6a -> :sswitch_4f
        0x6b -> :sswitch_54
    .end sparse-switch
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHead()Ljava/lang/String;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Landroid/media/TimedText;->mHeadChars:Ljava/lang/String;

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I

    .prologue
    .line 807
    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 808
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 810
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method
