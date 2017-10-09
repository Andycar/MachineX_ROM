.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;
.super Landroid/os/Handler;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/16 v5, 0x46

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1357
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1359
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1402(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1502(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1363
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH -mPreSvcSate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurSvcSate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1802(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1369
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1370
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    goto/16 :goto_0

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1379
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1802(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1380
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1384
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-eqz v0, :cond_3

    .line 1385
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f020614

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f020614

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1398
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    goto/16 :goto_0

    .line 1387
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v0, v1, :cond_4

    .line 1388
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f020615

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1389
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f020615

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_1

    .line 1391
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f0204eb

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f0204eb

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 1406
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1802(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 1409
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1411
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(NO_SVC) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1413
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1416
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1459
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1460
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2008(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    .line 1464
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-le v0, v7, :cond_12

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1469
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 1470
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1420
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-nez v0, :cond_c

    .line 1421
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 1423
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(AIRPLANE) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1425
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1428
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1429
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    goto/16 :goto_2

    .line 1432
    :cond_c
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKeepFakeState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1437
    :goto_5
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-le v0, v7, :cond_f

    .line 1439
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH level over - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1445
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 1446
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(IN_SVC) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1449
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2302(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    goto/16 :goto_0

    .line 1436
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    goto/16 :goto_5

    .line 1441
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-gez v0, :cond_d

    .line 1442
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH level under - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    goto/16 :goto_6

    .line 1455
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1456
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    goto/16 :goto_2

    .line 1461
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-le v0, v1, :cond_8

    .line 1462
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2010(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    goto/16 :goto_3

    .line 1466
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-gez v0, :cond_9

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    goto/16 :goto_4

    .line 1475
    :pswitch_1
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "CHANGE_FAKE_CALL_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$802(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1357
    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
