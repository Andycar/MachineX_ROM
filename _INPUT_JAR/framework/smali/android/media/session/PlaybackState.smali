.class public final Landroid/media/session/PlaybackState;
.super Ljava/lang/Object;
.source "PlaybackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/PlaybackState$Builder;,
        Landroid/media/session/PlaybackState$CustomAction;
    }
.end annotation


# static fields
.field public static final ACTION_FAST_FORWARD:J = 0x40L

.field public static final ACTION_PAUSE:J = 0x2L

.field public static final ACTION_PLAY:J = 0x4L

.field public static final ACTION_PLAY_FROM_MEDIA_ID:J = 0x400L

.field public static final ACTION_PLAY_FROM_SEARCH:J = 0x800L

.field public static final ACTION_PLAY_PAUSE:J = 0x200L

.field public static final ACTION_REWIND:J = 0x8L

.field public static final ACTION_SEEK_TO:J = 0x100L

.field public static final ACTION_SET_RATING:J = 0x80L

.field public static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field public static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field public static final ACTION_SKIP_TO_QUEUE_ITEM:J = 0x1000L

.field public static final ACTION_STOP:J = 0x1L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/session/PlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYBACK_POSITION_UNKNOWN:J = -0x1L

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_CONNECTING:I = 0x8

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_FAST_FORWARDING:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_REWINDING:I = 0x5

.field public static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field public static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field public static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field public static final STATE_STOPPED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PlaybackState"


# instance fields
.field private final mActions:J

.field private final mActiveItemId:J

.field private final mBufferedPosition:J

.field private mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorMessage:Ljava/lang/CharSequence;

.field private final mPosition:J

.field private final mSpeed:F

.field private final mState:I

.field private final mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 551
    new-instance v0, Landroid/media/session/PlaybackState$1;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$1;-><init>()V

    sput-object v0, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;)V
    .registers 21
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "updateTime"    # J
    .param p6, "speed"    # F
    .param p7, "bufferedPosition"    # J
    .param p9, "transportControls"    # J
    .param p12, "activeItemId"    # J
    .param p14, "error"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJJ",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;J",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    .local p11, "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput p1, p0, Landroid/media/session/PlaybackState;->mState:I

    .line 241
    iput-wide p2, p0, Landroid/media/session/PlaybackState;->mPosition:J

    .line 242
    iput p6, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    .line 243
    iput-wide p4, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    .line 244
    iput-wide p7, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    .line 245
    iput-wide p9, p0, Landroid/media/session/PlaybackState;->mActions:J

    .line 246
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p11

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    .line 247
    move-wide/from16 v0, p12

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    .line 248
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/media/session/PlaybackState$1;)V
    .registers 16
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # F
    .param p7, "x4"    # J
    .param p9, "x5"    # J
    .param p11, "x6"    # Ljava/util/List;
    .param p12, "x7"    # J
    .param p14, "x8"    # Ljava/lang/CharSequence;
    .param p15, "x9"    # Landroid/media/session/PlaybackState$1;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p14}, Landroid/media/session/PlaybackState;-><init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/PlaybackState;->mState:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    .line 258
    sget-object v0, Landroid/media/session/PlaybackState$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/session/PlaybackState$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/session/PlaybackState$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/media/session/PlaybackState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/session/PlaybackState;)J
    .registers 3
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 35
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroid/media/session/PlaybackState;)J
    .registers 3
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 35
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/media/session/PlaybackState;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 35
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    return v0
.end method

.method static synthetic access$400(Landroid/media/session/PlaybackState;)J
    .registers 3
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 35
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$500(Landroid/media/session/PlaybackState;)J
    .registers 3
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 35
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/media/session/PlaybackState;)F
    .registers 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 35
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    return v0
.end method

