.class public Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;
.super Ljava/lang/Object;
.source "CaAutoTestScenarioManager.java"


# static fields
.field public static final AP_POWER_AUTO_TEST:I = 0x3

.field public static final BYPASS_AUTO_TEST:I = 0x1

.field public static final CA_OPERATION_AUTO_TEST:I = 0x4

.field public static final CA_OPERATION_DEBUGGING:I = 0x5

.field public static final LIBRARY_AUTO_TEST:I = 0x2

.field public static final SENSOR_HUB_OPERATION_DEBUGGING:I = 0x6


# instance fields
.field private final mCaOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;

.field private final mContext:Landroid/content/Context;

.field private final mScenarioListForTest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/utilbundle/autotest/ICaAutoTest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorHubOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;

    .line 70
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    .line 72
    return-void
.end method


# virtual methods
.method public final initilizeAutoTest()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 110
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;->clearPacket()V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->clearPacket()V

    .line 115
    return-void
.end method

.method public final setScenarioForDebugging(II[B)Z
    .registers 6
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I
    .param p3, "packet"    # [B

    .prologue
    .line 162
    if-nez p3, :cond_4

    .line 163
    const/4 v0, 0x0

    .line 186
    :goto_3
    return v0

    .line 166
    :cond_4
    packed-switch p1, :pswitch_data_42

    .line 186
    :cond_7
    :goto_7
    const/4 v0, 0x1

    goto :goto_3

    .line 168
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-virtual {v0, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;->setDelayTime(I)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-virtual {v0, p3}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;->addPacket([B)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 171
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 175
    :pswitch_25
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-virtual {v0, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->setDelayTime(I)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-virtual {v0, p3}, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->addPacket([B)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 179
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 166
    nop

    :pswitch_data_42
    .packed-switch 0x5
        :pswitch_9
        :pswitch_25
    .end packed-switch
.end method

.method public final setScenarioForTest(II)Z
    .registers 6
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_36

    .line 146
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 129
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/autotest/BypassStressTest;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/BypassStressTest;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 133
    :pswitch_12
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 137
    :pswitch_1f
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/autotest/ApPowerStressTest;

    invoke-direct {v1, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/ApPowerStressTest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 140
    :pswitch_2a
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationStressTest;

    invoke-direct {v1, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationStressTest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 127
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_5
        :pswitch_12
        :pswitch_1f
        :pswitch_2a
    .end packed-switch
.end method

.method public final startAutoTest()V
    .registers 4

    .prologue
    .line 78
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 80
    :cond_c
    const-string v2, "Scenario list is empty."

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 88
    :cond_11
    return-void

    .line 84
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/utilbundle/autotest/ICaAutoTest;

    .line 85
    .local v0, "i":Lcom/samsung/android/contextaware/utilbundle/autotest/ICaAutoTest;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/samsung/android/contextaware/utilbundle/autotest/ICaAutoTest;->setStopFlag(Z)V

    .line 86
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_18
.end method

.method public final stopAutoTest()V
    .registers 4

    .prologue
    .line 94
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 103
    :cond_c
    :goto_c
    return-void

    .line 98
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/utilbundle/autotest/ICaAutoTest;

    .line 99
    .local v0, "i":Lcom/samsung/android/contextaware/utilbundle/autotest/ICaAutoTest;
    invoke-interface {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/ICaAutoTest;->stopAutoTest()V

    goto :goto_13

    .line 102
    .end local v0    # "i":Lcom/samsung/android/contextaware/utilbundle/autotest/ICaAutoTest;
    :cond_23
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->initilizeAutoTest()V

    goto :goto_c
.end method
