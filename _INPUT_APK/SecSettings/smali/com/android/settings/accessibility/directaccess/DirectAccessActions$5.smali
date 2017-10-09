.class Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;
.super Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;
.source "DirectAccessActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->createDialog()Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-static {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->callAccessControlMode(Landroid/content/Context;)V

    .line 287
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-static {v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "direct_access_control"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-static {v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 305
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method
