.class Lcom/android/server/TactileAssistSettings$ActuatorObserver;
.super Landroid/database/ContentObserver;
.source "TactileAssistSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TactileAssistSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActuatorObserver"
.end annotation


# instance fields
.field private mActuatorType:I

.field final synthetic this$0:Lcom/android/server/TactileAssistSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/TactileAssistSettings;I)V
    .registers 4
    .param p2, "actuatorType"    # I

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->this$0:Lcom/android/server/TactileAssistSettings;

    .line 603
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 604
    iput p2, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->mActuatorType:I

    .line 605
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v6, 0x0

    .line 608
    const/4 v2, -0x1

    .line 609
    .local v2, "strength":I
    const/4 v0, -0x1

    .line 610
    .local v0, "density":I
    const/4 v1, -0x1

    .line 612
    .local v1, "sharpness":I
    const-string v3, "TactileAssist"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 613
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On change Actuator Observer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->mActuatorType:I

    # invokes: Lcom/android/server/TactileAssistSettings;->getActuatorTypeString(I)Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/TactileAssistSettings;->access$100(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_2b
    iget v3, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->mActuatorType:I

    packed-switch v3, :pswitch_data_b6

    .line 650
    :goto_30
    :pswitch_30
    iget-object v3, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->this$0:Lcom/android/server/TactileAssistSettings;

    iget v4, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->mActuatorType:I

    # invokes: Lcom/android/server/TactileAssistSettings;->storeLevels(IIII)V
    invoke-static {v3, v4, v2, v0, v1}, Lcom/android/server/TactileAssistSettings;->access$200(Lcom/android/server/TactileAssistSettings;IIII)V

    .line 651
    return-void

    .line 618
    :pswitch_38
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_strength_erm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 620
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_density_erm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 622
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_sharpness_erm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 624
    goto :goto_30

    .line 626
    :pswitch_57
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_strength_serm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 628
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_density_serm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 630
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_sharpness_serm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 632
    goto :goto_30

    .line 634
    :pswitch_76
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_strength_lra"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 636
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_density_lra"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 638
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_sharpness_lra"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 640
    goto :goto_30

    .line 642
    :pswitch_95
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_strength_pzo"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 644
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_density_pzo"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 646
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_sharpness_pzo"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_30

    .line 616
    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_38
        :pswitch_30
        :pswitch_76
        :pswitch_30
        :pswitch_95
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_57
    .end packed-switch
.end method
