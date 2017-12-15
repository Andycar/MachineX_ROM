.class public Landroid/app/VoiceInteractor$ConfirmationRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmationRequest"
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;

.field final mPrompt:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "prompt"    # Ljava/lang/CharSequence;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 238
    iput-object p1, p0, Landroid/app/VoiceInteractor$ConfirmationRequest;->mPrompt:Ljava/lang/CharSequence;

    .line 239
    iput-object p2, p0, Landroid/app/VoiceInteractor$ConfirmationRequest;->mExtras:Landroid/os/Bundle;

    .line 240
    return-void
.end method


# virtual methods
.method public onConfirmationResult(ZLandroid/os/Bundle;)V
    .registers 3
    .param p1, "confirmed"    # Z
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 243
    return-void
.end method

.method submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 6
    .param p1, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Landroid/app/VoiceInteractor$ConfirmationRequest;->mPrompt:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/app/VoiceInteractor$ConfirmationRequest;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/internal/app/IVoiceInteractor;->startConfirmation(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    return-object v0
.end method
