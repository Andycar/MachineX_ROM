.class final enum Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;
.super Ljava/lang/Enum;
.source "PedometerAdspImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InterruptMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

.field public static final enum LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

.field public static final enum NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

.field public static final enum START:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

.field public static final enum STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

.field public static final enum UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    const-string v1, "LOGGING"

    invoke-direct {v0, v1, v4}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    const-string v1, "START"

    invoke-direct {v0, v1, v5}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v6}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    aput-object v1, v0, v6

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->$VALUES:[Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    return-object v0
.end method

.method public static values()[Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->$VALUES:[Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    invoke-virtual {v0}, [Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    return-object v0
.end method
