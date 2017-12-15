.class Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractPersonaObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AbstractPersonaObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserverReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/AbstractPersonaObserver;


# direct methods
.method private constructor <init>(Landroid/content/pm/AbstractPersonaObserver;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;->this$0:Landroid/content/pm/AbstractPersonaObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/AbstractPersonaObserver;Landroid/content/pm/AbstractPersonaObserver$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/pm/AbstractPersonaObserver;
    .param p2, "x1"    # Landroid/content/pm/AbstractPersonaObserver$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;-><init>(Landroid/content/pm/AbstractPersonaObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 103
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;->this$0:Landroid/content/pm/AbstractPersonaObserver;

    # getter for: Landroid/content/pm/AbstractPersonaObserver;->checkOnStateChange:Z
    invoke-static {v4}, Landroid/content/pm/AbstractPersonaObserver;->access$100(Landroid/content/pm/AbstractPersonaObserver;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "com.sec.knox.container.category.observer.onstatechange"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 105
    const-string v4, "com.sec.knox.container.extra.observer.newstate"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/PersonaState;->valueOf(Ljava/lang/String;)Landroid/content/pm/PersonaState;

    move-result-object v2

    .line 106
    .local v2, "newState":Landroid/content/pm/PersonaState;
    const-string v4, "com.sec.knox.container.extra.observer.previousstate"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/PersonaState;->valueOf(Ljava/lang/String;)Landroid/content/pm/PersonaState;

    move-result-object v3

    .line 107
    .local v3, "previousState":Landroid/content/pm/PersonaState;
    iget-object v4, p0, Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;->this$0:Landroid/content/pm/AbstractPersonaObserver;

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/AbstractPersonaObserver;->onStateChange(Landroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V

    .line 120
    .end local v2    # "newState":Landroid/content/pm/PersonaState;
    .end local v3    # "previousState":Landroid/content/pm/PersonaState;
    :cond_2d
    :goto_2d
    return-void

    .line 109
    :cond_2e
    iget-object v4, p0, Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;->this$0:Landroid/content/pm/AbstractPersonaObserver;

    # getter for: Landroid/content/pm/AbstractPersonaObserver;->checkOnSessionExpired:Z
    invoke-static {v4}, Landroid/content/pm/AbstractPersonaObserver;->access$200(Landroid/content/pm/AbstractPersonaObserver;)Z

    move-result v4

    if-eqz v4, :cond_44

    const-string v4, "com.sec.knox.container.category.observer.onsessionexpired"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 111
    iget-object v4, p0, Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;->this$0:Landroid/content/pm/AbstractPersonaObserver;

    invoke-virtual {v4}, Landroid/content/pm/AbstractPersonaObserver;->onSessionExpired()V

    goto :goto_2d

    .line 113
    :cond_44
    iget-object v4, p0, Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;->this$0:Landroid/content/pm/AbstractPersonaObserver;

    # getter for: Landroid/content/pm/AbstractPersonaObserver;->checkOnKeyguardStateChanged:Z
    invoke-static {v4}, Landroid/content/pm/AbstractPersonaObserver;->access$300(Landroid/content/pm/AbstractPersonaObserver;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "com.sec.knox.container.category.observer.onkeyguardstatechanged"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 115
    const-string v4, "com.sec.knox.container.extra.observer.keyguardstate"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 116
    .local v1, "enabled":Z
    iget-object v4, p0, Landroid/content/pm/AbstractPersonaObserver$PersonaObserverReceiver;->this$0:Landroid/content/pm/AbstractPersonaObserver;

    invoke-virtual {v4, v1}, Landroid/content/pm/AbstractPersonaObserver;->onKeyGuardStateChanged(Z)V

    goto :goto_2d
.end method
