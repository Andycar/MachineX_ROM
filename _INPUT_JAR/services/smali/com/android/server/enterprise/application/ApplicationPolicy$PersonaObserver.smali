.class Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;
.super Landroid/content/pm/AbstractPersonaObserver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Context;II)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "containerId"    # I
    .param p4, "flags"    # I

    .prologue
    .line 4923
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 4924
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/AbstractPersonaObserver;-><init>(Landroid/content/Context;II)V

    .line 4925
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    .prologue
    .line 4921
    iget v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->containerId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    .prologue
    .line 4921
    iget v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->containerId:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    .prologue
    .line 4921
    iget v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->containerId:I

    return v0
.end method


# virtual methods
.method public onKeyGuardStateChanged(Z)V
    .registers 4
    .param p1, "state"    # Z

    .prologue
    .line 4934
    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onKeyGuardStateChanged()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4935
    return-void
.end method

.method public onSessionExpired()V
    .registers 3

    .prologue
    .line 4929
    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onSessionExpired()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4930
    return-void
.end method

.method public onStateChange(Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .registers 6
    .param p1, "newState"    # Landroid/content/pm/PersonaState;
    .param p2, "previousState"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 4939
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persona.onStateChange: oldstate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4940
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2400(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;Landroid/content/pm/PersonaState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4965
    return-void
.end method
