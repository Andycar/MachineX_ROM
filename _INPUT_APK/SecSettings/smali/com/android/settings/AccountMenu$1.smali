.class Lcom/android/settings/AccountMenu$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccountMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccountMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/AccountMenu;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/AccountMenu$1;->this$0:Lcom/android/settings/AccountMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.android.app.sns3.TwitterSSOAccountsRemoved"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "AccountMenu"

    const-string v2, "Call refreshlist by sns"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/android/settings/AccountMenu$1;->this$0:Lcom/android/settings/AccountMenu;

    invoke-virtual {v1}, Lcom/android/settings/AccountMenu;->onResume()V

    .line 115
    :cond_0
    return-void
.end method
