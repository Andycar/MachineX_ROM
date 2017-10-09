.class Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;
.super Ljava/lang/Object;
.source "KeyguardFestivalEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v1, "KeyguardFestivalEffect"

    const-string v2, "mEmergencyModeRunnable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$002(Lcom/android/keyguard/sec/KeyguardFestivalEffect;I)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$200(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->queryFestivalToday(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->sendFestivalString()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_1
    const-string v1, "KeyguardFestivalEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "festivalId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$400(Lcom/android/keyguard/sec/KeyguardFestivalEffect;IZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$1;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$500(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    return-void
.end method
