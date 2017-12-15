.class Landroid/media/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2

    .prologue
    .line 4682
    iput-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Landroid/media/AudioService$1;

    .prologue
    .line 4682
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4682
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4997
    if-eqz p1, :cond_8

    .line 4999
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 5000
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    .line 5005
    :cond_8
    :goto_8
    return-void

    .line 5001
    :catch_9
    move-exception v0

    .line 5002
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private onLoadSoundEffects()Z
    .registers 16

    .prologue
    .line 4765
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 4766
    :try_start_7
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSystemReady:Z
    invoke-static {v10}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 4767
    const-string v10, "AudioService"

    const-string/jumbo v12, "onLoadSoundEffects() called before boot complete"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    const/4 v10, 0x0

    monitor-exit v11

    .line 4883
    :goto_19
    return v10

    .line 4771
    :cond_1a
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    if-eqz v10, :cond_28

    .line 4772
    const/4 v10, 0x1

    monitor-exit v11

    goto :goto_19

    .line 4882
    :catchall_25
    move-exception v10

    monitor-exit v11
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v10

    .line 4775
    :cond_28
    :try_start_28
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->loadTouchSoundAssets()V
    invoke-static {v10}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)V

    .line 4777
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    new-instance v12, Landroid/media/SoundPool$Builder;

    invoke-direct {v12}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v12

    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v12

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$2102(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4784
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;

    .line 4785
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    new-instance v12, Landroid/media/AudioService$SoundPoolListenerThread;

    iget-object v13, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {v12, v13}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$5802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 4786
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10}, Landroid/media/AudioService;->access$5800(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 4787
    const/4 v0, 0x3

    .local v0, "attempts":I
    move v1, v0

    .line 4788
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_75
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    :try_end_7a
    .catchall {:try_start_28 .. :try_end_7a} :catchall_25

    move-result-object v10

    if-nez v10, :cond_98

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_99

    .line 4791
    :try_start_81
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_8c
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_8c} :catch_8e
    .catchall {:try_start_81 .. :try_end_8c} :catchall_25

    move v1, v0

    .line 4794
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_75

    .line 4792
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_8e
    move-exception v2

    .line 4793
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_8f
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool listener thread."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4794
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_75

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_98
    move v0, v1

    .line 4797
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_99
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v10

    if-nez v10, :cond_d9

    .line 4798
    const-string v10, "AudioService"

    const-string/jumbo v12, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_c0

    .line 4800
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 4801
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$1902(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4803
    :cond_c0
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$5802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 4804
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 4805
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$2102(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4806
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_19

    .line 4814
    :cond_d9
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 4815
    .local v7, "poolId":[I
    const/4 v4, 0x0

    .local v4, "fileIdx":I
    :goto_e4
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_f4

    .line 4816
    const/4 v10, -0x1

    aput v10, v7, v4

    .line 4815
    add-int/lit8 v4, v4, 0x1

    goto :goto_e4

    .line 4824
    :cond_f4
    const/4 v6, 0x0

    .line 4825
    .local v6, "numSamples":I
    const/4 v3, 0x0

    .local v3, "effect":I
    :goto_f6
    const/16 v10, 0xe

    if-ge v3, v10, :cond_1a6

    .line 4827
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-nez v10, :cond_10a

    .line 4825
    :goto_107
    add-int/lit8 v3, v3, 0x1

    goto :goto_f6

    .line 4830
    :cond_10a
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aget v10, v7, v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_18c

    .line 4831
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/media/audio/ui/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v10

    iget-object v13, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4834
    .local v5, "filePath":Ljava/lang/String;
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v8

    .line 4835
    .local v8, "sampleId":I
    if-gtz v8, :cond_170

    .line 4836
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Soundpool could not load file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    .line 4838
    :cond_170
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aput v8, v10, v12

    .line 4839
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aput v8, v7, v10

    .line 4840
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_107

    .line 4843
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "sampleId":I
    :cond_18c
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    iget-object v13, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    aget v13, v7, v13

    aput v13, v10, v12

    goto/16 :goto_107

    .line 4848
    :cond_1a6
    if-lez v6, :cond_1dc

    .line 4849
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/media/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_1b1
    .catchall {:try_start_8f .. :try_end_1b1} :catchall_25

    .line 4851
    const/4 v0, 0x3

    .line 4852
    const/4 v9, 0x1

    .local v9, "status":I
    move v1, v0

    .line 4853
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :goto_1b4
    const/4 v10, 0x1

    if-ne v9, v10, :cond_254

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_1dd

    .line 4855
    :try_start_1bb
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 4856
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_1cf
    .catch Ljava/lang/InterruptedException; {:try_start_1bb .. :try_end_1cf} :catch_1d2
    .catchall {:try_start_1bb .. :try_end_1cf} :catchall_25

    move-result v9

    move v1, v0

    .line 4859
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1b4

    .line 4857
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_1d2
    move-exception v2

    .line 4858
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :try_start_1d3
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool callback."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4859
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1b4

    .line 4862
    .end local v1    # "attempts":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "status":I
    .restart local v0    # "attempts":I
    :cond_1dc
    const/4 v9, -0x1

    .line 4865
    .restart local v9    # "status":I
    :cond_1dd
    :goto_1dd
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_1f4

    .line 4866
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 4867
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$1902(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4869
    :cond_1f4
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$5802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 4870
    if-eqz v9, :cond_24b

    .line 4871
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onLoadSoundEffects(), Error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " while loading samples"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    const/4 v3, 0x0

    :goto_21c
    const/16 v10, 0xe

    if-ge v3, v10, :cond_23c

    .line 4874
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-lez v10, :cond_239

    .line 4875
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, v10, v12

    .line 4873
    :cond_239
    add-int/lit8 v3, v3, 0x1

    goto :goto_21c

    .line 4879
    :cond_23c
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 4880
    iget-object v10, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$2102(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4882
    :cond_24b
    monitor-exit v11
    :try_end_24c
    .catchall {:try_start_1d3 .. :try_end_24c} :catchall_25

    .line 4883
    if-nez v9, :cond_251

    const/4 v10, 0x1

    goto/16 :goto_19

    :cond_251
    const/4 v10, 0x0

    goto/16 :goto_19

    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :cond_254
    move v0, v1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_1dd
.end method

.method private onPersistSafeVolumeState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 5012
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5015
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .registers 15
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 4918
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 4920
    :try_start_7
    invoke-direct {p0}, Landroid/media/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 4922
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 4923
    const-string v0, "AudioService"

    const-string/jumbo v1, "playSoundEffect mSoundPool == null !!!."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    monitor-exit v11

    .line 4994
    :goto_1b
    return-void

    .line 4936
    :cond_1c
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4937
    .local v2, "volFloat":F
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_60

    .line 4939
    packed-switch p1, :pswitch_data_124

    .line 4950
    :goto_2b
    :pswitch_2b
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4952
    :try_start_2d
    const-string/jumbo v0, "situation=1;device=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_37} :catch_71
    .catchall {:try_start_2d .. :try_end_37} :catchall_60

    move-result v2

    .line 4961
    :goto_38
    :try_start_38
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v0}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_7c

    .line 4962
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v1}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 4993
    :goto_5e
    monitor-exit v11

    goto :goto_1b

    .end local v2    # "volFloat":F
    :catchall_60
    move-exception v0

    monitor-exit v11
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_60

    throw v0

    .line 4944
    .restart local v2    # "volFloat":F
    :pswitch_63
    const/high16 v2, 0x3f000000    # 0.5f

    .line 4945
    goto :goto_38

    .line 4947
    :pswitch_66
    :try_start_66
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    goto :goto_2b

    .line 4953
    :catch_71
    move-exception v7

    .line 4954
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v0, "AudioService"

    const-string v1, "NumberFormatException occurred. Play default volume touch tone."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4955
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_38

    .line 4965
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_7c
    new-instance v10, Landroid/media/MediaPlayer;

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_60

    .line 4967
    .local v10, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4969
    .local v9, "filePath":Ljava/lang/String;
    invoke-virtual {v10, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 4970
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4971
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->prepare()V

    .line 4972
    invoke-virtual {v10, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 4973
    new-instance v0, Landroid/media/AudioService$AudioHandler$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$1;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v10, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4978
    new-instance v0, Landroid/media/AudioService$AudioHandler$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$2;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v10, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4984
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->start()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_d1} :catch_d2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_d1} :catch_ed
    .catch Ljava/lang/IllegalStateException; {:try_start_81 .. :try_end_d1} :catch_108
    .catchall {:try_start_81 .. :try_end_d1} :catchall_60

    goto :goto_5e

    .line 4985
    .end local v9    # "filePath":Ljava/lang/String;
    :catch_d2
    move-exception v8

    .line 4986
    .local v8, "ex":Ljava/io/IOException;
    :try_start_d3
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 4987
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_ed
    move-exception v8

    .line 4988
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 4989
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_108
    move-exception v8

    .line 4990
    .local v8, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_d3 .. :try_end_121} :catchall_60

    goto/16 :goto_5e

    .line 4939
    nop

    :pswitch_data_124
    .packed-switch 0x5
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_2b
        :pswitch_2b
        :pswitch_66
    .end packed-switch
.end method

.method private onUnloadSoundEffects()V
    .registers 8

    .prologue
    .line 4892
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4893
    :try_start_7
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    if-nez v3, :cond_11

    .line 4894
    monitor-exit v4

    .line 4915
    :goto_10
    return-void

    .line 4897
    :cond_11
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 4898
    .local v2, "poolId":[I
    const/4 v1, 0x0

    .local v1, "fileIdx":I
    :goto_1c
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 4899
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 4898
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 4902
    :cond_2c
    const/4 v0, 0x0

    .local v0, "effect":I
    :goto_2d
    const/16 v3, 0xe

    if-ge v0, v3, :cond_82

    .line 4903
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_41

    .line 4902
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 4906
    :cond_41
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_3e

    .line 4907
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v5}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 4908
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 4909
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3e

    .line 4914
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_7f
    move-exception v3

    monitor-exit v4
    :try_end_81
    .catchall {:try_start_7 .. :try_end_81} :catchall_7f

    throw v3

    .line 4912
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_82
    :try_start_82
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 4913
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2102(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4914
    monitor-exit v4
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_7f

    goto/16 :goto_10
.end method

.method private persistRingerMode(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .prologue
    .line 4756
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4760
    :goto_8
    return-void

    .line 4759
    :cond_9
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8
.end method

.method private persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .registers 8
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 4732
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4753
    :cond_8
    :goto_8
    return-void

    .line 4735
    :cond_9
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isPlatformTelevision()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_18

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 4739
    :cond_18
    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .line 4740
    .local v0, "nVolume":I
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    .line 4741
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4b

    .line 4742
    const-string/jumbo v1, "persist.audio.sysvolume"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4749
    :cond_34
    :goto_34
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_8

    .line 4743
    :cond_4b
    const/4 v1, 0x4

    if-ne p2, v1, :cond_59

    .line 4744
    const-string/jumbo v1, "persist.audio.headsetsysvolume"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 4745
    :cond_59
    const/16 v1, 0x8

    if-ne p2, v1, :cond_34

    .line 4746
    const-string/jumbo v1, "persist.audio.hphonesysvolume"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method private setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V
    .registers 6
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4719
    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4722
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 4723
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_9
    if-ltz v1, :cond_2d

    .line 4724
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_2a

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v2}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[I

    move-result-object v2

    aget v2, v2, v1

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_2a

    .line 4726
    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4723
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4729
    :cond_2d
    return-void
.end method

.method private setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .registers 13
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 4687
    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 4690
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 4691
    .local v7, "numStreamTypes":I
    add-int/lit8 v9, v7, -0x1

    .local v9, "streamType":I
    :goto_9
    if-ltz v9, :cond_4c

    .line 4692
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_49

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-ne v0, v1, :cond_49

    .line 4696
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v0, v9}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;I)I

    move-result v8

    .line 4697
    .local v8, "streamDevice":I
    if-eq p2, v8, :cond_3e

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_3e

    and-int/lit16 v0, p2, 0x380

    if-eqz v0, :cond_3e

    .line 4699
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v0}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 4701
    :cond_3e
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v0}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 4691
    .end local v8    # "streamDevice":I
    :cond_49
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 4706
    :cond_4c
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4714
    return-void
