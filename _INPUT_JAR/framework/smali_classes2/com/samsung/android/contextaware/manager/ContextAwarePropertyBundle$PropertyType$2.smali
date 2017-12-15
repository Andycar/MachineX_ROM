.class final enum Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType$2;
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
    .line 125
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
    .line 142
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$200()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 128
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 129
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$202(I)I

    .line 137
    :cond_d
    :goto_d
    return-void

    .line 130
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_e
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1c

    .line 131
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$202(I)I

    goto :goto_d

    .line 132
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1c
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2a

    .line 133
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$202(I)I

    goto :goto_d

    .line 134
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_2a
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_d

    .line 135
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$202(I)I

    goto :goto_d
.end method
