.class final enum Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType$5;
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
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 208
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$500()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 195
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$502(D)D

    .line 203
    :cond_d
    :goto_d
    return-void

    .line 196
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_e
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1c

    .line 197
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$502(D)D

    goto :goto_d

    .line 198
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1c
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2a

    .line 199
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$502(D)D

    goto :goto_d

    .line 200
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_2a
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_d

    .line 201
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$502(D)D

    goto :goto_d
.end method
