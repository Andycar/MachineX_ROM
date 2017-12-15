.class public Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;
.super Ljava/lang/Object;
.source "AbsCocktailLoadablePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnCocktailClickHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v9, 0x0

    .line 42
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {p1, v1, v2, v3, v4}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v8

    .line 45
    .local v8, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_28
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_28} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_36

    .line 56
    const/4 v1, 0x1

    .end local v0    # "context":Landroid/content/Context;
    .end local v8    # "opts":Landroid/app/ActivityOptions;
    :goto_29
    return v1

    .line 48
    :catch_2a
    move-exception v7

    .line 49
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    # getter for: Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot send pending intent: "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v9

    .line 50
    goto :goto_29

    .line 51
    .end local v7    # "e":Landroid/content/IntentSender$SendIntentException;
    :catch_36
    move-exception v7

    .line 52
    .local v7, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot send pending intent due to unknown exception: "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v9

    .line 54
    goto :goto_29
.end method
