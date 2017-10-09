.class Lcom/android/settings/MultiWindowEnabler$4;
.super Ljava/lang/Object;
.source "MultiWindowEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiWindowEnabler;->showTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowEnabler;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings/MultiWindowEnabler$4;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 289
    iget-object v2, p0, Lcom/android/settings/MultiWindowEnabler$4;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-static {v2}, Lcom/android/settings/MultiWindowEnabler;->access$200(Lcom/android/settings/MultiWindowEnabler;)V

    .line 291
    iget-object v2, p0, Lcom/android/settings/MultiWindowEnabler$4;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-static {v2}, Lcom/android/settings/MultiWindowEnabler;->access$100(Lcom/android/settings/MultiWindowEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 293
    iget-object v2, p0, Lcom/android/settings/MultiWindowEnabler$4;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-static {v2}, Lcom/android/settings/MultiWindowEnabler;->access$000(Lcom/android/settings/MultiWindowEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    iget-object v2, p0, Lcom/android/settings/MultiWindowEnabler$4;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-static {v2}, Lcom/android/settings/MultiWindowEnabler;->access$100(Lcom/android/settings/MultiWindowEnabler;)Landroid/widget/Switch;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 297
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 299
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/settings/MultiWindowEnabler$4$1;

    invoke-direct {v2, p0}, Lcom/android/settings/MultiWindowEnabler$4$1;-><init>(Lcom/android/settings/MultiWindowEnabler$4;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.talkback_off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, "talk_back_off":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/MultiWindowEnabler$4;->this$0:Lcom/android/settings/MultiWindowEnabler;

    invoke-static {v2}, Lcom/android/settings/MultiWindowEnabler;->access$000(Lcom/android/settings/MultiWindowEnabler;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 311
    return-void
.end method
