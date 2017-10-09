.class Lcom/android/settings/OneHandInteractionAreaFragment$3;
.super Ljava/lang/Object;
.source "OneHandInteractionAreaFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 195
    iput-object p1, p0, Lcom/android/settings/OneHandInteractionAreaFragment$3;->this$0:Lcom/android/settings/OneHandInteractionAreaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment$3;->this$0:Lcom/android/settings/OneHandInteractionAreaFragment;

    invoke-static {v0}, Lcom/android/settings/OneHandInteractionAreaFragment;->access$000(Lcom/android/settings/OneHandInteractionAreaFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/OneHandInteractionAreaFragment$3;->this$0:Lcom/android/settings/OneHandInteractionAreaFragment;

    invoke-virtual {v0}, Lcom/android/settings/OneHandInteractionAreaFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    return-void
.end method
