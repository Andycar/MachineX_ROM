.class public final Landroid/media/MediaCodecList;
.super Ljava/lang/Object;
.source "MediaCodecList.java"


# static fields
.field public static final ALL_CODECS:I = 0x1

.field public static final REGULAR_CODECS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaCodecList"

.field private static sAllCodecInfos:[Landroid/media/MediaCodecInfo;

.field private static sInitLock:Ljava/lang/Object;

.field private static sRegularCodecInfos:[Landroid/media/MediaCodecInfo;


# instance fields
.field private mCodecInfos:[Landroid/media/MediaCodecInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaCodecList;->sInitLock:Ljava/lang/Object;

    .line 176
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Landroid/media/MediaCodecList;->native_init()V

    .line 180
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 150
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "kind"    # I

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 160
    if-nez p1, :cond_d

    .line 161
    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    iput-object v0, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 165
    :goto_c
    return-void

    .line 163
    :cond_d
    sget-object v0, Landroid/media/MediaCodecList;->sAllCodecInfos:[Landroid/media/MediaCodecInfo;

    iput-object v0, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    goto :goto_c
.end method

.method static final native findCodecByName(Ljava/lang/String;)I
.end method

.method private findCodecForFormat(ZLandroid/media/MediaFormat;)Ljava/lang/String;
    .registers 10
    .param p1, "encoder"    # Z
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 211
    const-string/jumbo v6, "mime"

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "mime":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    .local v0, "arr$":[Landroid/media/MediaCodecInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v4, :cond_29

    aget-object v3, v0, v2

    .line 213
    .local v3, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eq v6, p1, :cond_18

    .line 212
    :cond_15
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 217
    :cond_18
    :try_start_18
    invoke-virtual {v3, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 218
    .local v1, "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    if-eqz v1, :cond_15

    invoke-virtual {v1, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 219
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_27} :catch_2b

    move-result-object v6

    .line 225
    .end local v1    # "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v3    # "info":Landroid/media/MediaCodecInfo;
    :goto_28
    return-object v6

    :cond_29
    const/4 v6, 0x0

    goto :goto_28

    .line 221
    .restart local v3    # "info":Landroid/media/MediaCodecInfo;
    :catch_2b
    move-exception v6

    goto :goto_15
.end method

.method static final native getCodecCapabilities(ILjava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
.end method

.method public static final getCodecCount()I
    .registers 1

    .prologue
    .line 44
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 45
    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public static final getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .registers 2
    .param p0, "index"    # I

    .prologue
    .line 59
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 60
    if-ltz p0, :cond_a

    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    if-le p0, v0, :cond_10

    .line 61
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :cond_10
    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p0

    return-object v0
.end method

.method static final native getCodecName(I)Ljava/lang/String;
.end method

.method public static getInfoFor(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 3
    .param p0, "codec"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 122
    sget-object v0, Landroid/media/MediaCodecList;->sAllCodecInfos:[Landroid/media/MediaCodecInfo;

    invoke-static {p0}, Landroid/media/MediaCodecList;->findCodecByName(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getNewCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .registers 12
    .param p0, "index"    # I

    .prologue
    .line 97
    invoke-static {p0}, Landroid/media/MediaCodecList;->getSupportedTypes(I)[Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "supportedTypes":[Ljava/lang/String;
    array-length v8, v4

    new-array v1, v8, [Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 100
    .local v1, "caps":[Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v6, 0x0

    .line 101
    .local v6, "typeIx":I
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v7, v6

    .end local v6    # "typeIx":I
    .local v7, "typeIx":I
    :goto_c
    if-ge v2, v3, :cond_1c

    aget-object v5, v0, v2

    .line 102
    .local v5, "type":Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "typeIx":I
    .restart local v6    # "typeIx":I
    invoke-static {p0, v5}, Landroid/media/MediaCodecList;->getCodecCapabilities(ILjava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v8

    aput-object v8, v1, v7

    .line 101
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "typeIx":I
    .restart local v7    # "typeIx":I
    goto :goto_c

    .line 104
    .end local v5    # "type":Ljava/lang/String;
    :cond_1c
    new-instance v8, Landroid/media/MediaCodecInfo;

    invoke-static {p0}, Landroid/media/MediaCodecList;->getCodecName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0}, Landroid/media/MediaCodecList;->isEncoder(I)Z

    move-result v10

    invoke-direct {v8, v9, v10, v1}, Landroid/media/MediaCodecInfo;-><init>(Ljava/lang/String;Z[Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    return-object v8
.end method

.method static final native getSupportedTypes(I)[Ljava/lang/String;
.end method

.method private static final initCodecList()V
    .registers 9

    .prologue
    .line 71
    sget-object v7, Landroid/media/MediaCodecList;->sInitLock:Ljava/lang/Object;

    monitor-enter v7

    .line 72
    :try_start_3
    sget-object v6, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    if-nez v6, :cond_53

    .line 73
    invoke-static {}, Landroid/media/MediaCodecList;->native_getCodecCount()I

    move-result v1

    .line 74
    .local v1, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v5, "regulars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_34

    .line 76
    .local v0, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_16
    if-ge v3, v1, :cond_37

    .line 78
    :try_start_18
    invoke-static {v3}, Landroid/media/MediaCodecList;->getNewCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 79
    .local v4, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->makeRegular()Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 81
    if-eqz v4, :cond_28

    .line 82
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_28} :catch_2b
    .catchall {:try_start_18 .. :try_end_28} :catchall_34

    .line 76
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    :cond_28
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 84
    :catch_2b
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2c
    const-string v6, "MediaCodecList"

    const-string v8, "Could not get codec capabilities"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 93
    .end local v0    # "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "index":I
    .end local v5    # "regulars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    :catchall_34
    move-exception v6

    monitor-exit v7
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_34

    throw v6

    .line 88
    .restart local v0    # "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    .restart local v3    # "index":I
    .restart local v5    # "regulars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    :cond_37
    :try_start_37
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/media/MediaCodecInfo;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/media/MediaCodecInfo;

    sput-object v6, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/media/MediaCodecInfo;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/media/MediaCodecInfo;

    sput-object v6, Landroid/media/MediaCodecList;->sAllCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 93
    :cond_53
    monitor-exit v7
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_34

    .line 94
    return-void
.end method

.method static final native isEncoder(I)Z
.end method

.method private static final native native_getCodecCount()I
.end method

.method private static final native native_init()V
.end method


# virtual methods
.method public final findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;
    .registers 3
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodecList;->findCodecForFormat(ZLandroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;
    .registers 3
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodecList;->findCodecForFormat(ZLandroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCodecInfos()[Landroid/media/MediaCodecInfo;
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    iget-object v1, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MediaCodecInfo;

    return-object v0
.end method
