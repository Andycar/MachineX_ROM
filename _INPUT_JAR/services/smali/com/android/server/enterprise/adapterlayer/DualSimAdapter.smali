.class public Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;
.super Ljava/lang/Object;
.source "DualSimAdapter.java"


# static fields
.field public static final SIM_NOT_FOUND:I = 0xff

.field public static final SIM_SLOT_1:I = 0x0

.field public static final SIM_SLOT_2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DualSimPolicyService"

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getActiveSimForData()I
    .registers 1

    .prologue
    .line 165
    const/4 v0, -0x1

    return v0
.end method

.method public static getDefaultSimForVoiceCalls()I
    .registers 1

    .prologue
    .line 107
    const/4 v0, -0x1

    return v0
.end method

.method public static getIccId(I)Ljava/lang/String;
    .registers 2
    .param p0, "slot"    # I

    .prologue
    .line 156
    const-string v0, ""

    return-object v0
.end method

.method public static getIccSlot(Ljava/lang/String;)I
    .registers 2
    .param p0, "iccId"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, -0x1

    return v0
.end method

.method public static getInsertedSimCount()I
    .registers 1

    .prologue
    .line 78
    const/4 v0, -0x1

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;
    .registers 2

    .prologue
    .line 52
    const-class v1, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    if-nez v0, :cond_e

    .line 53
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    .line 58
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSimSerialNumber(I)Ljava/lang/String;
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 73
    const-string v0, ""

    return-object v0
.end method

.method public static hasIccCard(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public static isMultiSimEnabled()Z
    .registers 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public static setActiveSimForData(I)V
    .registers 1
    .param p0, "simSlot"    # I

    .prologue
    .line 161
    return-void
.end method

.method public static setDefaultSimForVoiceCalls(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public static switchToSimDataNetwork(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method
