.class Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ImsiItemChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/appdisabler/ImsiItemChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneServiceStateListener"
.end annotation


# instance fields
.field public simNumeric:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/appdisabler/ImsiItemChecker;


# direct methods
.method private constructor <init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .registers 2

    .prologue
    .line 714
    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;
    .param p2, "x1"    # Lcom/samsung/appdisabler/ImsiItemChecker$1;

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 721
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_14

    .line 722
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;->simNumeric:Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;->this$0:Lcom/samsung/appdisabler/ImsiItemChecker;

    # invokes: Lcom/samsung/appdisabler/ImsiItemChecker;->receiveNetworkNumericFromDevice()V
    invoke-static {v0}, Lcom/samsung/appdisabler/ImsiItemChecker;->access$600(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    .line 725
    :cond_14
    return-void
.end method
