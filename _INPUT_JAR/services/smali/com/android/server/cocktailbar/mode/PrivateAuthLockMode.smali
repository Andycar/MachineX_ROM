.class public Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateAuthLockMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAuthLockObserver:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 25
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;

    invoke-direct {v0, p0, p3}, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;-><init>(Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->mAuthLockObserver:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;

    .line 26
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedCocktailType()I
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "authlock"

    return-object v0
.end method

.method isEnableMode()Z
    .registers 5

    .prologue
    .line 66
    const-string v0, "lock"

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "missing_phone_lock"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method
