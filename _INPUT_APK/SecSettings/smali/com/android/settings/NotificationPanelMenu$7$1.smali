.class Lcom/android/settings/NotificationPanelMenu$7$1;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationPanelMenu$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/NotificationPanelMenu$7;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu$7;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$7$1;->this$1:Lcom/android/settings/NotificationPanelMenu$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 538
    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$7$1;->this$1:Lcom/android/settings/NotificationPanelMenu$7;

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu$7;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$1300(Lcom/android/settings/NotificationPanelMenu;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/NotificationPanelMenu;->access$1200()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$7$1;->this$1:Lcom/android/settings/NotificationPanelMenu$7;

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu$7;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$1400(Lcom/android/settings/NotificationPanelMenu;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$7$1;->this$1:Lcom/android/settings/NotificationPanelMenu$7;

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu$7;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$1400(Lcom/android/settings/NotificationPanelMenu;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 542
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
