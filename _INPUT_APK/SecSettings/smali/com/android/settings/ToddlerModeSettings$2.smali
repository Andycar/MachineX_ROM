.class Lcom/android/settings/ToddlerModeSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ToddlerModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ToddlerModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ToddlerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ToddlerModeSettings;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/ToddlerModeSettings$2;->this$0:Lcom/android/settings/ToddlerModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "ToddlerModeSettings"

    const-string v2, "AIRPLANE GET!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/android/settings/ToddlerModeSettings$2;->this$0:Lcom/android/settings/ToddlerModeSettings;

    invoke-static {v1}, Lcom/android/settings/ToddlerModeSettings;->access$100(Lcom/android/settings/ToddlerModeSettings;)V

    .line 76
    :cond_0
    return-void
.end method
