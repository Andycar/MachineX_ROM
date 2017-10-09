.class Lorg/json/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkDouble(D)D
    .registers 6
    .param p0, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 25
    :cond_c
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forbidden numeric value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_25
    return-wide p0
.end method

.method static toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 31
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 32
    check-cast p0, Ljava/lang/Boolean;

    .line 41
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "stringValue":Ljava/lang/String;
    :goto_6
    return-object p0

    .line 33
    .end local v0    # "stringValue":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2a

    move-object v0, p0

    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .restart local v0    # "stringValue":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 36
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_6

    .line 37
    :cond_1c
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 38
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_6

    .line 41
    .end local v0    # "stringValue":Ljava/lang/String;
    :cond_2a
    const/4 p0, 0x0

    goto :goto_6
.end method

.method static toDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 45
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 46
    check-cast p0, Ljava/lang/Double;

    .line 55
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 47
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_16

    .line 48
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_6

    .line 49
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_16
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 51
    :try_start_1a
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1f} :catch_21

    move-result-object p0

    goto :goto_6

    .line 52
    :catch_21
    move-exception v0

    .line 55
    :cond_22
    const/4 p0, 0x0

    goto :goto_6
.end method

.method static toInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 59
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 60
    check-cast p0, Ljava/lang/Integer;

    .line 69
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 61
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_16

    .line 62
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_6

    .line 63
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_16
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 65
    :try_start_1a
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_24} :catch_26

    move-result-object p0

    goto :goto_6

    .line 66
    :catch_26
    move-exception v0

    .line 69
    :cond_27
    const/4 p0, 0x0

    goto :goto_6
.end method

.method static toLong(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 73
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 74
    check-cast p0, Ljava/lang/Long;

    .line 83
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 75
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_16

    .line 76
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_6

    .line 77
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_16
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 79
    :try_start_1a
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_24} :catch_26

    move-result-object p0

    goto :goto_6

    .line 80
    :catch_26
    move-exception v0

    .line 83
    :cond_27
    const/4 p0, 0x0

    goto :goto_6
.end method

.method static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 87
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 88
    check-cast p0, Ljava/lang/String;

    .line 92
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 89
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    if-eqz p0, :cond_e

    .line 90
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 92
    :cond_e
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public static typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;
    .registers 6
    .param p0, "indexOrName"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "requiredType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    if-nez p1, :cond_21

    .line 98
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_21
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be converted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;
    .registers 5
    .param p0, "actual"    # Ljava/lang/Object;
    .param p1, "requiredType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p0, :cond_a

    .line 109
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Value is null."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_a
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be converted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
