.class Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;
.super Landroid/database/ContentObserver;
.source "PrivateKidsMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/mode/PrivateKidsMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KidsModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/mode/PrivateKidsMode;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/mode/PrivateKidsMode;Landroid/os/Handler;)V
    .registers 6
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    .line 27
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 28
    iget-object v1, p1, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 29
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "kids_home_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .prologue
    .line 35
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    iget-object v2, v2, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    invoke-interface {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;->getCurrentModeId()I

    move-result v0

    .line 36
    .local v0, "currentMode":I
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    invoke-virtual {v2, v0}, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->renewMode(I)I

    move-result v1

    .line 37
    .local v1, "newMode":I
    if-eq v0, v1, :cond_4f

    .line 39
    # getter for: Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KidsModeObserver : onChange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v2, 0x1

    if-ne v1, v2, :cond_50

    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->getModeId()I

    move-result v2

    if-eq v0, v2, :cond_50

    .line 44
    # getter for: Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KidsModeObserver : skip setMode due to currentCocktailMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_4f
    :goto_4f
    return-void

    .line 49
    :cond_50
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->getModeId()I

    move-result v2

    if-ne v1, v2, :cond_66

    .line 50
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    iget-object v2, v2, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    invoke-interface {v2, v3, v4}, Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_4f

    .line 52
    :cond_66
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    iget-object v2, v2, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    invoke-interface {v2, v3, v4}, Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;->onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_4f
.end method
