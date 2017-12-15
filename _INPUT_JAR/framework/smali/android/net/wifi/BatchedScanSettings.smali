.class public Landroid/net/wifi/BatchedScanSettings;
.super Ljava/lang/Object;
.source "BatchedScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/BatchedScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AP_FOR_DISTANCE:I = 0x0

.field public static final DEFAULT_AP_PER_SCAN:I = 0x10

.field public static final DEFAULT_INTERVAL_SEC:I = 0x1e

.field public static final DEFAULT_SCANS_PER_BATCH:I = 0x14

.field public static final MAX_AP_FOR_DISTANCE:I = 0x10

.field public static final MAX_AP_PER_SCAN:I = 0x10

.field public static final MAX_INTERVAL_SEC:I = 0x1f4

.field public static final MAX_SCANS_PER_BATCH:I = 0x14

.field public static final MAX_WIFI_CHANNEL:I = 0xc4

.field public static final MIN_AP_FOR_DISTANCE:I = 0x0

.field public static final MIN_AP_PER_SCAN:I = 0x2

.field public static final MIN_INTERVAL_SEC:I = 0xa

.field public static final MIN_SCANS_PER_BATCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BatchedScanSettings"

.field public static final UNSPECIFIED:I = 0x7fffffff


# instance fields
.field public channelSet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxApForDistance:I

.field public maxApPerScan:I

.field public maxScansPerBatch:I

.field public scanIntervalSec:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 241
    new-instance v0, Landroid/net/wifi/BatchedScanSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/BatchedScanSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p0}, Landroid/net/wifi/BatchedScanSettings;->clear()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/BatchedScanSettings;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 104
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 105
    iget-object v0, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v0, :cond_18

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    .line 108
    :cond_18
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 109
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    .line 110
    return-void
.end method

.method private channelSetIsValid()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 122
    :cond_d
    :goto_d
    return v3

    .line 114
    :cond_e
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "channel":Ljava/lang/String;
    :try_start_20
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_23} :catch_3c

    move-result v1

    .line 117
    .local v1, "i":I
    if-lez v1, :cond_2a

    const/16 v4, 0xc4

    if-le v1, v4, :cond_14

    .line 119
    .end local v1    # "i":I
    :cond_2a
    :goto_2a
    const-string v4, "A"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "B"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 120
    const/4 v3, 0x0

    goto :goto_d

    .line 118
    :catch_3c
    move-exception v4

    goto :goto_2a
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const v1, 0x7fffffff

    .line 95
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 96
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    .line 98
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 99
    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    .line 100
    return-void
.end method

.method public constrain()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x14

    const v4, 0x7fffffff

    const/4 v3, 0x2

    const/16 v2, 0x10

    .line 140
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ne v0, v4, :cond_24

    .line 141
    const/16 v0, 0x1e

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 148
    :cond_11
    :goto_11
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ne v0, v4, :cond_3a

    .line 149
    iput v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 156
    :cond_17
    :goto_17
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v0, v4, :cond_48

    .line 157
    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 164
    :cond_1d
    :goto_1d
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ne v0, v4, :cond_56

    .line 165
    iput v6, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    .line 171
    :cond_23
    :goto_23
    return-void

    .line 142
    :cond_24
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2f

    .line 143
    const/16 v0, 0xa

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    goto :goto_11

    .line 144
    :cond_2f
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_11

    .line 145
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    goto :goto_11

    .line 150
    :cond_3a
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ge v0, v3, :cond_41

    .line 151
    iput v3, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    goto :goto_17

    .line 152
    :cond_41
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-le v0, v5, :cond_17

    .line 153
    iput v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    goto :goto_17

    .line 158
    :cond_48
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ge v0, v3, :cond_4f

    .line 159
    iput v3, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    goto :goto_1d

    .line 160
    :cond_4f
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-le v0, v2, :cond_1d

    .line 161
    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    goto :goto_1d

    .line 166
    :cond_56
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-gez v0, :cond_5d

    .line 167
    iput v6, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    goto :goto_23

    .line 168
    :cond_5d
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-le v0, v2, :cond_23

    .line 169
    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    goto :goto_23
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 176
    instance-of v2, p1, Landroid/net/wifi/BatchedScanSettings;

    if-nez v2, :cond_6

    .line 185
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 177
    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 178
    .local v0, "o":Landroid/net/wifi/BatchedScanSettings;
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ne v2, v3, :cond_5

    .line 182
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v2, :cond_2b

    .line 183
    iget-object v2, v0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    .line 185
    :cond_2b
    iget-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    iget-object v2, v0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 190
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    return v0
.end method

.method public isInvalid()Z
    .registers 7

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x2

    const v3, 0x7fffffff

    const/4 v0, 0x1

    .line 126
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-eq v1, v3, :cond_16

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-lt v1, v4, :cond_15

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_16

    .line 135
    :cond_15
    :goto_15
    return v0

    .line 128
    :cond_16
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-eq v1, v3, :cond_22

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-lt v1, v4, :cond_15

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-gt v1, v5, :cond_15

    .line 130
    :cond_22
    invoke-direct {p0}, Landroid/net/wifi/BatchedScanSettings;->channelSetIsValid()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 131
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-eq v1, v3, :cond_38

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_15

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_15

    .line 133
    :cond_38
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-eq v1, v3, :cond_44

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ltz v1, :cond_15

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-gt v1, v5, :cond_15

    .line 135
    :cond_44
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const v6, 0x7fffffff

    .line 199
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v2, "<none>"

    .line 202
    .local v2, "none":Ljava/lang/String;
    const-string v4, "BatchScanSettings [maxScansPerBatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ne v4, v6, :cond_5d

    move-object v4, v2

    :goto_15
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", maxApPerScan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v4, v6, :cond_64

    move-object v4, v2

    :goto_24
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", scanIntervalSec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ne v4, v6, :cond_6b

    move-object v4, v2

    :goto_33
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", maxApForDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ne v5, v6, :cond_72

    .end local v2    # "none":Ljava/lang/String;
    :goto_41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", channelSet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v4, :cond_79

    .line 211
    const-string v4, "ALL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    :goto_53
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 202
    .restart local v2    # "none":Ljava/lang/String;
    :cond_5d
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_15

    :cond_64
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_24

    :cond_6b
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_33

    :cond_72
    iget v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_41

    .line 213
    .end local v2    # "none":Ljava/lang/String;
    :cond_79
    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    .local v0, "channel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_84

    .line 217
    .end local v0    # "channel":Ljava/lang/String;
    :cond_a7
    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_53
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 230
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v2, :cond_36

    const/4 v2, 0x0

    :goto_19
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v2, :cond_3d

    .line 236
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "channel":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_26

    .line 234
    .end local v0    # "channel":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_36
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_19

    .line 238
    :cond_3d
    return-void
.end method