.method static synthetic access$700(Landroid/media/session/PlaybackState;)J
    .registers 3
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 35
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/media/session/PlaybackState;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static getActionForRccFlag(I)J
    .registers 3
    .param p0, "flag"    # I

    .prologue
    .line 497
    sparse-switch p0, :sswitch_data_24

    .line 519
    const-wide/16 v0, 0x0

    :goto_5
    return-wide v0

    .line 499
    :sswitch_6
    const-wide/16 v0, 0x10

    goto :goto_5

    .line 501
    :sswitch_9
    const-wide/16 v0, 0x8

    goto :goto_5

    .line 503
    :sswitch_c
    const-wide/16 v0, 0x4

    goto :goto_5

    .line 505
    :sswitch_f
    const-wide/16 v0, 0x200

    goto :goto_5

    .line 507
    :sswitch_12
    const-wide/16 v0, 0x2

    goto :goto_5

    .line 509
    :sswitch_15
    const-wide/16 v0, 0x1

    goto :goto_5

    .line 511
    :sswitch_18
    const-wide/16 v0, 0x40

    goto :goto_5

    .line 513
    :sswitch_1b
    const-wide/16 v0, 0x20

    goto :goto_5

    .line 515
    :sswitch_1e
    const-wide/16 v0, 0x100

    goto :goto_5

    .line 517
    :sswitch_21
    const-wide/16 v0, 0x80

    goto :goto_5

    .line 497
    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x4 -> :sswitch_c
        0x8 -> :sswitch_f
        0x10 -> :sswitch_12
        0x20 -> :sswitch_15
        0x40 -> :sswitch_18
        0x80 -> :sswitch_1b
        0x100 -> :sswitch_1e
        0x200 -> :sswitch_21
    .end sparse-switch
.end method

.method public static getActionsFromRccControlFlags(I)J
    .registers 9
    .param p0, "rccFlags"    # I

    .prologue
    .line 470
    const-wide/16 v0, 0x0

    .line 471
    .local v0, "actions":J
    const-wide/16 v2, 0x1

    .line 472
    .local v2, "flag":J
    :goto_4
    int-to-long v4, p0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1a

    .line 473
    int-to-long v4, p0

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_17

    .line 474
    long-to-int v4, v2

    invoke-static {v4}, Landroid/media/session/PlaybackState;->getActionForRccFlag(I)J

    move-result-wide v4

    or-long/2addr v0, v4

    .line 476
    :cond_17
    const/4 v4, 0x1

    shl-long/2addr v2, v4

    goto :goto_4

    .line 478
    :cond_1a
    return-wide v0
.end method

.method public static getRccControlFlagsFromActions(J)I
    .registers 10
    .param p0, "actions"    # J

    .prologue
    .line 485
    const/4 v2, 0x0

    .line 486
    .local v2, "rccFlags":I
    const-wide/16 v0, 0x1

    .line 487
    .local v0, "action":J
    :goto_3
    cmp-long v3, v0, p0

    if-gtz v3, :cond_1e

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-gez v3, :cond_1e

    .line 488
    and-long v4, v0, p0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1b

    .line 489
    invoke-static {v0, v1}, Landroid/media/session/PlaybackState;->getRccFlagForAction(J)I

    move-result v3

    or-int/2addr v2, v3

    .line 491
    :cond_1b
    const/4 v3, 0x1

    shl-long/2addr v0, v3

    goto :goto_3

    .line 493
    :cond_1e
    return v2
.end method

