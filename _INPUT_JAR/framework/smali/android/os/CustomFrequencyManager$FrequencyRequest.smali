.class public abstract Landroid/os/CustomFrequencyManager$FrequencyRequest;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FrequencyRequest"
.end annotation


# instance fields
.field public mFrequency:I

.field mInvalidParam:Z

.field public mPkgName:Ljava/lang/String;

.field mTimeoutMs:J

.field mToken:Landroid/os/IBinder;

.field public mType:I

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .registers 13
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 204
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    .line 207
    :try_start_9
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Boost Request from package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-eq p2, v4, :cond_3c

    const/16 v1, 0x9

    if-ne p2, v1, :cond_4f

    .line 209
    :cond_3c
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkGPUFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 210
    const-string v1, "CustomFrequencyManager"

    const-string v2, "GPUFrequencyRequest : invalid frequency range"

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    .line 250
    :goto_4e
    return-void

    .line 214
    :cond_4f
    const/16 v1, 0xa

    if-eq p2, v1, :cond_57

    const/16 v1, 0xb

    if-ne p2, v1, :cond_c6

    .line 215
    :cond_57
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkSysBusFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 216
    const-string v1, "CustomFrequencyManager"

    const-string v2, "SysBusFrequencyRequest : invalid frequency range"

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_69} :catch_6a

    goto :goto_4e

    .line 227
    :catch_6a
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    # invokes: Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->access$100(Ljava/lang/Exception;)V

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6e
    iput p2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    .line 231
    iput p3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    .line 232
    iput-wide p4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    .line 233
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!! pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    # getter for: Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$200()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_b8

    .line 236
    const-string v1, "android"

    # getter for: Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 237
    # getter for: Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;
    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_e0

    # getter for: Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;
    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$300()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 238
    # getter for: Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;
    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$300()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    .line 246
    :cond_b8
    :goto_b8
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_c3

    .line 247
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    .line 249
    :cond_c3
    iput-object p6, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    goto :goto_4e

    .line 220
    :cond_c6
    const/4 v1, 0x7

    if-eq p2, v1, :cond_cc

    const/4 v1, 0x6

    if-ne p2, v1, :cond_6e

    .line 221
    :cond_cc
    :try_start_cc
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkCPUBoostRange(I)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 222
    const-string v1, "CustomFrequencyManager"

    const-string v2, "CPUDVFSControlRequest : invalid frequency range"

    # invokes: Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_de} :catch_6a

    goto/16 :goto_4e

    .line 240
    :cond_e0
    # invokes: Landroid/os/CustomFrequencyManager;->createServerAppToken()V
    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$400()V

    .line 241
    # getter for: Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;
    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$300()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    goto :goto_b8
.end method


# virtual methods
.method public cancelFrequencyRequest()V
    .registers 2

    .prologue
    .line 264
    iget-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    if-nez v0, :cond_7

    .line 265
    invoke-virtual {p0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequestImpl()V

    .line 267
    :cond_7
    return-void
.end method

.method public abstract cancelFrequencyRequestImpl()V
.end method

.method public doFrequencyRequest()V
    .registers 2

    .prologue
    .line 258
    iget-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    if-nez v0, :cond_7

    .line 259
    invoke-virtual {p0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequestImpl()V

    .line 261
    :cond_7
    return-void
.end method

.method public abstract doFrequencyRequestImpl()V
.end method

.method public getLockType()I
    .registers 2

    .prologue
    .line 253
    iget v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    return v0
.end method
