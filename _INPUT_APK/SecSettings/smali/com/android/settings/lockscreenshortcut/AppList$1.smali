.class Lcom/android/settings/lockscreenshortcut/AppList$1;
.super Landroid/content/BroadcastReceiver;
.source "AppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockscreenshortcut/AppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/AppList;


# direct methods
.method constructor <init>(Lcom/android/settings/lockscreenshortcut/AppList;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/AppList$1;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 342
    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList$1;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList$1;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/AppList$1;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    invoke-static {v2}, Lcom/android/settings/lockscreenshortcut/AppList;->access$200(Lcom/android/settings/lockscreenshortcut/AppList;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/lockscreenshortcut/AppList;->SmakeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/AppList;->createList(Ljava/util/List;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList$1;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList$1;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/AppList$1;->this$0:Lcom/android/settings/lockscreenshortcut/AppList;

    invoke-static {v2}, Lcom/android/settings/lockscreenshortcut/AppList;->access$200(Lcom/android/settings/lockscreenshortcut/AppList;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/lockscreenshortcut/AppList;->NmakeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/AppList;->createList(Ljava/util/List;)V

    goto :goto_0
.end method
