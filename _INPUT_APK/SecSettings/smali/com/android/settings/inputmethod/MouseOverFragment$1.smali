.class Lcom/android/settings/inputmethod/MouseOverFragment$1;
.super Landroid/database/ContentObserver;
.source "MouseOverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/MouseOverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/MouseOverFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/MouseOverFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/inputmethod/MouseOverFragment$1;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/android/settings/inputmethod/MouseOverFragment$1;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-static {v1}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$000(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mouse_hovering"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 87
    .local v0, "MouseHoveringViewState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/MouseOverFragment$1;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-static {v1}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$100(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/inputmethod/MouseOverFragment$1;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-static {v1}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$200(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/inputmethod/MouseOverFragment$1;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-static {v1}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$300(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/inputmethod/MouseOverFragment$1;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-static {v1}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$300(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/settings/inputmethod/MouseOverFragment$1;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-static {v1}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$300(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 92
    :cond_1
    return-void
.end method
