.class final enum Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;
.super Ljava/lang/Enum;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

.field public static final enum DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

.field public static final enum NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

.field public static final enum POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 681
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    const-string v1, "DRAG"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    const-string v1, "POSITIONING"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->$VALUES:[Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

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
    .line 681
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 681
    const-class v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;
    .registers 1

    .prologue
    .line 681
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->$VALUES:[Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    invoke-virtual {v0}, [Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    return-object v0
.end method
