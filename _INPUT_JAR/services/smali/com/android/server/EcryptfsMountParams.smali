.class public Lcom/android/server/EcryptfsMountParams;
.super Ljava/lang/Object;
.source "EcryptfsMountParams.java"


# instance fields
.field public callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

.field public containerId:I

.field public excludeMediaTypes:I

.field public key:[B

.field public mountAndEncrypt:Z

.field public mountPath:Ljava/lang/String;

.field public newPassword:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public sourcePath:Ljava/lang/String;

.field public state:I

.field public uninstallOrStop:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;Ljava/lang/String;I)V
    .registers 12
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "mountPath"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "key"    # [B
    .param p5, "mountAndEncrypt"    # Z
    .param p6, "excludeMediaTypes"    # I
    .param p7, "containerId"    # I
    .param p8, "state"    # I
    .param p9, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    .param p10, "newPassword"    # Ljava/lang/String;
    .param p11, "uninstallOrStop"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/android/server/EcryptfsMountParams;->mountPath:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/android/server/EcryptfsMountParams;->key:[B

    .line 34
    iput-boolean p5, p0, Lcom/android/server/EcryptfsMountParams;->mountAndEncrypt:Z

    .line 35
    iput p6, p0, Lcom/android/server/EcryptfsMountParams;->excludeMediaTypes:I

    .line 36
    iput p7, p0, Lcom/android/server/EcryptfsMountParams;->containerId:I

    .line 37
    iput-object p9, p0, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .line 38
    iput-object p10, p0, Lcom/android/server/EcryptfsMountParams;->newPassword:Ljava/lang/String;

    .line 39
    iput p8, p0, Lcom/android/server/EcryptfsMountParams;->state:I

    .line 40
    iput p11, p0, Lcom/android/server/EcryptfsMountParams;->uninstallOrStop:I

    .line 41
    return-void
.end method