.method private static getRccFlagForAction(J)I
    .registers 6
    .param p0, "action"    # J

    .prologue
    const/4 v1, 0x0

    .line 525
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p0, v2

    if-gez v2, :cond_d

    long-to-int v0, p0

    .line 526
    .local v0, "testAction":I
    :goto_9
    sparse-switch v0, :sswitch_data_2a

    .line 548
    :goto_c
    return v1

    .end local v0    # "testAction":I
    :cond_d
    move v0, v1

    .line 525
    goto :goto_9

    .line 528
    .restart local v0    # "testAction":I
    :sswitch_f
    const/4 v1, 0x1

    goto :goto_c

    .line 530
    :sswitch_11
    const/4 v1, 0x2

    goto :goto_c

    .line 532
    :sswitch_13
    const/4 v1, 0x4

    goto :goto_c

    .line 534
    :sswitch_15
    const/16 v1, 0x8

    goto :goto_c

    .line 536
    :sswitch_18
    const/16 v1, 0x10

    goto :goto_c

    .line 538
    :sswitch_1b
    const/16 v1, 0x20

    goto :goto_c

    .line 540
    :sswitch_1e
    const/16 v1, 0x40

    goto :goto_c

    .line 542
    :sswitch_21
    const/16 v1, 0x80

    goto :goto_c

    .line 544
    :sswitch_24
    const/16 v1, 0x100

    goto :goto_c

    .line 546
    :sswitch_27
    const/16 v1, 0x200

    goto :goto_c

    .line 526
    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_1b
        0x2 -> :sswitch_18
        0x4 -> :sswitch_13
        0x8 -> :sswitch_11
        0x10 -> :sswitch_f
        0x20 -> :sswitch_21
        0x40 -> :sswitch_1e
        0x80 -> :sswitch_27
        0x100 -> :sswitch_24
        0x200 -> :sswitch_15
    .end sparse-switch
.end method

.method public static getRccStateFromState(I)I
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 440
    packed-switch p0, :pswitch_data_1c

    .line 462
    :pswitch_3
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 442
    :pswitch_5
    const/16 v0, 0x8

    goto :goto_4

    .line 444
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_4

    .line 446
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 448
    :pswitch_d
    const/4 v0, 0x0

    goto :goto_4

    .line 450
    :pswitch_f
    const/4 v0, 0x2

    goto :goto_4

    .line 452
    :pswitch_11
    const/4 v0, 0x3

    goto :goto_4

    .line 454
    :pswitch_13
    const/4 v0, 0x5

    goto :goto_4

    .line 456
    :pswitch_15
    const/4 v0, 0x7

    goto :goto_4

    .line 458
    :pswitch_17
    const/4 v0, 0x6

    goto :goto_4

    .line 460
    :pswitch_19
    const/4 v0, 0x1

    goto :goto_4

    .line 440
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_19
        :pswitch_f
        :pswitch_11
        :pswitch_b
        :pswitch_13
        :pswitch_5
        :pswitch_8
        :pswitch_3
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method public static getStateFromRccState(I)I
    .registers 2
    .param p0, "rccState"    # I

    .prologue
    .line 405
    packed-switch p0, :pswitch_data_1c

    .line 427
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 407
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_4

    .line 409
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_4

    .line 411
    :pswitch_9
    const/4 v0, 0x4

    goto :goto_4

    .line 413
    :pswitch_b
    const/4 v0, 0x0

    goto :goto_4

    .line 415
    :pswitch_d
    const/4 v0, 0x2

    goto :goto_4

    .line 417
    :pswitch_f
    const/4 v0, 0x3

    goto :goto_4

    .line 419
    :pswitch_11
    const/4 v0, 0x5

    goto :goto_4

    .line 421
    :pswitch_13
    const/16 v0, 0x9

    goto :goto_4

    .line 423
    :pswitch_16
    const/16 v0, 0xa

    goto :goto_4

    .line 425
    :pswitch_19
    const/4 v0, 0x1

    goto :goto_4

    .line 405
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_19
        :pswitch_d
        :pswitch_f
        :pswitch_9
        :pswitch_11
        :pswitch_16
        :pswitch_13
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()J
    .registers 3

    .prologue
    .line 356
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    return-wide v0
.end method

.method public getActiveQueueItemId()J
    .registers 3

    .prologue
    .line 393
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    return-wide v0
.end method

.method public getBufferedPosition()J
    .registers 3

    .prologue
    .line 326
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    return-wide v0
.end method

.method public getCustomActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLastPositionUpdateTime()J
    .registers 3

    .prologue
    .line 381
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    return v0
.end method

.method public getPosition()J
    .registers 3

    .prologue
    .line 317
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    return-wide v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 311
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaybackState {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/session/PlaybackState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, ", buffered position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mActions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, ", custom actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, ", active item id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 276
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 287
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 290
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 291
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 292
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 293
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 294
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 295
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method
