.class public final enum Lcom/android/server/wm/WindowManagerService$LEVEL;
.super Ljava/lang/Enum;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wm/WindowManagerService$LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/WindowManagerService$LEVEL;

.field public static final enum PARENT:Lcom/android/server/wm/WindowManagerService$LEVEL;

.field public static final enum ROOT:Lcom/android/server/wm/WindowManagerService$LEVEL;

.field public static final enum SELF:Lcom/android/server/wm/WindowManagerService$LEVEL;

.field public static final enum SIBLING:Lcom/android/server/wm/WindowManagerService$LEVEL;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14325
    new-instance v0, Lcom/android/server/wm/WindowManagerService$LEVEL;

    const-string v1, "SELF"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/WindowManagerService$LEVEL;->SELF:Lcom/android/server/wm/WindowManagerService$LEVEL;

    .line 14326
    new-instance v0, Lcom/android/server/wm/WindowManagerService$LEVEL;

    const-string v1, "PARENT"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/WindowManagerService$LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/WindowManagerService$LEVEL;->PARENT:Lcom/android/server/wm/WindowManagerService$LEVEL;

    .line 14327
    new-instance v0, Lcom/android/server/wm/WindowManagerService$LEVEL;

    const-string v1, "SIBLING"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/WindowManagerService$LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/WindowManagerService$LEVEL;->SIBLING:Lcom/android/server/wm/WindowManagerService$LEVEL;

    .line 14328
    new-instance v0, Lcom/android/server/wm/WindowManagerService$LEVEL;

    const-string v1, "ROOT"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/WindowManagerService$LEVEL;->ROOT:Lcom/android/server/wm/WindowManagerService$LEVEL;

    .line 14324
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wm/WindowManagerService$LEVEL;

    sget-object v1, Lcom/android/server/wm/WindowManagerService$LEVEL;->SELF:Lcom/android/server/wm/WindowManagerService$LEVEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wm/WindowManagerService$LEVEL;->PARENT:Lcom/android/server/wm/WindowManagerService$LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wm/WindowManagerService$LEVEL;->SIBLING:Lcom/android/server/wm/WindowManagerService$LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wm/WindowManagerService$LEVEL;->ROOT:Lcom/android/server/wm/WindowManagerService$LEVEL;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/wm/WindowManagerService$LEVEL;->$VALUES:[Lcom/android/server/wm/WindowManagerService$LEVEL;

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
    .line 14324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/WindowManagerService$LEVEL;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14324
    const-class v0, Lcom/android/server/wm/WindowManagerService$LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService$LEVEL;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wm/WindowManagerService$LEVEL;
    .registers 1

    .prologue
    .line 14324
    sget-object v0, Lcom/android/server/wm/WindowManagerService$LEVEL;->$VALUES:[Lcom/android/server/wm/WindowManagerService$LEVEL;

    invoke-virtual {v0}, [Lcom/android/server/wm/WindowManagerService$LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/WindowManagerService$LEVEL;

    return-object v0
.end method
