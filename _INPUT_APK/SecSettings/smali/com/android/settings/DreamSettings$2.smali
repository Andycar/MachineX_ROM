.class Lcom/android/settings/DreamSettings$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/settings/DreamSettings$2;->this$0:Lcom/android/settings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x17

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 251
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    if-eq p2, v5, :cond_0

    if-ne p2, v4, :cond_3

    .line 253
    :cond_0
    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, "row":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/DreamSettings$2;->this$0:Lcom/android/settings/DreamSettings;

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->access$600(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DreamBackend$DreamInfo;

    invoke-static {v3, v1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->access$700(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Lcom/android/settings/DreamBackend$DreamInfo;)V

    :cond_1
    move v1, v2

    .line 267
    .end local v0    # "row":Landroid/view/View;
    :cond_2
    :goto_0
    return v1

    .line 260
    .restart local p1    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    if-eq p2, v5, :cond_4

    if-ne p2, v4, :cond_2

    .line 262
    :cond_4
    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 263
    .restart local v0    # "row":Landroid/view/View;
    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_5
    move v1, v2

    .line 265
    goto :goto_0
.end method
