.class final Lcom/android/server/input/InputManagerService$VibratorToken;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorToken"
.end annotation


# instance fields
.field public final mDeviceId:I

.field public final mToken:Landroid/os/IBinder;

.field public final mTokenValue:I

.field public mVibrating:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    .registers 5
    .param p2, "deviceId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "tokenValue"    # I

    .prologue
    .line 2617
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2618
    iput p2, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    .line 2619
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    .line 2620
    iput p4, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    .line 2621
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 2629
    return-void
.end method
