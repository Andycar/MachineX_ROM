.class final enum Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;
.super Ljava/lang/Enum;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UpstreamInfoUpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

.field public static final enum UPSTREAM_IFACE_ADDED:Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

.field public static final enum UPSTREAM_IFACE_REMOVED:Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    new-instance v0, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    const-string v1, "UPSTREAM_IFACE_REMOVED"

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->UPSTREAM_IFACE_REMOVED:Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    .line 178
    new-instance v0, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    const-string v1, "UPSTREAM_IFACE_ADDED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->UPSTREAM_IFACE_ADDED:Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    sget-object v1, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->UPSTREAM_IFACE_REMOVED:Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->UPSTREAM_IFACE_ADDED:Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->$VALUES:[Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

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
    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    const-class v0, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;
    .registers 1

    .prologue
    .line 176
    sget-object v0, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->$VALUES:[Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    return-object v0
.end method
