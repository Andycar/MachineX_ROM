.class Lcom/android/settings/nfc/SBeam$2;
.super Ljava/lang/Object;
.source "SBeam.java"

# interfaces
.implements Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/SBeam;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/SBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/SBeam;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/nfc/SBeam$2;->this$0:Lcom/android/settings/nfc/SBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Z)V
    .locals 2
    .param p1, "bOn"    # Z

    .prologue
    .line 166
    if-eqz p1, :cond_1

    .line 168
    const-string v0, "[SBeam]"

    const-string v1, "SBeam ON, createHelpStep2Dialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$2;->this$0:Lcom/android/settings/nfc/SBeam;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeam;->access$100(Lcom/android/settings/nfc/SBeam;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    if-nez p1, :cond_0

    sget-boolean v0, Lcom/android/settings/nfc/SBeam;->block_HelpStep2:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam$2;->this$0:Lcom/android/settings/nfc/SBeam;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeam;->access$200(Lcom/android/settings/nfc/SBeam;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
