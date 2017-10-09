.class Lcom/android/server/enterprise/utils/ConstrainedState$1;
.super Landroid/content/BroadcastReceiver;
.source "ConstrainedState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/utils/ConstrainedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/utils/ConstrainedState;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState$1;->this$0:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 76
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState$1;->this$0:Lcom/android/server/enterprise/utils/ConstrainedState;

    # invokes: Lcom/android/server/enterprise/utils/ConstrainedState;->updateNotification()V
    invoke-static {v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->access$000(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    .line 78
    :cond_11
    return-void
.end method
