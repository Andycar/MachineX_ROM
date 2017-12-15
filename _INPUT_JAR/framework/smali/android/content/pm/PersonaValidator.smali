.class public abstract Landroid/content/pm/PersonaValidator;
.super Ljava/lang/Object;
.source "PersonaValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PersonaValidator$LocalBinder;
    }
.end annotation


# static fields
.field public static final METHOD_RESETPERSONA:Ljava/lang/String; = "resetPersona"

.field private static final TAG:Ljava/lang/String; = "Abstract-PersonaValidator"


# instance fields
.field private mActualValidator:Landroid/content/pm/PersonaValidator$LocalBinder;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaValidator;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValidator()Landroid/content/pm/IPersonaValidator;
    .registers 3

    .prologue
    .line 31
    iget-object v1, p0, Landroid/content/pm/PersonaValidator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/PersonaValidator;->mActualValidator:Landroid/content/pm/PersonaValidator$LocalBinder;

    if-nez v0, :cond_e

    .line 33
    new-instance v0, Landroid/content/pm/PersonaValidator$LocalBinder;

    invoke-direct {v0, p0}, Landroid/content/pm/PersonaValidator$LocalBinder;-><init>(Landroid/content/pm/PersonaValidator;)V

    iput-object v0, p0, Landroid/content/pm/PersonaValidator;->mActualValidator:Landroid/content/pm/PersonaValidator$LocalBinder;

    .line 35
    :cond_e
    iget-object v0, p0, Landroid/content/pm/PersonaValidator;->mActualValidator:Landroid/content/pm/PersonaValidator$LocalBinder;

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public validateCallerForAPI(JLjava/lang/String;I)I
    .registers 8
    .param p1, "callerId"    # J
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "personaId"    # I

    .prologue
    .line 50
    const-string v0, "Abstract-PersonaValidator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dummy: validateCallerForAPI() callerid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " method :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, -0x1

    return v0
.end method
