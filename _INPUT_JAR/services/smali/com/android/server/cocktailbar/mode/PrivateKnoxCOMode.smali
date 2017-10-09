.class public Lcom/android/server/cocktailbar/mode/PrivateKnoxCOMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateKnoxCOMode.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedCocktailType()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    const-string v0, "knoxmode"

    return-object v0
.end method

.method isEnableMode()Z
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxCOMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->isExistKioskContainers(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
