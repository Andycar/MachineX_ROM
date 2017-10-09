.class Lcom/android/settings/Settings$3;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/settings/Settings$3;->this$0:Lcom/android/settings/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 714
    const-string v0, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH_TO_SETTINGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/settings/Settings$3;->this$0:Lcom/android/settings/Settings;

    const-string v1, "com.android.settings.personalpage.PersonalPageSettings"

    invoke-static {v0, v1}, Lcom/android/settings/Settings;->access$100(Lcom/android/settings/Settings;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/android/settings/Settings$3;->this$0:Lcom/android/settings/Settings;

    const v1, 0x7f1006a8

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 718
    :cond_0
    return-void
.end method
