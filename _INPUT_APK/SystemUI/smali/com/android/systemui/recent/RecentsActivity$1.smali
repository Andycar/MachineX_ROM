.class Lcom/android/systemui/recent/RecentsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v0, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$100(Lcom/android/systemui/recent/RecentsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$200(Lcom/android/systemui/recent/RecentsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v0, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onWindowAnimationStart()V

    goto :goto_0
.end method
