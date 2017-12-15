.class public final Landroid/hardware/camera2/marshal/MarshalHelpers;
.super Ljava/lang/Object;
.source "MarshalHelpers.java"


# static fields
.field public static final SIZEOF_BYTE:I = 0x1

.field public static final SIZEOF_DOUBLE:I = 0x8

.field public static final SIZEOF_FLOAT:I = 0x4

.field public static final SIZEOF_INT32:I = 0x4

.field public static final SIZEOF_INT64:I = 0x8

.field public static final SIZEOF_RATIONAL:I = 0x8


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static checkNativeType(I)I
    .registers 4
    .param p0, "nativeType"    # I

    .prologue
    .line 208
    packed-switch p0, :pswitch_data_1e

    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown nativeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :pswitch_1c
    return p0

    .line 208
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static checkNativeTypeEquals(II)I
    .registers 7
    .param p0, "expectedNativeType"    # I
    .param p1, "actualNativeType"    # I

    .prologue
    .line 231
    if-eq p0, p1, :cond_1f

    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Expected native type %d, but got %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1f
    return p1
.end method

.method public static checkPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "klass must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->isPrimitiveClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 90
    return-object p0

    .line 93
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; expected a metadata primitive class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPrimitiveTypeSize(I)I
    .registers 4
    .param p0, "nativeType"    # I

    .prologue
    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 55
    packed-switch p0, :pswitch_data_28

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type, can\'t get size for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_1f
    const/4 v0, 0x1

    .line 67
    :goto_20
    :pswitch_20
    return v0

    :pswitch_21
    move v0, v1

    .line 63
    goto :goto_20

    :pswitch_23
    move v0, v1

    .line 65
    goto :goto_20

    :pswitch_25
    move v0, v1

    .line 67
    goto :goto_20

    .line 55
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_21
        :pswitch_23
        :pswitch_25
    .end packed-switch
.end method

.method public static isPrimitiveClass(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 118
    if-nez p0, :cond_5

    .line 136
    :cond_4
    :goto_4
    return v0

    .line 122
    :cond_5
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_d

    const-class v2, Ljava/lang/Byte;

    if-ne p0, v2, :cond_f

    :cond_d
    move v0, v1

    .line 123
    goto :goto_4

    .line 124
    :cond_f
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_17

    const-class v2, Ljava/lang/Integer;

    if-ne p0, v2, :cond_19

    :cond_17
    move v0, v1

    .line 125
    goto :goto_4

    .line 126
    :cond_19
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_21

    const-class v2, Ljava/lang/Float;

    if-ne p0, v2, :cond_23

    :cond_21
    move v0, v1

    .line 127
    goto :goto_4

    .line 128
    :cond_23
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_2b

    const-class v2, Ljava/lang/Long;

    if-ne p0, v2, :cond_2d

    :cond_2b
    move v0, v1

    .line 129
    goto :goto_4

    .line 130
    :cond_2d
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_35

    const-class v2, Ljava/lang/Double;

    if-ne p0, v2, :cond_37

    :cond_35
    move v0, v1

    .line 131
    goto :goto_4

    .line 132
    :cond_37
    const-class v2, Landroid/util/Rational;

    if-ne p0, v2, :cond_4

    move v0, v1

    .line 133
    goto :goto_4
.end method

.method public static toStringNativeType(I)Ljava/lang/String;
    .registers 3
    .param p0, "nativeType"    # I

    .prologue
    .line 179
    packed-switch p0, :pswitch_data_30

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 181
    :pswitch_1d
    const-string v0, "TYPE_BYTE"

    goto :goto_1c

    .line 183
    :pswitch_20
    const-string v0, "TYPE_INT32"

    goto :goto_1c

    .line 185
    :pswitch_23
    const-string v0, "TYPE_FLOAT"

    goto :goto_1c

    .line 187
    :pswitch_26
    const-string v0, "TYPE_INT64"

    goto :goto_1c

    .line 189
    :pswitch_29
    const-string v0, "TYPE_DOUBLE"

    goto :goto_1c

    .line 191
    :pswitch_2c
    const-string v0, "TYPE_RATIONAL"

    goto :goto_1c

    .line 179
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public static wrapClassIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 155
    const-class p0, Ljava/lang/Byte;

    .line 166
    .end local p0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_6
    :goto_6
    return-object p0

    .line 156
    .restart local p0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    .line 157
    const-class p0, Ljava/lang/Integer;

    goto :goto_6

    .line 158
    :cond_e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_15

    .line 159
    const-class p0, Ljava/lang/Float;

    goto :goto_6

    .line 160
    :cond_15
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    .line 161
    const-class p0, Ljava/lang/Long;

    goto :goto_6

    .line 162
    :cond_1c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 163
    const-class p0, Ljava/lang/Double;

    goto :goto_6
.end method
