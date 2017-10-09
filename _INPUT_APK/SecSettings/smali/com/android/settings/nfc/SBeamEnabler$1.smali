.class Lcom/android/settings/nfc/SBeamEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "SBeamEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/SBeamEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/SBeamEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/SBeamEnabler;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 654
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.android.settings.action.SBEAM_OFF_INTERNAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 656
    const-string v5, "turn_on"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 657
    .local v3, "bOn":Z
    iget-object v5, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-static {v5, v3}, Lcom/android/settings/nfc/SBeamEnabler;->access$002(Lcom/android/settings/nfc/SBeamEnabler;Z)Z

    .line 658
    iget-object v5, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-static {v5, v8}, Lcom/android/settings/nfc/SBeamEnabler;->access$100(Lcom/android/settings/nfc/SBeamEnabler;Z)V

    .line 659
    iget-object v5, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-static {v5, v8}, Lcom/android/settings/nfc/SBeamEnabler;->access$200(Lcom/android/settings/nfc/SBeamEnabler;Z)V

    .line 688
    .end local v3    # "bOn":Z
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    const-string v5, "com.android.settings.nfc.SBeam.SBEAM_SETTING_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 662
    const-string v5, "SBeam_on_off"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 663
    .restart local v3    # "bOn":Z
    const-string v5, "sbeam_last_status"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 664
    .local v2, "bLast":Z
    const-string v5, "from_nfc"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 665
    .local v1, "bFromNfc":Z
    const-string v5, "[SBeam]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SBeamEnabler.ACTION_SBEAM_CHANGED : Cur ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Last ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] FromNfc["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v5, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-static {v5, v3}, Lcom/android/settings/nfc/SBeamEnabler;->access$002(Lcom/android/settings/nfc/SBeamEnabler;Z)Z

    .line 668
    iget-object v5, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-static {v5, v2}, Lcom/android/settings/nfc/SBeamEnabler;->access$302(Lcom/android/settings/nfc/SBeamEnabler;Z)Z

    .line 669
    iget-object v5, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-static {v5}, Lcom/android/settings/nfc/SBeamEnabler;->access$400(Lcom/android/settings/nfc/SBeamEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 671
    iget-object v5, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v6, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-static {v6}, Lcom/android/settings/nfc/SBeamEnabler;->access$400(Lcom/android/settings/nfc/SBeamEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v6

    invoke-static {v5, v6, v9, v1}, Lcom/android/settings/nfc/SBeamEnabler;->access$500(Lcom/android/settings/nfc/SBeamEnabler;ILandroid/content/Intent;Z)V

    goto :goto_0

    .line 676
    .end local v1    # "bFromNfc":Z
    .end local v2    # "bLast":Z
    .end local v3    # "bOn":Z
    :cond_2
    const-string v5, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 677
    const-string v5, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 678
    .local v4, "newState":I
    const-string v5, "[SBeam]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SBeamEnabler.ACTION_ADAPTER_STATE_CHANGED : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v5, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-static {v5, v4, v9, v8}, Lcom/android/settings/nfc/SBeamEnabler;->access$500(Lcom/android/settings/nfc/SBeamEnabler;ILandroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 684
    .end local v4    # "newState":I
    :cond_3
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 685
    const-string v5, "[SBeam]"

    const-string v6, "ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v5, p0, Lcom/android/settings/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v5}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    goto/16 :goto_0
.end method
