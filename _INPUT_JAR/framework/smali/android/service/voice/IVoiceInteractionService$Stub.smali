.class public abstract Landroid/service/voice/IVoiceInteractionService$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionService.java"

# interfaces
.implements Landroid/service/voice/IVoiceInteractionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IVoiceInteractionService"

.field static final TRANSACTION_ready:I = 0x1

.field static final TRANSACTION_shutdown:I = 0x3

.field static final TRANSACTION_soundModelsChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.service.voice.IVoiceInteractionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVoiceInteractionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.service.voice.IVoiceInteractionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/voice/IVoiceInteractionService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/service/voice/IVoiceInteractionService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_2a

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 45
    :sswitch_9
    const-string v1, "android.service.voice.IVoiceInteractionService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v1, "android.service.voice.IVoiceInteractionService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->ready()V

    goto :goto_8

    .line 56
    :sswitch_18
    const-string v1, "android.service.voice.IVoiceInteractionService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->soundModelsChanged()V

    goto :goto_8

    .line 62
    :sswitch_21
    const-string v1, "android.service.voice.IVoiceInteractionService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->shutdown()V

    goto :goto_8

    .line 41
    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_18
        0x3 -> :sswitch_21
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
