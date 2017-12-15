.class Landroid/bluetooth/BtCallback$1;
.super Landroid/bluetooth/IBtUCallback$Stub;
.source "BtCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BtCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BtCallback;


# direct methods
.method constructor <init>(Landroid/bluetooth/BtCallback;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Landroid/bluetooth/BtCallback$1;->this$0:Landroid/bluetooth/BtCallback;

    invoke-direct {p0}, Landroid/bluetooth/IBtUCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 178
    const-string v4, "Service"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "serviceName":Ljava/lang/String;
    const-string v4, "BtCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback Called with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v4, p0, Landroid/bluetooth/BtCallback$1;->this$0:Landroid/bluetooth/BtCallback;

    # getter for: Landroid/bluetooth/BtCallback;->mUCallback:Landroid/bluetooth/IBtUCallback;
    invoke-static {v4}, Landroid/bluetooth/BtCallback;->access$000(Landroid/bluetooth/BtCallback;)Landroid/bluetooth/IBtUCallback;

    move-result-object v5

    monitor-enter v5

    .line 181
    :try_start_29
    iget-object v4, p0, Landroid/bluetooth/BtCallback$1;->this$0:Landroid/bluetooth/BtCallback;

    # getter for: Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;
    invoke-static {v4}, Landroid/bluetooth/BtCallback;->access$100(Landroid/bluetooth/BtCallback;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_7e

    .line 182
    :try_start_30
    iget-object v4, p0, Landroid/bluetooth/BtCallback$1;->this$0:Landroid/bluetooth/BtCallback;

    # getter for: Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;
    invoke-static {v4}, Landroid/bluetooth/BtCallback;->access$100(Landroid/bluetooth/BtCallback;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    .local v1, "it":Ljava/util/Iterator;
    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 186
    .local v2, "pairs":Ljava/util/Map$Entry;
    const-string v4, "BtCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCallback: Key is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 188
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BtCallback$BluetoothUniversalCb;

    .line 189
    .local v0, "cb":Landroid/bluetooth/BtCallback$BluetoothUniversalCb;
    invoke-interface {v0, p1}, Landroid/bluetooth/BtCallback$BluetoothUniversalCb;->onCallback(Landroid/os/Bundle;)V

    goto :goto_3e

    .line 192
    .end local v0    # "cb":Landroid/bluetooth/BtCallback$BluetoothUniversalCb;
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "pairs":Ljava/util/Map$Entry;
    :catchall_7b
    move-exception v4

    monitor-exit v6
    :try_end_7d
    .catchall {:try_start_30 .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v4

    .line 193
    :catchall_7e
    move-exception v4

    monitor-exit v5
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_7e

    throw v4

    .line 192
    .restart local v1    # "it":Ljava/util/Iterator;
    :cond_81
    :try_start_81
    monitor-exit v6
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_7b

    .line 193
    :try_start_82
    monitor-exit v5
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_7e

    .line 194
    return-void
.end method
