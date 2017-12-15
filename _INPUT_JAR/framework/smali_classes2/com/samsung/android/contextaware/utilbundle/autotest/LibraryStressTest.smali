.class Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;
.source "LibraryStressTest.java"


# instance fields
.field private final mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

.field private final mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delayTime"    # I

    .prologue
    .line 45
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;-><init>(I)V

    .line 51
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 46
    const-string v0, "context_aware"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/ContextAwareManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 48
    return-void
.end method


# virtual methods
.method protected final clear()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    if-nez v0, :cond_5

    .line 116
    :goto_4
    return-void

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)V

    goto :goto_4
.end method

.method protected final getType()I
    .registers 5

    .prologue
    .line 127
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 128
    .local v0, "random":I
    const/4 v1, 0x0

    .line 130
    .local v1, "type":I
    packed-switch v0, :pswitch_data_18

    .line 156
    :goto_e
    return v1

    .line 132
    :pswitch_f
    sget v1, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    .line 133
    goto :goto_e

    .line 135
    :pswitch_12
    sget v1, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    .line 136
    goto :goto_e

    .line 138
    :pswitch_15
    sget v1, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    .line 139
    goto :goto_e

    .line 130
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method protected final registerListener()V
    .registers 4

    .prologue
    .line 73
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    if-nez v1, :cond_5

    .line 81
    :goto_4
    return-void

    .line 77
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->getType()I

    move-result v0

    .line 78
    .local v0, "type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TYPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] register"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_4
.end method

.method protected final unregisterListener()V
    .registers 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    if-nez v1, :cond_5

    .line 101
    :goto_4
    return-void

    .line 96
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->getType()I

    move-result v0

    .line 97
    .local v0, "type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TYPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] unregister"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_4
.end method
