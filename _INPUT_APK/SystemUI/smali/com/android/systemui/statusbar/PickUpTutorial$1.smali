.class Lcom/android/systemui/statusbar/PickUpTutorial$1;
.super Landroid/os/Handler;
.source "PickUpTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/PickUpTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/PickUpTutorial;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    .line 158
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 160
    :pswitch_1
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "mHandler - VIBRATE_RUN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$100(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/SystemVibrator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v2}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$000(Lcom/android/systemui/statusbar/PickUpTutorial;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v3}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$100(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/SystemVibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto :goto_0

    .line 165
    :pswitch_2
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "mHandler - LCD_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$300(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$202(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z

    goto :goto_0

    .line 172
    :pswitch_3
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "mHandler - LCD_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$400(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/PowerManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$500(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.pickuptutorial.PICKUPBLACKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/statusbar/PickUpTutorial;->startActivityForResult(Landroid/content/Intent;I)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$300(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$202(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z

    goto :goto_0

    .line 185
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_4
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "mHandler - LCD_OFF_STATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$600(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$300(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 191
    :pswitch_5
    const-string v1, "STATUSBAR-PickUpTutorial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler - LCD_ON_STATE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v3}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$700(Lcom/android/systemui/statusbar/PickUpTutorial;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$300(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$708(Lcom/android/systemui/statusbar/PickUpTutorial;)I

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$700(Lcom/android/systemui/statusbar/PickUpTutorial;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$800(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$800(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "mCount > 3 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$900(Lcom/android/systemui/statusbar/PickUpTutorial;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial$1;->this$0:Lcom/android/systemui/statusbar/PickUpTutorial;

    invoke-static {v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->access$1000(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    goto/16 :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
