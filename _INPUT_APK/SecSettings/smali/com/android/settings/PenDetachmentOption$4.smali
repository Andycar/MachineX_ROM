.class Lcom/android/settings/PenDetachmentOption$4;
.super Ljava/lang/Object;
.source "PenDetachmentOption.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenDetachmentOption;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenDetachmentOption;


# direct methods
.method constructor <init>(Lcom/android/settings/PenDetachmentOption;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings/PenDetachmentOption$4;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 262
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption$4;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-static {v1}, Lcom/android/settings/PenDetachmentOption;->access$1000(Lcom/android/settings/PenDetachmentOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    const-string v1, "PenDetachmentOption"

    const-string v2, "onKey() is called. And mFromQuickPanel is true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption$4;->this$0:Lcom/android/settings/PenDetachmentOption;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/android/settings/PenDetachmentOption;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 266
    .local v0, "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption$4;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-virtual {v1}, Lcom/android/settings/PenDetachmentOption;->finish()V

    .line 273
    .end local v0    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_1
    return v3
.end method
