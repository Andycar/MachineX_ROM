.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
.super Ljava/lang/Object;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LDAPServiceConnection"
.end annotation


# instance fields
.field mBindComplete:Landroid/os/ConditionVariable;

.field mCallingUserId:I

.field mConnection:Landroid/content/ServiceConnection;

.field mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

.field mService:Landroid/app/enterprise/ILDAPInterface;

.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 75
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mCallingUserId:I

    .line 77
    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mService:Landroid/app/enterprise/ILDAPInterface;

    .line 78
    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 80
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mBindComplete:Landroid/os/ConditionVariable;

    .line 81
    return-void
.end method


# virtual methods
.method getCallingUserId()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mCallingUserId:I

    return v0
.end method

.method getConnection()Landroid/content/ServiceConnection;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method getReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method getService()Landroid/app/enterprise/ILDAPInterface;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mService:Landroid/app/enterprise/ILDAPInterface;

    return-object v0
.end method

.method setCallingUserId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mCallingUserId:I

    .line 89
    return-void
.end method

.method setReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 2
    .param p1, "interfaceReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    return-void
.end method

.method setService(Landroid/app/enterprise/ILDAPInterface;)V
    .registers 2
    .param p1, "service"    # Landroid/app/enterprise/ILDAPInterface;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mService:Landroid/app/enterprise/ILDAPInterface;

    .line 85
    return-void
.end method

.method setServiceConnection(Landroid/content/ServiceConnection;)V
    .registers 2
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 97
    return-void
.end method
