.class public Lcom/android/server/pm/state/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/state/StateMachine$1;,
        Lcom/android/server/pm/state/StateMachine$StateWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final GETSTATE_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StateMachine"


# instance fields
.field private attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PersonaAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation
.end field

.field private personaId:I

.field private pms:Lcom/android/server/pm/PersonaManagerService;

.field private previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation
.end field

.field private states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TS;",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p1, "pms"    # Lcom/android/server/pm/PersonaManagerService;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PersonaManagerService;",
            "ITS;TS;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p3, "initialState":Ljava/lang/Object;, "TS;"
    .local p4, "previousState":Ljava/lang/Object;, "TS;"
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    .line 32
    iput-object p1, p0, Lcom/android/server/pm/state/StateMachine;->pms:Lcom/android/server/pm/PersonaManagerService;

    .line 33
    iput p2, p0, Lcom/android/server/pm/state/StateMachine;->personaId:I

    .line 34
    new-instance v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-direct {v0, p0, p3, v3}, Lcom/android/server/pm/state/StateMachine$StateWrapper;-><init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;Lcom/android/server/pm/state/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 36
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addState() added currentState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    if-eq p3, p4, :cond_9d

    .line 42
    new-instance v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-direct {v0, p0, p4, v3}, Lcom/android/server/pm/state/StateMachine$StateWrapper;-><init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;Lcom/android/server/pm/state/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 43
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addState() added previousState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_9c
    return-void

    .line 49
    :cond_9d
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 50
    const-string v0, "StateMachine"

    const-string v1, "addState() previousState same as initialState"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c
.end method

.method static synthetic access$500(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/state/StateMachine;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/state/StateMachine;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/state/StateMachine;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    return-object v0
.end method

.method private getTriggerExceptions(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;)",
            "Ljava/util/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "trigger":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 192
    .local v0, "newState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    if-eqz v0, :cond_25

    .line 193
    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->triggerExceptionMaps:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$400(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 194
    .local v1, "triggerSet":Ljava/util/HashMap;, "Ljava/util/HashMap<TA;TS;>;"
    if-eqz v1, :cond_25

    .line 195
    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->triggerExceptionMaps:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$400(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 198
    .end local v1    # "triggerSet":Ljava/util/HashMap;, "Ljava/util/HashMap<TA;TS;>;"
    :goto_24
    return-object v2

    :cond_25
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_24
.end method

.method private stateExists(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addState(Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 60
    .local v0, "newState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    if-nez v0, :cond_47

    .line 61
    new-instance v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .end local v0    # "newState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;-><init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;Lcom/android/server/pm/state/StateMachine$1;)V

    .line 62
    .restart local v0    # "newState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addState() added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_47
    return-object v0
.end method

.method public configure(Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 74
    .local v0, "configureState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    return-object v0
.end method

.method public fireEvent(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 11
    .param p2, "propagateStateChangeEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)TS;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "trigger":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->allowedTransitions:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$300(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 126
    const-string v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fireEvent() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "exceptionExists":Z
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v4

    .line 131
    .local v4, "newState":Ljava/lang/Object;, "TS;"
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/server/pm/state/StateMachine;->getTriggerExceptions(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 132
    .local v2, "exceptionsByAttribute":Ljava/util/Set;, "Ljava/util/Set<TA;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, "exceptionAttribute":Ljava/lang/Object;, "TA;"
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 135
    const-string v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fireEvent() found triggerException for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in trigger "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x1

    .line 137
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->triggerExceptionMaps:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$400(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 141
    .end local v0    # "exceptionAttribute":Ljava/lang/Object;, "TA;"
    :cond_8e
    if-nez v1, :cond_9a

    .line 142
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->allowedTransitions:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$300(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 145
    :cond_9a
    invoke-direct {p0, v4}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e9

    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 147
    const-string v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fireEvent() setting state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iput-object v5, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 150
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iput-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 151
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->pms:Lcom/android/server/pm/PersonaManagerService;

    iget v6, p0, Lcom/android/server/pm/state/StateMachine;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->persistPersonaInfo(I)V

    .line 152
    if-eqz p2, :cond_e2

    .line 153
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->pms:Lcom/android/server/pm/PersonaManagerService;

    iget v6, p0, Lcom/android/server/pm/state/StateMachine;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->propagateNewStateChange(I)V

    .line 163
    .end local v1    # "exceptionExists":Z
    .end local v2    # "exceptionsByAttribute":Ljava/util/Set;, "Ljava/util/Set<TA;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "newState":Ljava/lang/Object;, "TS;"
    :cond_e2
    :goto_e2
    iget-object v5, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v5}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 157
    .restart local v1    # "exceptionExists":Z
    .restart local v2    # "exceptionsByAttribute":Ljava/util/Set;, "Ljava/util/Set<TA;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "newState":Ljava/lang/Object;, "TS;"
    :cond_e9
    const-string v5, "StateMachine"

    const-string v6, "fireEvent() no change in state"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e2

    .line 161
    .end local v1    # "exceptionExists":Z
    .end local v2    # "exceptionsByAttribute":Ljava/util/Set;, "Ljava/util/Set<TA;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "newState":Ljava/lang/Object;, "TS;"
    :cond_f1
    const-string v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fireEvent() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " no trigger for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    # getter for: Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e2
.end method

.method public getPreviousState()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousState() returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v2}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->previousState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inState(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 107
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 108
    .local v0, "queryState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->currentState:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    invoke-virtual {v1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getState()Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/android/server/pm/state/StateMachine$StateWrapper;->isMyChild(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$200(Lcom/android/server/pm/state/StateMachine$StateWrapper;Ljava/lang/Object;)Z

    move-result v1

    .line 109
    .end local v0    # "queryState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    :goto_30
    return v1

    :cond_31
    const/4 v1, 0x0

    goto :goto_30
.end method

.method public instanceOf(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)Z"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p1, "substate":Ljava/lang/Object;, "TS;"
    .local p2, "parentState":Ljava/lang/Object;, "TS;"
    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instanceOf() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instanceOf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-direct {p0, p2}, Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 117
    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 118
    .local v0, "queryState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    # invokes: Lcom/android/server/pm/state/StateMachine$StateWrapper;->isMyChild(Ljava/lang/Object;)Z
    invoke-static {v0, p1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->access$200(Lcom/android/server/pm/state/StateMachine$StateWrapper;Ljava/lang/Object;)Z

    move-result v1

    .line 120
    .end local v0    # "queryState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    :goto_40
    return v1

    :cond_41
    const/4 v1, 0x0

    goto :goto_40
.end method

.method public isAttribute(Landroid/content/pm/PersonaAttribute;)Z
    .registers 5
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;

    .prologue
    .line 168
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAttribute() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/PersonaAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listAttributes()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/pm/PersonaAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 211
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z
    .registers 6
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p2, "enabled"    # Z

    .prologue
    .line 175
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAttribute() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/PersonaAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/state/StateMachine;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-eqz p2, :cond_35

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    :goto_2e
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 180
    :cond_35
    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine;->attributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    .local p0, "this":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " states, current state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/state/StateMachine;->getState()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
