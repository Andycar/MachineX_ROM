.class Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;
.super Landroid/os/AsyncTask;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshAvailabiltyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/AlwaysOnHotwordDetector;


# direct methods
.method constructor <init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .registers 2

    .prologue
    .line 682
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private internalGetInitialAvailability()I
    .registers 6

    .prologue
    const/4 v2, -0x3

    .line 715
    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$100(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 717
    :try_start_8
    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I
    invoke-static {v4}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$200(Landroid/service/voice/AlwaysOnHotwordDetector;)I

    move-result v4

    if-ne v4, v2, :cond_12

    .line 718
    monitor-exit v3

    .line 737
    :goto_11
    return v2

    .line 720
    :cond_12
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_28

    .line 722
    const/4 v0, 0x0

    .line 724
    .local v0, "dspModuleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_start_14
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$800(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v2

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;
    invoke-static {v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$700(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_2b

    move-result-object v0

    .line 730
    :goto_24
    if-nez v0, :cond_34

    .line 731
    const/4 v2, -0x2

    goto :goto_11

    .line 720
    .end local v0    # "dspModuleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2

    .line 726
    .restart local v0    # "dspModuleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catch_2b
    move-exception v1

    .line 727
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AlwaysOnHotwordDetector"

    const-string v3, "RemoteException in getDspProperties!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 734
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_34
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$400(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 735
    const/4 v2, -0x1

    goto :goto_11

    .line 737
    :cond_3e
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private internalGetIsEnrolled(ILjava/util/Locale;)Z
    .registers 7
    .param p1, "keyphraseId"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 745
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;
    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$800(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$700(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result v1

    .line 750
    :goto_14
    return v1

    .line 747
    :catch_15
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AlwaysOnHotwordDetector"

    const-string v2, "RemoteException in listRegisteredKeyphraseSoundModels!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    const/4 v1, 0x0

    goto :goto_14
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 682
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 686
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->internalGetInitialAvailability()I

    move-result v0

    .line 687
    .local v0, "availability":I
    const/4 v1, 0x0

    .line 689
    .local v1, "enrolled":Z
    if-eqz v0, :cond_d

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    const/4 v2, 0x2

    if-ne v0, v2, :cond_22

    .line 692
    :cond_d
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$400(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v2

    iget v2, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;
    invoke-static {v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$500(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->internalGetIsEnrolled(ILjava/util/Locale;)Z

    move-result v1

    .line 693
    if-nez v1, :cond_36

    .line 694
    const/4 v0, 0x1

    .line 700
    :cond_22
    :goto_22
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$100(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 705
    :try_start_29
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # setter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I
    invoke-static {v2, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$202(Landroid/service/voice/AlwaysOnHotwordDetector;I)I

    .line 706
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # invokes: Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V
    invoke-static {v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$600(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    .line 707
    monitor-exit v3

    .line 708
    const/4 v2, 0x0

    return-object v2

    .line 696
    :cond_36
    const/4 v0, 0x2

    goto :goto_22

    .line 707
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw v2
.end method
