.class public final enum Lcom/android/server/display/CmdInfo$CmdType;
.super Ljava/lang/Enum;
.source "CmdInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/CmdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/CmdInfo$CmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/CmdInfo$CmdType;

.field public static final enum SET_BUSY_FLAG:Lcom/android/server/display/CmdInfo$CmdType;

.field public static final enum SET_IP:Lcom/android/server/display/CmdInfo$CmdType;

.field public static final enum START_PLAYER:Lcom/android/server/display/CmdInfo$CmdType;

.field public static final enum START_SOURCE:Lcom/android/server/display/CmdInfo$CmdType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/android/server/display/CmdInfo$CmdType;

    const-string v1, "SET_IP"

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/CmdInfo$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/CmdInfo$CmdType;->SET_IP:Lcom/android/server/display/CmdInfo$CmdType;

    .line 9
    new-instance v0, Lcom/android/server/display/CmdInfo$CmdType;

    const-string v1, "START_PLAYER"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/CmdInfo$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/CmdInfo$CmdType;->START_PLAYER:Lcom/android/server/display/CmdInfo$CmdType;

    .line 10
    new-instance v0, Lcom/android/server/display/CmdInfo$CmdType;

    const-string v1, "START_SOURCE"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/CmdInfo$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/CmdInfo$CmdType;->START_SOURCE:Lcom/android/server/display/CmdInfo$CmdType;

    .line 11
    new-instance v0, Lcom/android/server/display/CmdInfo$CmdType;

    const-string v1, "SET_BUSY_FLAG"

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/CmdInfo$CmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/CmdInfo$CmdType;->SET_BUSY_FLAG:Lcom/android/server/display/CmdInfo$CmdType;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/display/CmdInfo$CmdType;

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->SET_IP:Lcom/android/server/display/CmdInfo$CmdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->START_PLAYER:Lcom/android/server/display/CmdInfo$CmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->START_SOURCE:Lcom/android/server/display/CmdInfo$CmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->SET_BUSY_FLAG:Lcom/android/server/display/CmdInfo$CmdType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/display/CmdInfo$CmdType;->$VALUES:[Lcom/android/server/display/CmdInfo$CmdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/CmdInfo$CmdType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/android/server/display/CmdInfo$CmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/CmdInfo$CmdType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/CmdInfo$CmdType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/android/server/display/CmdInfo$CmdType;->$VALUES:[Lcom/android/server/display/CmdInfo$CmdType;

    invoke-virtual {v0}, [Lcom/android/server/display/CmdInfo$CmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/CmdInfo$CmdType;

    return-object v0
.end method
