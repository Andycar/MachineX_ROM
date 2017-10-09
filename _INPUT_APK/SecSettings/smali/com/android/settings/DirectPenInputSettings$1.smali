.class Lcom/android/settings/DirectPenInputSettings$1;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DirectPenInputSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 161
    const/16 v2, 0x14

    if-ne p2, v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v2}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 163
    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v2}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 164
    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v2}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 173
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 168
    const/16 v2, 0x13

    if-ne p2, v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v2}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 173
    goto :goto_0
.end method
