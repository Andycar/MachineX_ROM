.class Lcom/android/settings/OneHandInteractionAreaFragment$2;
.super Ljava/lang/Object;
.source "OneHandInteractionAreaFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandInteractionAreaFragment;->showMagnificationDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandInteractionAreaFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandInteractionAreaFragment;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings/OneHandInteractionAreaFragment$2;->this$0:Lcom/android/settings/OneHandInteractionAreaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 205
    iget-object v1, p0, Lcom/android/settings/OneHandInteractionAreaFragment$2;->this$0:Lcom/android/settings/OneHandInteractionAreaFragment;

    invoke-static {v1}, Lcom/android/settings/OneHandInteractionAreaFragment;->access$000(Lcom/android/settings/OneHandInteractionAreaFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OneHandInteractionAreaFragment$2;->this$0:Lcom/android/settings/OneHandInteractionAreaFragment;

    invoke-virtual {v2}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_samsungkeypad_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    return-void
.end method
