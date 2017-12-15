.class public final enum Landroid/hardware/display/DisplayManager$WfdAppState;
.super Ljava/lang/Enum;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WfdAppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/display/DisplayManager$WfdAppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/display/DisplayManager$WfdAppState;

.field public static final enum PAUSE:Landroid/hardware/display/DisplayManager$WfdAppState;

.field public static final enum RESUME:Landroid/hardware/display/DisplayManager$WfdAppState;

.field public static final enum SETUP:Landroid/hardware/display/DisplayManager$WfdAppState;

.field public static final enum TEARDOWN:Landroid/hardware/display/DisplayManager$WfdAppState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 643
    new-instance v0, Landroid/hardware/display/DisplayManager$WfdAppState;

    const-string v1, "SETUP"

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/DisplayManager$WfdAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayManager$WfdAppState;->SETUP:Landroid/hardware/display/DisplayManager$WfdAppState;

    new-instance v0, Landroid/hardware/display/DisplayManager$WfdAppState;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v3}, Landroid/hardware/display/DisplayManager$WfdAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayManager$WfdAppState;->PAUSE:Landroid/hardware/display/DisplayManager$WfdAppState;

    new-instance v0, Landroid/hardware/display/DisplayManager$WfdAppState;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v4}, Landroid/hardware/display/DisplayManager$WfdAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayManager$WfdAppState;->RESUME:Landroid/hardware/display/DisplayManager$WfdAppState;

    new-instance v0, Landroid/hardware/display/DisplayManager$WfdAppState;

    const-string v1, "TEARDOWN"

    invoke-direct {v0, v1, v5}, Landroid/hardware/display/DisplayManager$WfdAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayManager$WfdAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$WfdAppState;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hardware/display/DisplayManager$WfdAppState;

    sget-object v1, Landroid/hardware/display/DisplayManager$WfdAppState;->SETUP:Landroid/hardware/display/DisplayManager$WfdAppState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/display/DisplayManager$WfdAppState;->PAUSE:Landroid/hardware/display/DisplayManager$WfdAppState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/display/DisplayManager$WfdAppState;->RESUME:Landroid/hardware/display/DisplayManager$WfdAppState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/display/DisplayManager$WfdAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$WfdAppState;

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/display/DisplayManager$WfdAppState;->$VALUES:[Landroid/hardware/display/DisplayManager$WfdAppState;

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
    .line 643
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/display/DisplayManager$WfdAppState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 643
    const-class v0, Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager$WfdAppState;

    return-object v0
.end method

.method public static values()[Landroid/hardware/display/DisplayManager$WfdAppState;
    .registers 1

    .prologue
    .line 643
    sget-object v0, Landroid/hardware/display/DisplayManager$WfdAppState;->$VALUES:[Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v0}, [Landroid/hardware/display/DisplayManager$WfdAppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/DisplayManager$WfdAppState;

    return-object v0
.end method
