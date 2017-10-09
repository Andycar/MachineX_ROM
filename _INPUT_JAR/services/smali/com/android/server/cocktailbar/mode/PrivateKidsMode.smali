.class public Lcom/android/server/cocktailbar/mode/PrivateKidsMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateKidsMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mKidsModeObserver:Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 21
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;

    invoke-direct {v0, p0, p3}, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;-><init>(Lcom/android/server/cocktailbar/mode/PrivateKidsMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->mKidsModeObserver:Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;

    .line 22
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedCocktailType()I
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const-string v0, "kidsmode"

    return-object v0
.end method

.method isEnableMode()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kids_home_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method
