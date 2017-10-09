.class Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->onStateChange(Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

.field final synthetic val$newState:Landroid/content/pm/PersonaState;

.field final synthetic val$previousState:Landroid/content/pm/PersonaState;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .registers 4

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iput-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$previousState:Landroid/content/pm/PersonaState;

    iput-object p3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$newState:Landroid/content/pm/PersonaState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$previousState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$newState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 284
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old State locked and new state active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->containerId:I
    invoke-static {v4}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->access$500(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v2, v2, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->containerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->access$600(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 286
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v2, v2, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->containerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->access$700(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->startBannerService(I)V

    .line 289
    :cond_4f
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$newState:Landroid/content/pm/PersonaState;

    sget-object v3, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v3}, Landroid/content/pm/PersonaState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 290
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State locked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->containerId:I
    invoke-static {v4}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->access$800(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v1, "intentBanner":Landroid/content/Intent;
    const-string v2, "com.samsung.android.mdm"

    const-string v3, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v2, v2, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$100(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->containerId:I
    invoke-static {v4}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->access$900(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    :try_end_99
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_99} :catch_9a

    .line 299
    .end local v1    # "intentBanner":Landroid/content/Intent;
    :cond_99
    :goto_99
    return-void

    .line 295
    :catch_9a
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_99
.end method
