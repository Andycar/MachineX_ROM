.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iput-object p2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1320
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v5, v5, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v5, :pswitch_data_0

    .line 1383
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1326
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$202(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Z)Z

    .line 1327
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v5, v5, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v5, :cond_7

    .line 1328
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1329
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "lockscreen.password_type"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1331
    .local v1, "currentpwdquality":I
    if-ne v1, v7, :cond_1

    .line 1333
    const-string v5, "minimum_quality"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1334
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v8}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1335
    .local v0, "allowBiometric":Landroid/util/MutableBoolean;
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v5, v1, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$300(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;ILandroid/util/MutableBoolean;)I

    move-result v1

    .line 1339
    .end local v0    # "allowBiometric":Landroid/util/MutableBoolean;
    :cond_1
    if-eqz v1, :cond_5

    .line 1341
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1342
    .local v3, "mIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$400(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "password"

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v6, v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$500(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1343
    :cond_2
    const-string v5, "for_ode"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1344
    :cond_3
    const-string v5, "previousStage"

    const-string v6, "ChooseLockGeneric"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1346
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_4

    .line 1347
    const-string v5, "isFromKnoxFingerRegistered"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1350
    :cond_4
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1356
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$600(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    .line 1357
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$700(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    .line 1358
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a1b57    # 1.8357542E38f

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1359
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Activity;->setResult(I)V

    .line 1360
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 1362
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1363
    .local v4, "warningClearIntent":Landroid/content/Intent;
    const-string v5, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1364
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1365
    if-eqz v4, :cond_0

    .line 1366
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1369
    :cond_6
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1373
    .end local v1    # "currentpwdquality":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "warningClearIntent":Landroid/content/Intent;
    :cond_7
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v5, v5, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v5, v7, :cond_0

    .line 1374
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v5, v5, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_8

    .line 1375
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$800(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    .line 1377
    :cond_8
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$900(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v5

    if-ne v5, v9, :cond_0

    .line 1378
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v5, v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$900(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    goto/16 :goto_0

    .line 1320
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
