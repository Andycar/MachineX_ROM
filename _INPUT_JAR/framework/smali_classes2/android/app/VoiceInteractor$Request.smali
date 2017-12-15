.class public abstract Landroid/app/VoiceInteractor$Request;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Request"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->cancel()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 188
    :goto_5
    return-void

    .line 185
    :catch_6
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractor"

    const-string v2, "Voice interactor has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 209
    iput-object v0, p0, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    .line 210
    iput-object v0, p0, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    .line 211
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public onAttached(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 202
    return-void
.end method

.method public onCancel()V
    .registers 1

    .prologue
    .line 199
    return-void
.end method

.method public onDetached()V
    .registers 1

    .prologue
    .line 205
    return-void
.end method

.method abstract submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
