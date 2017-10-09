.class abstract Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;
.super Ljava/lang/Thread;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MSimCheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field protected final mSubscription:I

.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "sub"    # I

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPuk:Ljava/lang/String;

    .line 210
    iput-object p3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPin:Ljava/lang/String;

    .line 211
    iput p4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mSubscription:I

    .line 212
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(II)V
.end method

.method public run()V
    .locals 7

    .prologue
    .line 218
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSimCheckSimPuk:run(), mPuk = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPuk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubscription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mSubscription:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mSubscription:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->mPin:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v3, v6}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(JLjava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 224
    .local v1, "result":[I
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supplyPukReportResult returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    new-instance v3, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;[I)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1    # "result":[I
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteException for supplyPukReportResult:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    new-instance v3, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$2;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
