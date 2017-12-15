.class public final enum Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;
.super Ljava/lang/Enum;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

.field public static final enum APP_GENERIC:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

.field public static final enum APP_MINI_MODE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

.field public static final enum TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 684
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    const-string v1, "APP_GENERIC"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->APP_GENERIC:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    const-string v1, "APP_MINI_MODE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->APP_MINI_MODE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    const-string v1, "TOGGLE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->APP_GENERIC:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->APP_MINI_MODE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->$VALUES:[Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

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
    .line 684
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 684
    const-class v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;
    .registers 1

    .prologue
    .line 684
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->$VALUES:[Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    invoke-virtual {v0}, [Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    return-object v0
.end method
