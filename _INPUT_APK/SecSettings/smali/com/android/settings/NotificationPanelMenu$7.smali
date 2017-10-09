.class Lcom/android/settings/NotificationPanelMenu$7;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$7;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 530
    const-string v1, "NotificationPanelMenu"

    const-string v2, "onActivityCreated() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :try_start_0
    invoke-static {}, Lcom/android/settings/NotificationPanelMenu;->access$1200()Landroid/widget/ListView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu$7;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v1}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/NotificationPanelMenu;->access$1202(Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 535
    :cond_0
    invoke-static {}, Lcom/android/settings/NotificationPanelMenu;->access$1200()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/settings/NotificationPanelMenu$7$1;

    invoke-direct {v2, p0}, Lcom/android/settings/NotificationPanelMenu$7$1;-><init>(Lcom/android/settings/NotificationPanelMenu$7;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationPanelMenu"

    const-string v2, "Exception in mSetKeyListenerRunnable"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
