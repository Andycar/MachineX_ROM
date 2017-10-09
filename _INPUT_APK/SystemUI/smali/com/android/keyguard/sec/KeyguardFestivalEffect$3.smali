.class Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFestivalEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardFestivalEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "KeyguardFestivalEffect"

    const-string v2, "onBootCompleted: mBootCompleted = true;"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1, v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$202(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z

    const/4 v0, -0x1

    const-string v1, "KeyguardFestivalEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBootCompleted: mFirstRun = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1600(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1600(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "KeyguardFestivalEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBootCompleted: isEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->queryFestivalToday(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->sendFestivalString()V

    const-string v1, "KeyguardFestivalEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBootCompleted: festivalId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$500(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1700(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1, v0, v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$400(Lcom/android/keyguard/sec/KeyguardFestivalEffect;IZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1800(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1800(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1200(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->show()V

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$3;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1602(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z

    const-string v1, "KeyguardFestivalEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBootCompleted: festivalId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
