.class Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;
.super Ljava/lang/Object;
.source "CaeProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/ContextAwareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)V
    .registers 2

    .prologue
    .line 662
    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 666
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    if-ne p1, v0, :cond_f

    .line 667
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 745
    :cond_e
    :goto_e
    return-void

    .line 668
    :cond_f
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    if-ne p1, v0, :cond_1e

    .line 669
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_e

    .line 670
    :cond_1e
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    if-ne p1, v0, :cond_2d

    .line 671
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_e

    .line 672
    :cond_2d
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    if-ne p1, v0, :cond_3c

    .line 673
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_e

    .line 674
    :cond_3c
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    if-ne p1, v0, :cond_4b

    .line 675
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_e

    .line 676
    :cond_4b
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    if-ne p1, v0, :cond_5a

    .line 677
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_e

    .line 678
    :cond_5a
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    if-ne p1, v0, :cond_6a

    .line 679
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_e

    .line 680
    :cond_6a
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    if-ne p1, v0, :cond_7a

    .line 681
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_e

    .line 682
    :cond_7a
    if-nez p1, :cond_88

    .line 683
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_e

    .line 684
    :cond_88
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    if-ne p1, v0, :cond_99

    .line 685
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 686
    :cond_99
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    if-ne p1, v0, :cond_aa

    .line 687
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 688
    :cond_aa
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    if-ne p1, v0, :cond_bb

    .line 689
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 690
    :cond_bb
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    if-ne p1, v0, :cond_cc

    .line 691
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 692
    :cond_cc
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    if-ne p1, v0, :cond_dd

    .line 693
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 694
    :cond_dd
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    if-ne p1, v0, :cond_ee

    .line 695
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 696
    :cond_ee
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    if-ne p1, v0, :cond_ff

    .line 697
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 698
    :cond_ff
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    if-ne p1, v0, :cond_110

    .line 699
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 700
    :cond_110
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    if-ne p1, v0, :cond_121

    .line 701
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 702
    :cond_121
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    if-ne p1, v0, :cond_132

    .line 703
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 704
    :cond_132
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    if-ne p1, v0, :cond_143

    .line 705
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x15

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 706
    :cond_143
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    if-ne p1, v0, :cond_154

    .line 707
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 708
    :cond_154
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    if-ne p1, v0, :cond_165

    .line 709
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x17

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 710
    :cond_165
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    if-ne p1, v0, :cond_176

    .line 711
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x18

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 712
    :cond_176
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    if-ne p1, v0, :cond_187

    .line 713
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 714
    :cond_187
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    if-ne p1, v0, :cond_198

    .line 715
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 716
    :cond_198
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    if-ne p1, v0, :cond_1a9

    .line 717
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 718
    :cond_1a9
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    if-ne p1, v0, :cond_1ba

    .line 719
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 720
    :cond_1ba
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    if-ne p1, v0, :cond_1cb

    .line 721
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 722
    :cond_1cb
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    if-ne p1, v0, :cond_1dc

    .line 723
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 724
    :cond_1dc
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    if-ne p1, v0, :cond_1ed

    .line 725
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 726
    :cond_1ed
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    if-ne p1, v0, :cond_1fe

    .line 727
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 728
    :cond_1fe
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    if-ne p1, v0, :cond_217

    .line 729
    const-string v0, "DataType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 730
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 732
    :cond_217
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    if-ne p1, v0, :cond_228

    .line 733
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x22

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 734
    :cond_228
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    if-ne p1, v0, :cond_239

    .line 735
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x23

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 736
    :cond_239
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    if-ne p1, v0, :cond_24a

    .line 737
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x24

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 738
    :cond_24a
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    if-ne p1, v0, :cond_25b

    .line 739
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x25

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 740
    :cond_25b
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->EXERCISE_SERVICE:I

    if-ne p1, v0, :cond_26c

    .line 741
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x26

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e

    .line 742
    :cond_26c
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    if-ne p1, v0, :cond_e

    .line 743
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x27

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_e
.end method
