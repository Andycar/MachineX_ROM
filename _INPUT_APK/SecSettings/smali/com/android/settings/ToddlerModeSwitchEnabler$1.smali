.class Lcom/android/settings/ToddlerModeSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "ToddlerModeSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ToddlerModeSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$1;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$1;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$000(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$1;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$000(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$1;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$000(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 92
    :cond_0
    return-void
.end method
