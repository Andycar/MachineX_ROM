.class Landroid/os/OEMEncryption$3;
.super Landroid/content/BroadcastReceiver;
.source "OEMEncryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OEMEncryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/OEMEncryption;


# direct methods
.method constructor <init>(Landroid/os/OEMEncryption;)V
    .registers 2

    .prologue
    .line 181
    iput-object p1, p0, Landroid/os/OEMEncryption$3;->this$0:Landroid/os/OEMEncryption;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.action.3LM_NFC_FRCRESET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 186
    const/4 v1, -0x1

    .line 187
    .local v1, "nfc_state":I
    const-string v2, "OEMEncryption"

    const-string/jumbo v3, "nfc state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v2, "lockstate"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 189
    const-string v2, "OEMEncryption"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eq v1, v5, :cond_3a

    if-nez v1, :cond_43

    .line 192
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Landroid/os/OEMEncryption$3;->this$0:Landroid/os/OEMEncryption;

    # getter for: Landroid/os/OEMEncryption;->m_dem_3lm:Landroid/os/IDeviceManager3LM;
    invoke-static {v2}, Landroid/os/OEMEncryption;->access$600(Landroid/os/OEMEncryption;)Landroid/os/IDeviceManager3LM;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/os/IDeviceManager3LM;->setNfcState(I)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_44

    .line 203
    .end local v1    # "nfc_state":I
    :cond_43
    :goto_43
    return-void

    .line 195
    .restart local v1    # "nfc_state":I
    :catch_44
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OEMEncryption"

    const-string v3, "Exception caught in 3LM service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "nfc_state":I
    :cond_4d
    const-string v2, "OEMEncryption"

    const-string v3, "Dismissing the notification beacuse SD card is encrypted now."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Landroid/os/OEMEncryption$3;->this$0:Landroid/os/OEMEncryption;

    # getter for: Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/os/OEMEncryption;->access$400(Landroid/os/OEMEncryption;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_43
.end method
