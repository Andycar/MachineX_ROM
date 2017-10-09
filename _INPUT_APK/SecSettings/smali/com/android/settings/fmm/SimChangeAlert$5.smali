.class Lcom/android/settings/fmm/SimChangeAlert$5;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/SimChangeAlert;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    iput-object p2, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 313
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v2}, Lcom/android/settings/fmm/SimChangeAlert;->access$400(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "change_alert"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v2}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "change_alert"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v2}, Lcom/android/settings/fmm/SimChangeAlert;->access$600(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-static {v3}, Lcom/android/settings/fmm/SimChangeAlert;->access$500(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "change_alert"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    sput-boolean v1, Lcom/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    .line 319
    :cond_2
    return-void
.end method
