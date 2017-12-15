.class final enum Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType$12;
.super Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.source "ContextAwarePropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 320
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayVal:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$1200()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 313
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    check-cast p1, [Ljava/lang/String;

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayVal:[Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$1202([Ljava/lang/String;)[Ljava/lang/String;

    .line 315
    :cond_b
    return-void
.end method
