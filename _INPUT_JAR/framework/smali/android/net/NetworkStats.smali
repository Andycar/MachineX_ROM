.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$NonMonotonicObserver;,
        Landroid/net/NetworkStats$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final IFACE_ALL:Ljava/lang/String;

.field public static final SET_ALL:I = -0x1

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private capacity:I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 808
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .registers 5
    .param p1, "elapsedRealtime"    # J
    .param p3, "initialSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 179
    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 180
    if-ltz p3, :cond_31

    .line 181
    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    .line 182
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 183
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 184
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 185
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 186
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 187
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 188
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 189
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 190
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 204
    :goto_30
    return-void

    .line 193
    :cond_31
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 194
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 195
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 196
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 197
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 198
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 199
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 200
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 201
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 202
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    goto :goto_30
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 219
    return-void
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .registers 16
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p3, "limitUid"    # I
    .param p4, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    .line 544
    if-eqz p1, :cond_46

    move-object v0, p1

    .line 546
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_8
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 547
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 548
    iput v10, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 549
    iput v4, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 550
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 551
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 552
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 553
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 554
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    iget v6, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v6, :cond_7e

    .line 557
    if-eq p3, v10, :cond_29

    iget-object v6, p0, Landroid/net/NetworkStats;->uid:[I

    aget v6, v6, v1

    if-ne p3, v6, :cond_4c

    :cond_29
    move v3, v5

    .line 558
    .local v3, "matchesUid":Z
    :goto_2a
    if-eqz p2, :cond_36

    iget-object v6, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    :cond_36
    move v2, v5

    .line 560
    .local v2, "matchesIface":Z
    :goto_37
    if-eqz v3, :cond_43

    if-eqz v2, :cond_43

    .line 562
    iget-object v6, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v6, v1

    if-eqz v6, :cond_50

    if-nez p4, :cond_50

    .line 556
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 544
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v1    # "i":I
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_46
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_8

    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v1    # "i":I
    :cond_4c
    move v3, v4

    .line 557
    goto :goto_2a

    .restart local v3    # "matchesUid":Z
    :cond_4e
    move v2, v4

    .line 558
    goto :goto_37

    .line 564
    .restart local v2    # "matchesIface":Z
    :cond_50
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 565
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 566
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 567
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 568
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v8, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_43

    .line 571
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_7e
    return-object v0
.end method

.method public static setToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "set"    # I

    .prologue
    .line 777
    packed-switch p0, :pswitch_data_10

    .line 785
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 779
    :pswitch_6
    const-string v0, "ALL"

    goto :goto_5

    .line 781
    :pswitch_9
    const-string v0, "DEFAULT"

    goto :goto_5

    .line 783
    :pswitch_c
    const-string v0, "FOREGROUND"

    goto :goto_5

    .line 777
    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .registers 5
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 604
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 20
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .param p4, "recycle"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 621
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v12, v2, v4

    .line 622
    .local v12, "deltaRealtime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_1e

    .line 623
    if-eqz p2, :cond_1c

    .line 624
    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v2, p2

    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 626
    :cond_1c
    const-wide/16 v12, 0x0

    .line 630
    :cond_1e
    new-instance v11, Landroid/net/NetworkStats$Entry;

    invoke-direct {v11}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 632
    .local v11, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p4, :cond_86

    move-object/from16 v0, p4

    iget v2, v0, Landroid/net/NetworkStats;->capacity:I

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-lt v2, v3, :cond_86

    .line 633
    move-object/from16 v14, p4

    .line 634
    .local v14, "result":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    iput v2, v14, Landroid/net/NetworkStats;->size:I

    .line 635
    iput-wide v12, v14, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 639
    :goto_34
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_35
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v7, v2, :cond_137

    .line 640
    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 641
    iget-object v2, p0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, v7

    iput v2, v11, Landroid/net/NetworkStats$Entry;->uid:I

    .line 642
    iget-object v2, p0, Landroid/net/NetworkStats;->set:[I

    aget v2, v2, v7

    iput v2, v11, Landroid/net/NetworkStats$Entry;->set:I

    .line 643
    iget-object v2, p0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, v7

    iput v2, v11, Landroid/net/NetworkStats$Entry;->tag:I

    .line 646
    iget-object v3, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v4, v11, Landroid/net/NetworkStats$Entry;->uid:I

    iget v5, v11, Landroid/net/NetworkStats$Entry;->set:I

    iget v6, v11, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    move-result v9

    .line 647
    .local v9, "j":I
    const/4 v2, -0x1

    if-ne v9, v2, :cond_8e

    .line 649
    iget-object v2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 650
    iget-object v2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 651
    iget-object v2, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 652
    iget-object v2, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 653
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    .line 675
    :cond_80
    :goto_80
    invoke-virtual {v14, v11}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 639
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 637
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v14    # "result":Landroid/net/NetworkStats;
    :cond_86
    new-instance v14, Landroid/net/NetworkStats;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v14, v12, v13, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .restart local v14    # "result":Landroid/net/NetworkStats;
    goto :goto_34

    .line 656
    .restart local v7    # "i":I
    .restart local v9    # "j":I
    :cond_8e
    iget-object v2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 657
    iget-object v2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 658
    iget-object v2, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 659
    iget-object v2, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 660
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    .line 662
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_f7

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_f7

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_f7

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_f7

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_80

    .line 664
    :cond_f7
    if-eqz p2, :cond_103

    move-object/from16 v5, p2

    move-object v6, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    .line 665
    invoke-interface/range {v5 .. v10}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 667
    :cond_103
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 668
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 669
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 670
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 671
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    goto/16 :goto_80

    .line 678
    .end local v9    # "j":I
    :cond_137
    return-object v14
.end method

.method public static tagToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # I

    .prologue
    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .registers 26
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxBytes"    # J
    .param p4, "rxPackets"    # J
    .param p6, "txBytes"    # J
    .param p8, "txPackets"    # J

    .prologue
    .line 251
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .registers 8
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 267
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    iget v2, p0, Landroid/net/NetworkStats;->capacity:I

    if-lt v1, v2, :cond_5e

    .line 268
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 269
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 270
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 271
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 272
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 273
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 274
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 275
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 276
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 277
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 278
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 281
    .end local v0    # "newLength":I
    :cond_5e
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 282
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    aput v3, v1, v2

    .line 283
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    aput v3, v1, v2

    .line 284
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    aput v3, v1, v2

    .line 285
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v4, v1, v2

    .line 286
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v4, v1, v2

    .line 287
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v4, v1, v2

    .line 288
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v4, v1, v2

    .line 289
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v4, v1, v2

    .line 290
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/NetworkStats;->size:I

    .line 292
    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .registers 34
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 258
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public clone()Landroid/net/NetworkStats;
    .registers 7

    .prologue
    .line 239
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 240
    .local v0, "clone":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 241
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_19

    .line 242
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 245
    :cond_19
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .registers 5
    .param p1, "another"    # Landroid/net/NetworkStats;

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_10

    .line 376
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 377
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 379
    :cond_10
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .registers 8
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 356
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v0

    .line 357
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 359
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 367
    :goto_12
    return-object p0

    .line 361
    :cond_13
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 362
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 363
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 364
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 365
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    goto :goto_12
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .registers 34
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 346
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .registers 30
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tag"    # I
    .param p4, "rxBytes"    # J
    .param p6, "rxPackets"    # J
    .param p8, "txBytes"    # J
    .param p10, "txPackets"    # J
    .param p12, "operations"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineValues(IJJZ)V
    .registers 13
    .param p1, "i"    # I
    .param p2, "bytes"    # J
    .param p4, "packets"    # J
    .param p6, "add"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 410
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 423
    :goto_5
    return-void

    .line 413
    :cond_6
    if-eqz p6, :cond_17

    .line 414
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v0, p1

    add-long/2addr v2, p2

    aput-wide v2, v0, p1

    .line 415
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v0, p1

    add-long/2addr v2, p4

    aput-wide v2, v0, p1

    goto :goto_5

    .line 417
    :cond_17
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v0, p1

    sub-long/2addr v2, p2

    aput-wide v2, v0, p1

    .line 418
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v0, p1

    sub-long/2addr v2, p4

    aput-wide v2, v0, p1

    .line 419
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aput-wide v4, v0, p1

    .line 420
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aput-wide v4, v0, p1

    goto :goto_5
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 756
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    const-string v1, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 758
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_9a

    .line 759
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    const-string v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 762
    const-string v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 763
    const-string v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    const-string v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    const-string v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 766
    const-string v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 767
    const-string v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 768
    const-string v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 769
    const-string v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 771
    :cond_9a
    return-void
.end method

.method public findIndex(Ljava/lang/String;III)I
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_25

    .line 386
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_22

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_22

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_22

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 391
    .end local v0    # "i":I
    :goto_21
    return v0

    .line 385
    .restart local v0    # "i":I
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 391
    :cond_25
    const/4 v0, -0x1

    goto :goto_21
.end method

.method public findIndexHinted(Ljava/lang/String;IIII)I
    .registers 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "hintIndex"    # I

    .prologue
    .line 434
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_1
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_3c

    .line 435
    div-int/lit8 v0, v2, 0x2

    .line 439
    .local v0, "halfOffset":I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2e

    .line 440
    add-int v3, p5, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .line 445
    .local v1, "i":I
    :goto_11
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_39

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_39

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_39

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 450
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :goto_2d
    return v1

    .line 442
    .restart local v0    # "halfOffset":I
    :cond_2e
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p5

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1    # "i":I
    goto :goto_11

    .line 434
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 450
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :cond_3c
    const/4 v1, -0x1

    goto :goto_2d
.end method

.method public getElapsedRealtime()J
    .registers 3

    .prologue
    .line 313
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .registers 5

    .prologue
    .line 325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 5
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 512
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .registers 5
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p2, "limitUid"    # I

    .prologue
    .line 520
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .registers 5
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .line 528
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .registers 7

    .prologue
    .line 504
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 505
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 5
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 532
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPackets()J
    .registers 9

    .prologue
    .line 578
    const-wide/16 v2, 0x0

    .line 579
    .local v2, "total":J
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_15

    .line 580
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v1, v0

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 579
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 582
    :cond_15
    return-wide v2
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 473
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 474
    .local v3, "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_9
    if-ge v1, v4, :cond_17

    aget-object v2, v0, v1

    .line 475
    .local v2, "iface":Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v2, v5, :cond_14

    .line 476
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 479
    .end local v2    # "iface":Ljava/lang/String;
    :cond_17
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getUniqueUids()[I
    .registers 10

    .prologue
    .line 486
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 487
    .local v7, "uids":Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v3, :cond_14

    aget v6, v0, v2

    .line 488
    .local v6, "uid":I
    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 487
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 491
    .end local v6    # "uid":I
    :cond_14
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 492
    .local v5, "size":I
    new-array v4, v5, [I

    .line 493
    .local v4, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, v5, :cond_26

    .line 494
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    aput v8, v4, v1

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 496
    :cond_26
    return-object v4
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 7
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 299
    if-eqz p2, :cond_3a

    move-object v0, p2

    .line 300
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_3
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 301
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 302
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 303
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 304
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 305
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 306
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 307
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 308
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 309
    return-object v0

    .line 299
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_3a
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_3
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 686
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 688
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 689
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 690
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 691
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 692
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 694
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_4a

    .line 696
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_28

    .line 694
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 698
    :cond_28
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 699
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 700
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 701
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 702
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 703
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_25

    .line 706
    :cond_4a
    return-object v2
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .registers 7

    .prologue
    .line 714
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 716
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 717
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 718
    const/4 v3, -0x1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 719
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 721
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_4e

    .line 723
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_26

    .line 721
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 725
    :cond_26
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 726
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 727
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 728
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 729
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 730
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 731
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_23

    .line 734
    :cond_4e
    return-object v2
.end method

.method public internalSize()I
    .registers 2

    .prologue
    .line 334
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    return v0
.end method

.method public modifyValues(ILandroid/net/NetworkStats$Entry;)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 397
    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    if-nez p2, :cond_6

    .line 404
    :cond_5
    :goto_5
    return-void

    .line 400
    :cond_6
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v2, v0, p1

    .line 401
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v2, v0, p1

    .line 402
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v2, v0, p1

    .line 403
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v2, v0, p1

    goto :goto_5
.end method

.method public setElapsedRealtime(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 317
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 318
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .registers 8
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .prologue
    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v2, :cond_2e

    .line 460
    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/net/NetworkStats;->set:[I

    aget v4, v4, v0

    iget-object v5, p0, Landroid/net/NetworkStats;->tag:[I

    aget v5, v5, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v1

    .line 461
    .local v1, "j":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_25

    .line 462
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 459
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    :cond_25
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    aput-wide v4, v2, v0

    goto :goto_22

    .line 467
    .end local v1    # "j":I
    :cond_2e
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3
    .param p1, "right"    # Landroid/net/NetworkStats;

    .prologue
    const/4 v0, 0x0

    .line 591
    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 798
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 799
    .local v0, "writer":Ljava/io/CharArrayWriter;
    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 800
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .registers 8
    .param p1, "uids"    # [I

    .prologue
    .line 742
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 744
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 745
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_25

    .line 746
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 747
    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_22

    .line 748
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 745
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 752
    :cond_25
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 223
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 224
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 228
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 229
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 230
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 231
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 232
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 233
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 234
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 235
    return-void
.end method
