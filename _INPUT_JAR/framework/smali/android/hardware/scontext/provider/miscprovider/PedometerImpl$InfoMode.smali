.class final enum Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;
.super Ljava/lang/Enum;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InfoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

.field public static final enum CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

.field public static final enum DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

.field public static final enum SUM:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    const-string v1, "DIFF"

    invoke-direct {v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    const-string v1, "SUM"

    invoke-direct {v0, v1, v3}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->SUM:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    const-string v1, "CUMULATIVE"

    invoke-direct {v0, v1, v4}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->SUM:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->$VALUES:[Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    return-object v0
.end method

.method public static values()[Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->$VALUES:[Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-virtual {v0}, [Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    return-object v0
.end method
