.class Lcom/android/settings/inputmethod/MouseOverFragment$3;
.super Ljava/lang/Object;
.source "MouseOverFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/MouseOverFragment;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/MouseOverFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/MouseOverFragment;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 291
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 292
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-static {v0}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$300(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-static {v0}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$400(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 297
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-static {v0, v2}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$500(Lcom/android/settings/inputmethod/MouseOverFragment;Z)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-static {v0}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$100(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-static {v0}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$200(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 301
    return-void
.end method
