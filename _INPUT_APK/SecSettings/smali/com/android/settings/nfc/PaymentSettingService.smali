.class public Lcom/android/settings/nfc/PaymentSettingService;
.super Landroid/app/Service;
.source "PaymentSettingService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private appInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    const-string v0, "TapandpayWidget:PaymentSettingService"

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getPaymentAppInfosComponent(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/nfc/PaymentSettingService;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 86
    iget-object v5, p0, Lcom/android/settings/nfc/PaymentSettingService;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v5}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/nfc/PaymentSettingService;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 87
    iget-object v5, p0, Lcom/android/settings/nfc/PaymentSettingService;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/nfc/PaymentSettingService;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v6, "payment"

    invoke-virtual {v5, v6}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 88
    .local v4, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-nez v4, :cond_2

    .line 91
    const-string v5, "TapandpayWidget:PaymentSettingService"

    const-string v6, "appInfos is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    return-object v1

    .line 87
    .end local v1    # "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    .end local v4    # "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 95
    .restart local v1    # "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    .restart local v4    # "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 96
    .local v3, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {v0}, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;-><init>()V

    .line 97
    .local v0, "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 98
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, -0x1

    const/16 v5, -0xa

    .line 38
    if-eqz p1, :cond_0

    .line 39
    const-string v4, "INDEX"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, "index":I
    if-ne v1, v5, :cond_1

    .line 41
    const-string v4, "TapandpayWidget:PaymentSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index is not initalized. out of index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1    # "index":I
    :cond_0
    :goto_0
    if-nez p1, :cond_9

    .line 77
    const-string v4, "TapandpayWidget:PaymentSettingService"

    const-string v5, "Intetnt is null - onStartCommand"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_1
    return v3

    .line 43
    .restart local v1    # "index":I
    :cond_1
    invoke-direct {p0, p0}, Lcom/android/settings/nfc/PaymentSettingService;->getPaymentAppInfosComponent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    .line 44
    new-instance v4, Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {v4, p0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/nfc/PaymentSettingService;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 45
    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettingService;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v4, :cond_0

    .line 47
    if-eq v1, v3, :cond_2

    const/4 v4, -0x8

    if-ne v1, v4, :cond_4

    .line 48
    :cond_2
    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 54
    :cond_3
    :goto_2
    if-gez v1, :cond_6

    .line 55
    const-string v4, "TapandpayWidget:PaymentSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of index < 0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_4
    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_5

    const/4 v4, -0x6

    if-ne v1, v4, :cond_3

    .line 51
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 57
    :cond_6
    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 58
    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettingService;->appInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 59
    .local v0, "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v4, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_7

    .line 60
    iget-object v4, p0, Lcom/android/settings/nfc/PaymentSettingService;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v5, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 61
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.settings.action.NFC_PAYMENT_REFRESH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "newIntent":Landroid/content/Intent;
    const-string v4, "com.sec.android.widgetapp.tapandpay"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/PaymentSettingService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    const-string v4, "TapandpayWidget:PaymentSettingService"

    const-string v5, "Tap and pay widget update."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 66
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_7
    const-string v4, "TapandpayWidget:PaymentSettingService"

    const-string v5, "appInfo\'s componentName is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 69
    .end local v0    # "appInfo":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_8
    const-string v4, "TapandpayWidget:PaymentSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    .end local v1    # "index":I
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    goto/16 :goto_1
.end method
