.class Lcom/android/settings/GridSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "GridSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/settings/GridSettings$2;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 533
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.settings.Favorite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/android/settings/GridSettings$2;->this$0:Lcom/android/settings/GridSettings;

    iget-object v2, p0, Lcom/android/settings/GridSettings$2;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v2}, Lcom/android/settings/GridSettings;->access$100(Lcom/android/settings/GridSettings;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/GridSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    const-string v1, "com.android.settings.Search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-static {}, Lcom/android/settings/GridSettings;->callSearchMenu()V

    goto :goto_0
.end method
