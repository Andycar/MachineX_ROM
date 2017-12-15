.class public abstract Landroid/telecom/InCallService;
.super Landroid/app/Service;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/InCallService$VideoCall;,
        Landroid/telecom/InCallService$InCallServiceBinder;
    }
.end annotation


# static fields
.field private static final MSG_ADD_CALL:I = 0x2

.field private static final MSG_BRING_TO_FOREGROUND:I = 0x6

.field private static final MSG_ON_AUDIO_STATE_CHANGED:I = 0x5

.field private static final MSG_ON_CHANGE_IN_CONTENT:I = 0x7

.field private static final MSG_SET_IN_CALL_ADAPTER:I = 0x1

.field private static final MSG_SET_POST_DIAL_WAIT:I = 0x4

.field private static final MSG_UPDATE_CALL:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.InCallService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Landroid/telecom/Phone;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 62
    new-instance v0, Landroid/telecom/InCallService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$1;-><init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    .line 159
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/InCallService;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method static synthetic access$002(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/InCallService;
    .param p1, "x1"    # Landroid/telecom/Phone;

    .prologue
    .line 43
    iput-object p1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object p1
.end method

.method static synthetic access$100(Landroid/telecom/InCallService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/InCallService;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getPhone()Landroid/telecom/Phone;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    new-instance v0, Landroid/telecom/InCallService$InCallServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$1;)V

    return-object v0
.end method

.method public onPhoneCreated(Landroid/telecom/Phone;)V
    .registers 2
    .param p1, "phone"    # Landroid/telecom/Phone;

    .prologue
    .line 198
    return-void
.end method

.method public onPhoneDestroyed(Landroid/telecom/Phone;)V
    .registers 2
    .param p1, "phone"    # Landroid/telecom/Phone;

    .prologue
    .line 209
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 168
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_f

    .line 169
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    .line 170
    .local v0, "oldPhone":Landroid/telecom/Phone;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    .line 172
    invoke-virtual {v0}, Landroid/telecom/Phone;->destroy()V

    .line 173
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->onPhoneDestroyed(Landroid/telecom/Phone;)V

    .line 175
    .end local v0    # "oldPhone":Landroid/telecom/Phone;
    :cond_f
    const/4 v1, 0x0

    return v1
.end method
