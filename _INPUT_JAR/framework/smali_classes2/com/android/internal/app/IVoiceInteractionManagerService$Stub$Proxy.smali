.class Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceInteractionManagerService.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 224
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteKeyphraseSoundModel(ILjava/lang/String;)I
    .registers 9
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_28

    move-result v2

    .line 394
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 397
    return v2

    .line 394
    .end local v2    # "_result":I
    :catchall_28
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 263
    if-eqz p2, :cond_3c

    invoke-interface {p2}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 264
    if-eqz p3, :cond_21

    invoke-interface {p3}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_21
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 265
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_3e

    move-result v3

    if-eqz v3, :cond_35

    const/4 v2, 0x1

    .line 270
    .local v2, "_result":Z
    :cond_35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    return v2

    .end local v2    # "_result":Z
    :cond_3c
    move-object v4, v3

    .line 263
    goto :goto_18

    .line 270
    :catchall_3e
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public finish(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 308
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    return-void

    .line 312
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 8
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 405
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 408
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    if-eqz p1, :cond_36

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 410
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_38

    .line 413
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3a

    .line 420
    .local v2, "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 423
    return-object v2

    .line 409
    .end local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :cond_36
    const/4 v3, 0x0

    goto :goto_13

    .line 416
    :cond_38
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    goto :goto_2f

    .line 420
    .end local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catchall_3a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    const-string v0, "com.android.internal.app.IVoiceInteractionManagerService"

    return-object v0
.end method

.method public getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 9
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    .line 335
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_34

    .line 342
    .local v2, "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :goto_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    return-object v2

    .line 338
    .end local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :cond_32
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    goto :goto_2b

    .line 342
    .end local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_34
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z
    .registers 10
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 440
    if-eqz p1, :cond_36

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 441
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_38

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v2, 0x1

    .line 448
    .local v2, "_result":Z
    :cond_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 451
    return v2

    .line 440
    .end local v2    # "_result":Z
    :cond_36
    const/4 v3, 0x0

    goto :goto_14

    .line 448
    :catchall_38
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 12
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p5, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v4, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 463
    if-eqz p1, :cond_46

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_14
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 464
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    if-eqz p4, :cond_23

    invoke-interface {p4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 467
    if-eqz p5, :cond_48

    .line 468
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v3, 0x0

    invoke-virtual {p5, v0, v3}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 474
    :goto_30
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_4d

    move-result v2

    .line 479
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 482
    return v2

    .end local v2    # "_result":I
    :cond_46
    move-object v4, v3

    .line 463
    goto :goto_14

    .line 472
    :cond_48
    const/4 v3, 0x0

    :try_start_49
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_30

    .line 479
    :catchall_4d
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public startSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "sessionArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 236
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    if-eqz p1, :cond_31

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 240
    if-eqz p2, :cond_33

    .line 241
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    :goto_20
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_38

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    return-void

    .line 239
    :cond_31
    const/4 v2, 0x0

    goto :goto_13

    .line 245
    :cond_33
    const/4 v2, 0x0

    :try_start_34
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_20

    .line 251
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 283
    if-eqz p2, :cond_32

    .line 284
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 290
    :goto_1a
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_37

    move-result v2

    .line 296
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    return v2

    .line 288
    .end local v2    # "_result":I
    :cond_32
    const/4 v3, 0x0

    :try_start_33
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_1a

    .line 296
    :catchall_37
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 10
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 493
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v4, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 494
    if-eqz p1, :cond_39

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_14
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 495
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    if-eqz p3, :cond_20

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 497
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_3b

    move-result v2

    .line 502
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 505
    return v2

    .end local v2    # "_result":I
    :cond_39
    move-object v4, v3

    .line 494
    goto :goto_14

    .line 502
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 8
    .param p1, "model"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 356
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 357
    if-eqz p1, :cond_2c

    .line 358
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 364
    :goto_17
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_31

    move-result v2

    .line 369
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    return v2

    .line 362
    .end local v2    # "_result":I
    :cond_2c
    const/4 v3, 0x0

    :try_start_2d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_17

    .line 369
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
