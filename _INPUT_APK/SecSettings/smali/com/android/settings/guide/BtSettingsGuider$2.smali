.class Lcom/android/settings/guide/BtSettingsGuider$2;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/BtSettingsGuider;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/settings/guide/BtSettingsGuider$2;->this$0:Lcom/android/settings/guide/BtSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider$2;->this$0:Lcom/android/settings/guide/BtSettingsGuider;

    invoke-static {v0}, Lcom/android/settings/guide/BtSettingsGuider;->access$100(Lcom/android/settings/guide/BtSettingsGuider;)Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider$2;->this$0:Lcom/android/settings/guide/BtSettingsGuider;

    invoke-static {v0}, Lcom/android/settings/guide/BtSettingsGuider;->access$100(Lcom/android/settings/guide/BtSettingsGuider;)Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;->OnCloseHelpDialog()V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider$2;->this$0:Lcom/android/settings/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 526
    return-void
.end method
