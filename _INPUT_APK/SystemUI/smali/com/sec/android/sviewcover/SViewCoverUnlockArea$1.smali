.class Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;
.super Ljava/lang/Object;
.source "SViewCoverUnlockArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$000(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    const/4 v4, 0x1

    .line 159
    :goto_0
    return v4

    .line 106
    :cond_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$100(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$200(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 111
    .local v2, "touchedEventX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 113
    .local v3, "touchedEventY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 159
    :cond_3
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$300(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/os/PowerManager;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 116
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$300(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 119
    :cond_4
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v4, v2}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$402(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;F)F

    .line 120
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v4, v3}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$502(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;F)F

    .line 121
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$602(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;D)D

    .line 122
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$702(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;Z)Z

    .line 125
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$800(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$900(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->updateCircleAndArrow(ZLandroid/view/View;Landroid/view/View;)V

    .line 128
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$400(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)F

    move-result v4

    sub-float v4, v2, v4

    float-to-int v0, v4

    .line 129
    .local v0, "diffX":I
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$500(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)F

    move-result v4

    sub-float v4, v3, v4

    float-to-int v1, v4

    .line 131
    .local v1, "diffY":I
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$602(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;D)D

    .line 132
    const-string v4, "SViewCoverUnlockArea"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_MOVE mDistance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$600(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$600(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$1000(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    .line 134
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$702(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;Z)Z

    .line 135
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$102(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;Z)Z

    .line 136
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->handleUnlockShortCutCircle()V

    .line 137
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$800(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$900(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->updateCircleAndArrow(ZLandroid/view/View;Landroid/view/View;)V

    goto/16 :goto_1

    .line 142
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$602(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;D)D

    .line 143
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$702(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;Z)Z

    .line 144
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$800(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$900(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->updateCircleAndArrow(ZLandroid/view/View;Landroid/view/View;)V

    goto/16 :goto_1

    .line 147
    :pswitch_3
    const-string v4, "SViewCoverUnlockArea"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP mDistance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$600(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$600(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$1000(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    .line 149
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$102(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;Z)Z

    .line 150
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->handleUnlockShortCutCircle()V

    .line 152
    :cond_5
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$702(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;Z)Z

    .line 153
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$800(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-static {v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->access$900(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->updateCircleAndArrow(ZLandroid/view/View;Landroid/view/View;)V

    goto/16 :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
