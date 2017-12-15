.class final enum Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType$4;
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
    .line 169
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
    .line 186
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$400()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
    .line 172
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 173
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$402(F)F

    .line 181
    :cond_d
    :goto_d
    return-void

    .line 174
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_e
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1c

    .line 175
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->floatValue()F

    move-result v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$402(F)F

    goto :goto_d

    .line 176
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1c
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2a

    .line 177
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$402(F)F

    goto :goto_d

    .line 178
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_2a
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_d

    .line 179
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$402(F)F

    goto :goto_d
.end method
