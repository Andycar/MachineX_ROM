.class Lcom/android/server/smartclip/SmartClipView$7;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 2

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1066
    :try_start_0
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$2300(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/util/ArrayList;)Z
    invoke-static {v4, v5}, Lcom/android/server/smartclip/SmartClipView;->access$2400(Lcom/android/server/smartclip/SmartClipView;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1067
    const-string v4, "SmartClipView"

    const-string v5, "gesturepad is live!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :goto_15
    return-void

    .line 1071
    :cond_16
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v4}, Lcom/android/server/smartclip/SmartClipView;->isLockScreenShowing()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1072
    const-string v4, "SmartClipView"

    const-string v5, "Now keyguard is on!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1094
    :catch_26
    move-exception v4

    goto :goto_15

    .line 1076
    :cond_28
    const-string v4, "SmartClipView"

    const-string v5, "Gesture Pad!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1079
    .local v0, "dvfsLockIntent":Landroid/content/Intent;
    const-string v4, "com.sec.android.intent.action.DVFS_BOOSTER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    const-string v4, "PACKAGE"

    const-string v5, "com.sec.android.gesturepad"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    const-string v4, "CPU"

    const-string v5, "MAX"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    const-string v4, "CPU_CORE_NUM"

    const-string v5, "4"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    const-string v4, "DURATION"

    const-string v5, "1500"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1088
    const-class v4, Landroid/content/Intent;

    const-string v5, "EXTRA_WINDOW_MODE"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1089
    .local v2, "intentField":Ljava/lang/reflect/Field;
    const-class v4, Landroid/view/WindowManagerPolicy;

    const-string v5, "WINDOW_MODE_NORMAL"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1090
    .local v3, "policyField":Ljava/lang/reflect/Field;
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2500(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1091
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2500(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "MedianValueForGesturePosX"

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$2600(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1092
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2500(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "MedianValueForGesturePosY"

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$2700(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v4}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$7;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$2500(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b2} :catch_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b2} :catch_b4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b2} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b2} :catch_b7

    goto/16 :goto_15

    .line 1095
    .end local v0    # "dvfsLockIntent":Landroid/content/Intent;
    .end local v2    # "intentField":Ljava/lang/reflect/Field;
    .end local v3    # "policyField":Ljava/lang/reflect/Field;
    :catch_b4
    move-exception v4

    goto/16 :goto_15

    .line 1097
    :catch_b7
    move-exception v1

    .line 1098
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15

    .line 1096
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_bd
    move-exception v4

    goto/16 :goto_15
.end method