.end method

.method private setForceUse(II)V
    .registers 3
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 5008
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5009
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5018
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_464

    .line 5303
    :cond_7
    :goto_7
    return-void

    .line 5021
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_7

    .line 5025
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V

    goto :goto_7

    .line 5029
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_7

    .line 5033
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 5036
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_master"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_7

    .line 5043
    :sswitch_56
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 5046
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_master_mute"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_7

    .line 5055
    :sswitch_77
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_7

    .line 5059
    :sswitch_85
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSystemReady:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    if-eqz v1, :cond_b0

    .line 5061
    :cond_95
    const-string v1, "AudioService"

    const-string v2, "Media server died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5062
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_7

    .line 5066
    :cond_b0
    const-string v1, "AudioService"

    const-string v2, "Media server started."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_cd

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_fe

    :cond_cd
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 5076
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "realcall=on in case of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5077
    const-string/jumbo v1, "realcall=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5080
    :cond_fe
    const-string/jumbo v1, "restarting=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5082
    # invokes: Landroid/media/AudioService;->readAndSetLowRamDevice()V
    invoke-static {}, Landroid/media/AudioService;->access$6300()V

    .line 5085
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 5086
    :try_start_110
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    .line 5087
    .local v17, "set":Ljava/util/Set;
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 5088
    .local v10, "i":Ljava/util/Iterator;
    :goto_120
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 5089
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 5093
    .local v9, "device":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v3, 0x800000

    if-ne v1, v3, :cond_143

    .line 5094
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5098
    :cond_143
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_120

    .line 5103
    .end local v9    # "device":Ljava/util/Map$Entry;
    .end local v10    # "i":Ljava/util/Iterator;
    .end local v17    # "set":Ljava/util/Set;
    :catchall_158
    move-exception v1

    monitor-exit v2
    :try_end_15a
    .catchall {:try_start_110 .. :try_end_15a} :catchall_158

    throw v1

    .restart local v10    # "i":Ljava/util/Iterator;
    .restart local v17    # "set":Ljava/util/Set;
    :cond_15b
    :try_start_15b
    monitor-exit v2
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_158

    .line 5105
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 5108
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5109
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5110
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v1}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c5

    const/16 v1, 0xb

    :goto_190
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5113
    const/4 v1, 0x6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForFMRadio:I
    invoke-static {v2}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5116
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v13

    .line 5117
    .local v13, "numStreamTypes":I
    add-int/lit8 v19, v13, -0x1

    .local v19, "streamType":I
    :goto_1a5
    if-ltz v19, :cond_1c7

    .line 5118
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v1}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v18, v1, v19

    .line 5119
    .local v18, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/4 v1, 0x0

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static/range {v18 .. v18}, Landroid/media/AudioService$VolumeStreamState;->access$6500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    move/from16 v0, v19

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 5121
    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 5117
    add-int/lit8 v19, v19, -0x1

    goto :goto_1a5

    .line 5110
    .end local v13    # "numStreamTypes":I
    .end local v18    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    .end local v19    # "streamType":I
    :cond_1c5
    const/4 v1, 0x0

    goto :goto_190

    .line 5124
    .restart local v13    # "numStreamTypes":I
    .restart local v19    # "streamType":I
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->isFMPlayerActive()Z

    move-result v1

    if-eqz v1, :cond_1da

    .line 5125
    const v1, -0x7fffe000

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5129
    :cond_1da
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->access$6600(Landroid/media/AudioService;IZ)V

    .line 5132
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->restoreMasterVolume()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6700(Landroid/media/AudioService;)V

    .line 5135
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorOrientation:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_202

    .line 5136
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setOrientationForAudioSystem()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)V

    .line 5138
    :cond_202
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorRotation:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_213

    .line 5139
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setRotationForAudioSystem()V
    invoke-static {v1}, Landroid/media/AudioService;->access$1100(Landroid/media/AudioService;)V

    .line 5142
    :cond_213
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5143
    const/4 v3, 0x1

    :try_start_21d
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_286

    const/4 v1, 0x0

    :goto_228
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5146
    monitor-exit v2
    :try_end_22c
    .catchall {:try_start_21d .. :try_end_22c} :catchall_289

    .line 5148
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5149
    const/4 v3, 0x3

    :try_start_236
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mDockAudioMediaEnabled:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_28c

    const/16 v1, 0x8

    :goto_242
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5152
    monitor-exit v2
    :try_end_246
    .catchall {:try_start_236 .. :try_end_246} :catchall_28e

    .line 5153
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v1}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-eqz v1, :cond_273

    .line 5154
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v1}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v2

    monitor-enter v2

    .line 5155
    :try_start_259
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;
    invoke-static {v1}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v1

    if-eqz v1, :cond_272

    .line 5156
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 5158
    :cond_272
    monitor-exit v2
    :try_end_273
    .catchall {:try_start_259 .. :try_end_273} :catchall_291

    .line 5161
    :cond_273
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;
    invoke-static {v1}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;)Landroid/media/SamsungAudioService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SamsungAudioService;->mediaServerDied()V

    .line 5164
    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 5143
    :cond_286
    const/16 v1, 0xa

    goto :goto_228

    .line 5146
    :catchall_289
    move-exception v1

    :try_start_28a
    monitor-exit v2
    :try_end_28b
    .catchall {:try_start_28a .. :try_end_28b} :catchall_289

    throw v1

    .line 5149
    :cond_28c
    const/4 v1, 0x0

    goto :goto_242

    .line 5152
    :catchall_28e
    move-exception v1

    :try_start_28f
    monitor-exit v2
    :try_end_290
    .catchall {:try_start_28f .. :try_end_290} :catchall_28e

    throw v1

    .line 5158
    :catchall_291
    move-exception v1

    :try_start_292
    monitor-exit v2
    :try_end_293
    .catchall {:try_start_292 .. :try_end_293} :catchall_291

    throw v1

    .line 5168
    .end local v10    # "i":Ljava/util/Iterator;
    .end local v13    # "numStreamTypes":I
    .end local v17    # "set":Ljava/util/Set;
    .end local v19    # "streamType":I
    :sswitch_294
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto/16 :goto_7

    .line 5174
    :sswitch_299
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v11

    .line 5175
    .local v11, "loaded":Z
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 5176
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/media/AudioService$LoadSoundEffectReply;

    .line 5177
    .local v15, "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    monitor-enter v15

    .line 5178
    if-eqz v11, :cond_2b8

    const/4 v1, 0x0

    :goto_2ad
    :try_start_2ad
    iput v1, v15, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 5179
    invoke-virtual {v15}, Ljava/lang/Object;->notify()V

    .line 5180
    monitor-exit v15

    goto/16 :goto_7

    :catchall_2b5
    move-exception v1

    monitor-exit v15
    :try_end_2b7
    .catchall {:try_start_2ad .. :try_end_2b7} :catchall_2b5

    throw v1

    .line 5178
    :cond_2b8
    const/4 v1, -0x1

    goto :goto_2ad

    .line 5185
    .end local v11    # "loaded":Z
    .end local v15    # "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    :sswitch_2ba
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto/16 :goto_7

    .line 5190
    :sswitch_2c9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 5191
    :try_start_2d2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v3, v1}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 5192
    monitor-exit v2

    goto/16 :goto_7

    :catchall_2e2
    move-exception v1

    monitor-exit v2
    :try_end_2e4
    .catchall {:try_start_2d2 .. :try_end_2e4} :catchall_2e2

    throw v1

    .line 5197
    :sswitch_2e5
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_7

    .line 5201
    :sswitch_2f4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v1}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;)V

    goto/16 :goto_7

    .line 5206
    :sswitch_2fd
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "h2w-before-boot-completed"

    if-ne v1, v2, :cond_342

    .line 5207
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSystemReady:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_318

    .line 5208
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_4d6

    .line 5224
    :cond_318
    :goto_318
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 5211
    :sswitch_325
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const-string v4, "h2w"

    # invokes: Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Landroid/media/AudioService;->access$8100(Landroid/media/AudioService;IILjava/lang/String;)V

    .line 5213
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/AudioService;->mLateBootCompleted_WiredDevice:I
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$8202(Landroid/media/AudioService;I)I

    goto :goto_318

    .line 5222
    :cond_342
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    invoke-static {v2, v3, v4, v1}, Landroid/media/AudioService;->access$8100(Landroid/media/AudioService;IILjava/lang/String;)V

    goto :goto_318

    .line 5228
    :sswitch_358
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 5229
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 5233
    :sswitch_376
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Landroid/media/AudioService;->access$8500(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 5234
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 5238
    :sswitch_394
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 5239
    .local v8, "N":I
    if-lez v8, :cond_3d0

    .line 5241
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, v1, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 5242
    :try_start_3a7
    new-instance v16, Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 5243
    .local v16, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v2
    :try_end_3b5
    .catchall {:try_start_3a7 .. :try_end_3b5} :catchall_3cd

    .line 5244
    :goto_3b5
    if-lez v8, :cond_3d0

    .line 5245
    add-int/lit8 v8, v8, -0x1

    .line 5246
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/media/IAudioRoutesObserver;

    .line 5248
    .local v14, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_3c5
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_3ca
    .catch Landroid/os/RemoteException; {:try_start_3c5 .. :try_end_3ca} :catch_3cb

    goto :goto_3b5

    .line 5249
    :catch_3cb
    move-exception v1

    goto :goto_3b5

    .line 5243
    .end local v14    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v16    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_3cd
    move-exception v1

    :try_start_3ce
    monitor-exit v2
    :try_end_3cf
    .catchall {:try_start_3ce .. :try_end_3cf} :catchall_3cd

    throw v1

    .line 5253
    :cond_3d0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_7

    .line 5258
    .end local v8    # "N":I
    :sswitch_3db
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->onCheckMusicActive()V
    invoke-static {v1}, Landroid/media/AudioService;->access$8600(Landroid/media/AudioService;)V

    goto/16 :goto_7

    .line 5266
    :sswitch_3e4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onSendBecomingNoisyIntent(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$8700(Landroid/media/AudioService;I)V

    goto/16 :goto_7

    .line 5271
    :sswitch_3f1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/AudioService;->onSendBecomingNoisyIntent(II)V
    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->access$8800(Landroid/media/AudioService;II)V

    goto/16 :goto_7

    .line 5276
    :sswitch_402
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x11

    if-ne v1, v3, :cond_414

    const/4 v1, 0x1

    :goto_40f
    # invokes: Landroid/media/AudioService;->onConfigureSafeVolume(Z)V
    invoke-static {v2, v1}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;Z)V

    goto/16 :goto_7

    :cond_414
    const/4 v1, 0x0

    goto :goto_40f

    .line 5279
    :sswitch_416
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_7

    .line 5283
    :sswitch_421
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onBroadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;I)V

    goto/16 :goto_7

    .line 5287
    :sswitch_42e
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->onSystemReady()V

    goto/16 :goto_7

    .line 5291
    :sswitch_437
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 5292
    .local v12, "musicActiveMs":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "unsafe_volume_music_active_ms"

    const/4 v3, -0x2

    invoke-static {v1, v2, v12, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_7

    .line 5297
    .end local v12    # "musicActiveMs":I
    :sswitch_44c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "microphone_mute"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_7

    .line 5018
    :sswitch_data_464
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_24
        0x2 -> :sswitch_34
        0x3 -> :sswitch_77
        0x4 -> :sswitch_85
        0x5 -> :sswitch_2ba
        0x6 -> :sswitch_2c9
        0x7 -> :sswitch_299
        0x8 -> :sswitch_2e5
        0x9 -> :sswitch_2f4
        0xa -> :sswitch_18
        0xb -> :sswitch_56
        0xc -> :sswitch_394
        0xd -> :sswitch_2e5
        0xe -> :sswitch_3db
        0xf -> :sswitch_3e4
        0x10 -> :sswitch_402
        0x11 -> :sswitch_402
        0x12 -> :sswitch_416
        0x13 -> :sswitch_421
        0x14 -> :sswitch_294
        0x15 -> :sswitch_42e
        0x16 -> :sswitch_437
        0x17 -> :sswitch_44c
        0x18 -> :sswitch_3f1
        0x64 -> :sswitch_2fd
        0x65 -> :sswitch_358
        0x66 -> :sswitch_376
    .end sparse-switch

    .line 5208
    :sswitch_data_4d6
    .sparse-switch
        0x4 -> :sswitch_325
        0x8 -> :sswitch_325
    .end sparse-switch
.end method
