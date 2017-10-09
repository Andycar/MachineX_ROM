.class Lcom/android/settings/MultiWindowPrefEnabler$4;
.super Ljava/lang/Object;
.source "MultiWindowPrefEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiWindowPrefEnabler;->showTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowPrefEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowPrefEnabler;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

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

    .line 139
    iget-object v2, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-static {v2}, Lcom/android/settings/MultiWindowPrefEnabler;->access$200(Lcom/android/settings/MultiWindowPrefEnabler;)V

    .line 140
    iget-object v2, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-static {v2}, Lcom/android/settings/MultiWindowPrefEnabler;->access$100(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-static {v2}, Lcom/android/settings/MultiWindowPrefEnabler;->access$000(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    iget-object v2, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-static {v2}, Lcom/android/settings/MultiWindowPrefEnabler;->access$100(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 144
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/settings/MultiWindowPrefEnabler$4$1;

    invoke-direct {v2, p0}, Lcom/android/settings/MultiWindowPrefEnabler$4$1;-><init>(Lcom/android/settings/MultiWindowPrefEnabler$4;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.talkback_off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, "talk_back_off":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/MultiWindowPrefEnabler$4;->this$0:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-static {v2}, Lcom/android/settings/MultiWindowPrefEnabler;->access$000(Lcom/android/settings/MultiWindowPrefEnabler;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 151
    return-void
.end method
