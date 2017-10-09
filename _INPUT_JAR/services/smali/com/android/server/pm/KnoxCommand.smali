.class public final enum Lcom/android/server/pm/KnoxCommand;
.super Ljava/lang/Enum;
.source "KnoxCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/pm/KnoxCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/pm/KnoxCommand;

.field public static final enum RECONCILE_PACKAGES:Lcom/android/server/pm/KnoxCommand;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/android/server/pm/KnoxCommand;

    const-string v1, "RECONCILE_PACKAGES"

    const-string v2, "knox_reconpkg"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/pm/KnoxCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/KnoxCommand;->RECONCILE_PACKAGES:Lcom/android/server/pm/KnoxCommand;

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/pm/KnoxCommand;

    sget-object v1, Lcom/android/server/pm/KnoxCommand;->RECONCILE_PACKAGES:Lcom/android/server/pm/KnoxCommand;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/pm/KnoxCommand;->$VALUES:[Lcom/android/server/pm/KnoxCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/pm/KnoxCommand;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/pm/KnoxCommand;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/android/server/pm/KnoxCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KnoxCommand;

    return-object v0
.end method

.method public static values()[Lcom/android/server/pm/KnoxCommand;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/server/pm/KnoxCommand;->$VALUES:[Lcom/android/server/pm/KnoxCommand;

    invoke-virtual {v0}, [Lcom/android/server/pm/KnoxCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/KnoxCommand;

    return-object v0
.end method


# virtual methods
.method asString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/pm/KnoxCommand;->name:Ljava/lang/String;

    return-object v0
.end method
