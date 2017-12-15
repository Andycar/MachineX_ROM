.class final Landroid/content/pm/PersonaValidator$LocalBinder;
.super Landroid/content/pm/IPersonaValidator$Stub;
.source "PersonaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PersonaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalBinder"
.end annotation


# instance fields
.field private mValidator:Landroid/content/pm/PersonaValidator;


# direct methods
.method public constructor <init>(Landroid/content/pm/PersonaValidator;)V
    .registers 2
    .param p1, "validator"    # Landroid/content/pm/PersonaValidator;

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/pm/IPersonaValidator$Stub;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/content/pm/PersonaValidator$LocalBinder;->mValidator:Landroid/content/pm/PersonaValidator;

    .line 13
    return-void
.end method


# virtual methods
.method public validateCallerForAPI(JLjava/lang/String;I)I
    .registers 8
    .param p1, "callerId"    # J
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "personaId"    # I

    .prologue
    .line 16
    iget-object v0, p0, Landroid/content/pm/PersonaValidator$LocalBinder;->mValidator:Landroid/content/pm/PersonaValidator;

    if-eqz v0, :cond_2d

    .line 17
    const-string v0, "Abstract-PersonaValidator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LocalBinder:validateCallerForAPI() callerid :"

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

    .line 18
    iget-object v0, p0, Landroid/content/pm/PersonaValidator$LocalBinder;->mValidator:Landroid/content/pm/PersonaValidator;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PersonaValidator;->validateCallerForAPI(JLjava/lang/String;I)I

    move-result v0

    .line 21
    :goto_2c
    return v0

    .line 20
    :cond_2d
    const-string v0, "Abstract-PersonaValidator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalBinder:(no validator assigned) validateCallerForAPI() callerid :"

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

    .line 21
    const/4 v0, -0x1

    goto :goto_2c
.end method
