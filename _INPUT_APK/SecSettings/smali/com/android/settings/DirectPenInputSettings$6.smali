.class Lcom/android/settings/DirectPenInputSettings$6;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V
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
    .line 432
    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$6;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$6;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$1100(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$6;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$1100(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 438
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 439
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$6;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v0, v1}, Lcom/android/settings/DirectPenInputSettings;->access$502(Lcom/android/settings/DirectPenInputSettings;Z)Z

    .line 440
    return-void
.end method
