.class public abstract Ljavax/xml/datatype/DatatypeFactory;
.super Ljava/lang/Object;
.source "DatatypeFactory.java"


# static fields
.field public static final DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

.field public static final DATATYPEFACTORY_PROPERTY:Ljava/lang/String; = "javax.xml.datatype.DatatypeFactory"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/String;

    const-string v1, "org.apache.xerces.jaxp.datatype.DatatypeFactoryImpl"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Ljavax/xml/datatype/DatatypeFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    const-string v1, "javax.xml.datatype.DatatypeFactory"

    sget-object v2, Ljavax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    invoke-static {v1, v2}, Ljavax/xml/datatype/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/datatype/DatatypeFactory;
    :try_end_a
    .catch Ljavax/xml/datatype/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 105
    :catch_b
    move-exception v0

    .line 106
    .local v0, "e":Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
    new-instance v1, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-virtual {v0}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/datatype/DatatypeFactory;
    .registers 6
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .prologue
    .line 119
    if-nez p0, :cond_a

    .line 120
    new-instance v2, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v3, "factoryClassName == null"

    invoke-direct {v2, v3}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_a
    if-nez p1, :cond_14

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 126
    :cond_14
    if-eqz p1, :cond_21

    :try_start_16
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 129
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/datatype/DatatypeFactory;

    return-object v2

    .line 126
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_21
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_24} :catch_26
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_24} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_24} :catch_34

    move-result-object v1

    goto :goto_1a

    .line 130
    :catch_26
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-direct {v2, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 132
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2d
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-direct {v2, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 134
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_34
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-direct {v2, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public abstract newDuration(J)Ljavax/xml/datatype/Duration;
.end method

.method public abstract newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
.end method

.method public newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;
    .registers 16
    .param p1, "isPositive"    # Z
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I
    .param p5, "hours"    # I
    .param p6, "minutes"    # I
    .param p7, "seconds"    # I

    .prologue
    .line 278
    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_3d

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 281
    .local v2, "realYears":Ljava/math/BigInteger;
    :goto_9
    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_3f

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 284
    .local v3, "realMonths":Ljava/math/BigInteger;
    :goto_12
    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_41

    int-to-long v0, p4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 287
    .local v4, "realDays":Ljava/math/BigInteger;
    :goto_1b
    const/high16 v0, -0x80000000

    if-eq p5, v0, :cond_43

    int-to-long v0, p5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 290
    .local v5, "realHours":Ljava/math/BigInteger;
    :goto_24
    const/high16 v0, -0x80000000

    if-eq p6, v0, :cond_45

    int-to-long v0, p6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 293
    .local v6, "realMinutes":Ljava/math/BigInteger;
    :goto_2d
    const/high16 v0, -0x80000000

    if-eq p7, v0, :cond_47

    int-to-long v0, p7

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v7

    .local v7, "realSeconds":Ljava/math/BigDecimal;
    :goto_36
    move-object v0, p0

    move v1, p1

    .line 295
    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    .line 278
    .end local v2    # "realYears":Ljava/math/BigInteger;
    .end local v3    # "realMonths":Ljava/math/BigInteger;
    .end local v4    # "realDays":Ljava/math/BigInteger;
    .end local v5    # "realHours":Ljava/math/BigInteger;
    .end local v6    # "realMinutes":Ljava/math/BigInteger;
    .end local v7    # "realSeconds":Ljava/math/BigDecimal;
    :cond_3d
    const/4 v2, 0x0

    goto :goto_9

    .line 281
    .restart local v2    # "realYears":Ljava/math/BigInteger;
    :cond_3f
    const/4 v3, 0x0

    goto :goto_12

    .line 284
    .restart local v3    # "realMonths":Ljava/math/BigInteger;
    :cond_41
    const/4 v4, 0x0

    goto :goto_1b

    .line 287
    .restart local v4    # "realDays":Ljava/math/BigInteger;
    :cond_43
    const/4 v5, 0x0

    goto :goto_24

    .line 290
    .restart local v5    # "realHours":Ljava/math/BigInteger;
    :cond_45
    const/4 v6, 0x0

    goto :goto_2d

    .line 293
    .restart local v6    # "realMinutes":Ljava/math/BigInteger;
    :cond_47
    const/4 v7, 0x0

    goto :goto_36
.end method

.method public abstract newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
.end method

.method public newDurationDayTime(J)Ljavax/xml/datatype/Duration;
    .registers 30
    .param p1, "durationInMilliseconds"    # J

    .prologue
    .line 384
    move-wide/from16 v18, p1

    .line 385
    .local v18, "_durationInMilliseconds":J
    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-nez v2, :cond_18

    .line 386
    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object v2

    .line 433
    :goto_17
    return-object v2

    .line 389
    :cond_18
    const/16 v23, 0x0

    .line 391
    .local v23, "tooLong":Z
    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-gez v2, :cond_75

    .line 392
    const/4 v3, 0x0

    .line 393
    .local v3, "isPositive":Z
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v18, v4

    if-nez v2, :cond_2d

    .line 394
    const-wide/16 v4, 0x1

    add-long v18, v18, v4

    .line 395
    const/16 v23, 0x1

    .line 397
    :cond_2d
    const-wide/16 v4, -0x1

    mul-long v18, v18, v4

    .line 403
    :goto_31
    move-wide/from16 v24, v18

    .line 404
    .local v24, "val":J
    const-wide/32 v4, 0xea60

    rem-long v4, v24, v4

    long-to-int v0, v4

    move/from16 v22, v0

    .line 405
    .local v22, "milliseconds":I
    if-eqz v23, :cond_3f

    .line 406
    add-int/lit8 v22, v22, 0x1

    .line 408
    :cond_3f
    move/from16 v0, v22

    rem-int/lit16 v2, v0, 0x3e8

    if-nez v2, :cond_97

    .line 409
    move/from16 v0, v22

    div-int/lit16 v9, v0, 0x3e8

    .line 410
    .local v9, "seconds":I
    const-wide/32 v4, 0xea60

    div-long v24, v24, v4

    .line 411
    const-wide/16 v4, 0x3c

    rem-long v4, v24, v4

    long-to-int v8, v4

    .line 412
    .local v8, "minutes":I
    const-wide/16 v4, 0x3c

    div-long v24, v24, v4

    .line 413
    const-wide/16 v4, 0x18

    rem-long v4, v24, v4

    long-to-int v7, v4

    .line 414
    .local v7, "hours":I
    const-wide/16 v4, 0x18

    div-long v20, v24, v4

    .line 415
    .local v20, "days":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v20, v4

    if-gtz v2, :cond_77

    .line 416
    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    move-wide/from16 v0, v20

    long-to-int v6, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object v2

    goto :goto_17

    .line 400
    .end local v3    # "isPositive":Z
    .end local v7    # "hours":I
    .end local v8    # "minutes":I
    .end local v9    # "seconds":I
    .end local v20    # "days":J
    .end local v22    # "milliseconds":I
    .end local v24    # "val":J
    :cond_75
    const/4 v3, 0x1

    .restart local v3    # "isPositive":Z
    goto :goto_31

    .line 420
    .restart local v7    # "hours":I
    .restart local v8    # "minutes":I
    .restart local v9    # "seconds":I
    .restart local v20    # "days":J
    .restart local v22    # "milliseconds":I
    .restart local v24    # "val":J
    :cond_77
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    int-to-long v4, v7

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    move/from16 v0, v22

    int-to-long v4, v0

    const/4 v2, 0x3

    invoke-static {v4, v5, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v17

    move-object/from16 v10, p0

    move v11, v3

    invoke-virtual/range {v10 .. v17}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v2

    goto :goto_17

    .line 426
    .end local v7    # "hours":I
    .end local v8    # "minutes":I
    .end local v9    # "seconds":I
    .end local v20    # "days":J
    :cond_97
    move/from16 v0, v22

    int-to-long v4, v0

    const/4 v2, 0x3

    invoke-static {v4, v5, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v9

    .line 427
    .local v9, "seconds":Ljava/math/BigDecimal;
    const-wide/32 v4, 0xea60

    div-long v24, v24, v4

    .line 428
    const-wide/16 v4, 0x3c

    rem-long v4, v24, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 429
    .local v8, "minutes":Ljava/math/BigInteger;
    const-wide/16 v4, 0x3c

    div-long v24, v24, v4

    .line 430
    const-wide/16 v4, 0x18

    rem-long v4, v24, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 431
    .local v7, "hours":Ljava/math/BigInteger;
    const-wide/16 v4, 0x18

    div-long v24, v24, v4

    .line 432
    invoke-static/range {v24 .. v25}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 433
    .local v6, "days":Ljava/math/BigInteger;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v2

    goto/16 :goto_17
.end method

.method public newDurationDayTime(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
    .registers 9
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;

    .prologue
    .line 331
    if-nez p1, :cond_a

    .line 332
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "lexicalRepresentation == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 335
    :cond_a
    const/16 v4, 0x54

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 336
    .local v3, "pos":I
    if-ltz v3, :cond_3b

    move v2, v3

    .line 337
    .local v2, "length":I
    :goto_13
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v2, :cond_43

    .line 338
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 339
    .local v0, "c":C
    const/16 v4, 0x59

    if-eq v0, v4, :cond_22

    const/16 v4, 0x4d

    if-ne v0, v4, :cond_40

    .line 340
    :cond_22
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid dayTimeDuration value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 336
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_3b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_13

    .line 337
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 343
    .end local v0    # "c":C
    :cond_43
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v4

    return-object v4
.end method

.method public newDurationDayTime(ZIIII)Ljavax/xml/datatype/Duration;
    .registers 14
    .param p1, "isPositive"    # Z
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    const/high16 v2, -0x80000000

    .line 514
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationDayTime(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljavax/xml/datatype/Duration;
    .registers 14
    .param p1, "isPositive"    # Z
    .param p2, "day"    # Ljava/math/BigInteger;
    .param p3, "hour"    # Ljava/math/BigInteger;
    .param p4, "minute"    # Ljava/math/BigInteger;
    .param p5, "second"    # Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x0

    .line 473
    if-eqz p5, :cond_13

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, p5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    :goto_8
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    :cond_13
    move-object v7, v2

    goto :goto_8
.end method

.method public newDurationYearMonth(J)Ljavax/xml/datatype/Duration;
    .registers 4
    .param p1, "durationInMilliseconds"    # J

    .prologue
    .line 594
    invoke-virtual {p0, p1, p2}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(J)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationYearMonth(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
    .registers 8
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;

    .prologue
    .line 544
    if-nez p1, :cond_a

    .line 545
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "lexicalRepresentation == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 548
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 549
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_39

    .line 550
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 551
    .local v0, "c":C
    const/16 v3, 0x44

    if-eq v0, v3, :cond_1d

    const/16 v3, 0x54

    if-ne v0, v3, :cond_36

    .line 552
    :cond_1d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid yearMonthDuration value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 549
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 555
    .end local v0    # "c":C
    :cond_39
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v3

    return-object v3
.end method

.method public newDurationYearMonth(ZII)Ljavax/xml/datatype/Duration;
    .registers 12
    .param p1, "isPositive"    # Z
    .param p2, "year"    # I
    .param p3, "month"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 657
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Ljavax/xml/datatype/Duration;
    .registers 12
    .param p1, "isPositive"    # Z
    .param p2, "year"    # Ljava/math/BigInteger;
    .param p3, "month"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    .line 625
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public abstract newXMLGregorianCalendar()Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .registers 20
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millisecond"    # I
    .param p8, "timezone"    # I

    .prologue
    .line 835
    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_33

    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 839
    .local v3, "realYear":Ljava/math/BigInteger;
    :goto_9
    const/4 v9, 0x0

    .line 840
    .local v9, "realMillisecond":Ljava/math/BigDecimal;
    const/high16 v2, -0x80000000

    move/from16 v0, p7

    if-eq v0, v2, :cond_3d

    .line 841
    if-ltz p7, :cond_18

    const/16 v2, 0x3e8

    move/from16 v0, p7

    if-le v0, v2, :cond_35

    .line 842
    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendar(int year, int month, int day, int hour, int minute, int second, int millisecond, int timezone)with invalid millisecond: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 835
    .end local v3    # "realYear":Ljava/math/BigInteger;
    .end local v9    # "realMillisecond":Ljava/math/BigDecimal;
    :cond_33
    const/4 v3, 0x0

    goto :goto_9

    .line 848
    .restart local v3    # "realYear":Ljava/math/BigInteger;
    .restart local v9    # "realMillisecond":Ljava/math/BigDecimal;
    :cond_35
    move/from16 v0, p7

    int-to-long v4, v0

    const/4 v2, 0x3

    invoke-static {v4, v5, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v9

    :cond_3d
    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p8

    .line 851
    invoke-virtual/range {v2 .. v10}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    return-object v2
.end method

.method public abstract newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendarDate(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .registers 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "timezone"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 892
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .registers 14
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "timezone"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 928
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, v1

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .registers 12
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "milliseconds"    # I
    .param p5, "timezone"    # I

    .prologue
    .line 1007
    const/4 v4, 0x0

    .line 1008
    .local v4, "realMilliseconds":Ljava/math/BigDecimal;
    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_2a

    .line 1009
    if-ltz p4, :cond_b

    const/16 v0, 0x3e8

    if-le p4, v0, :cond_24

    .line 1010
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendarTime(int hours, int minutes, int seconds, int milliseconds, int timezone)with invalid milliseconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_24
    int-to-long v0, p4

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v4

    :cond_2a
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    .line 1019
    invoke-virtual/range {v0 .. v5}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
    .registers 15
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "fractionalSecond"    # Ljava/math/BigDecimal;
    .param p5, "timezone"    # I

    .prologue
    const/high16 v2, -0x80000000

    .line 967
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method
