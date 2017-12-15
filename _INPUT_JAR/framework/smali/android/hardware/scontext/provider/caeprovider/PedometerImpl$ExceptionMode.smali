.class final enum Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;
.super Ljava/lang/Enum;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ExceptionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

.field public static final enum KILL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

.field public static final enum NORMAL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

.field public static final enum RESUME:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    new-instance v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    const-string v1, "KILL"

    invoke-direct {v0, v1, v3}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    new-instance v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v4}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->$VALUES:[Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    return-object v0
.end method

.method public static values()[Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->$VALUES:[Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    invoke-virtual {v0}, [Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    return-object v0
.end method
