.class public Lcom/android/server/cocktailbar/mode/NormalMode;
.super Ljava/lang/Object;
.source "NormalMode.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public getCocktailType()I
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public getModeId()I
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegistrationType()I
    .registers 2

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public renewMode(I)I
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/NormalMode;->getModeId()I

    move-result v0

    return v0
.end method
