.class Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

.field final synthetic val$condition:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;Landroid/os/ConditionVariable;)V
    .registers 3

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->this$1:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    iput-object p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 290
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 292
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_11

    .line 293
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 295
    :cond_11
    return-void
.end method
