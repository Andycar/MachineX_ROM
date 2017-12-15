.class Lcom/samsung/android/toolbox/TwToolBoxService$1;
.super Landroid/database/ContentObserver;
.source "TwToolBoxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxService;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxService$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxService$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$100(Lcom/samsung/android/toolbox/TwToolBoxService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "toolbox_apps"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageList:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$002(Lcom/samsung/android/toolbox/TwToolBoxService;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    return-void
.end method
