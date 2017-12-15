.class Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SamsungAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SamsungAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungAudioSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SamsungAudioService;


# direct methods
.method constructor <init>(Landroid/media/SamsungAudioService;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 200
    iput-object p1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 208
    # getter for: Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z
    invoke-static {}, Landroid/media/SamsungAudioService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 209
    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/SamsungAudioService;->access$100(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_musiccheck"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/SamsungAudioService;->access$100(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_alive_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/SamsungAudioService;->access$100(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "k2hd_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/SamsungAudioService;->access$100(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tube_amp_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    :cond_47
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 218
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 228
    # getter for: Landroid/media/SamsungAudioService;->GLOBAL_EFFECT_ENABLED:Z
    invoke-static {}, Landroid/media/SamsungAudioService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 229
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$100(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hearing_musiccheck"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    # setter for: Landroid/media/SamsungAudioService;->mMySoundEnabled:I
    invoke-static {v0, v1}, Landroid/media/SamsungAudioService;->access$202(Landroid/media/SamsungAudioService;I)I

    .line 230
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mMySoundEnabled:I
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$200(Landroid/media/SamsungAudioService;)I

    move-result v1

    # invokes: Landroid/media/SamsungAudioService;->setGlobalMySound(I)V
    invoke-static {v0, v1}, Landroid/media/SamsungAudioService;->access$300(Landroid/media/SamsungAudioService;I)V

    .line 231
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$100(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_alive_effect"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    # setter for: Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I
    invoke-static {v0, v1}, Landroid/media/SamsungAudioService;->access$402(Landroid/media/SamsungAudioService;I)I

    .line 232
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mSoundAliveEnabled:I
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$400(Landroid/media/SamsungAudioService;)I

    move-result v1

    # invokes: Landroid/media/SamsungAudioService;->setGlobalSoundAlive(I)V
    invoke-static {v0, v1}, Landroid/media/SamsungAudioService;->access$500(Landroid/media/SamsungAudioService;I)V

    .line 233
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$100(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "k2hd_effect"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    # setter for: Landroid/media/SamsungAudioService;->mK2HDEnabled:I
    invoke-static {v0, v1}, Landroid/media/SamsungAudioService;->access$602(Landroid/media/SamsungAudioService;I)I

    .line 234
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mK2HDEnabled:I
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$600(Landroid/media/SamsungAudioService;)I

    move-result v1

    # invokes: Landroid/media/SamsungAudioService;->setGlobalK2HD(I)V
    invoke-static {v0, v1}, Landroid/media/SamsungAudioService;->access$700(Landroid/media/SamsungAudioService;I)V

    .line 235
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$100(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tube_amp_effect"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    # setter for: Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I
    invoke-static {v0, v1}, Landroid/media/SamsungAudioService;->access$802(Landroid/media/SamsungAudioService;I)I

    .line 236
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    iget-object v1, p0, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mTubeAmpEnabled:I
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)I

    move-result v1

    # invokes: Landroid/media/SamsungAudioService;->setGlobalTubeAmp(I)V
    invoke-static {v0, v1}, Landroid/media/SamsungAudioService;->access$900(Landroid/media/SamsungAudioService;I)V

    .line 239
    :cond_7d
    return-void
.end method
