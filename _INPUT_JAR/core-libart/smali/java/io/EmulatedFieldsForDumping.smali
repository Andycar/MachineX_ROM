.class Ljava/io/EmulatedFieldsForDumping;
.super Ljava/io/ObjectOutputStream$PutField;
.source "EmulatedFieldsForDumping.java"


# instance fields
.field private emulatedFields:Ljava/io/EmulatedFields;

.field private final oos:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor <init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V
    .registers 6
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .param p2, "streamClass"    # Ljava/io/ObjectStreamClass;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$PutField;-><init>()V

    .line 44
    iput-object p1, p0, Ljava/io/EmulatedFieldsForDumping;->oos:Ljava/io/ObjectOutputStream;

    .line 45
    new-instance v1, Ljava/io/EmulatedFields;

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/io/ObjectStreamField;

    invoke-direct {v1, v2, v0}, Ljava/io/EmulatedFields;-><init>([Ljava/io/ObjectStreamField;[Ljava/io/ObjectStreamField;)V

    iput-object v1, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    .line 46
    return-void
.end method


# virtual methods
.method emulatedFields()Ljava/io/EmulatedFields;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    return-object v0
.end method

.method public put(Ljava/lang/String;B)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 70
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;B)V

    .line 71
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 84
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;C)V

    .line 85
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 98
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;D)V

    .line 99
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 112
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;F)V

    .line 113
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 126
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;I)V

    .line 127
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 140
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;J)V

    .line 141
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 154
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 168
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;S)V

    .line 169
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;Z)V

    .line 183
    return-void
.end method

.method public write(Ljava/io/ObjectOutput;)V
    .registers 12
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 197
    iget-object v6, p0, Ljava/io/EmulatedFieldsForDumping;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 198
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Attempting to write to a different stream than the one that created this PutField"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 200
    :cond_11
    iget-object v6, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v6}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/EmulatedFields$ObjectSlot;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_19
    if-ge v2, v3, :cond_c3

    aget-object v4, v0, v2

    .line 201
    .local v4, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-virtual {v4}, Ljava/io/EmulatedFields$ObjectSlot;->getFieldValue()Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/io/EmulatedFields$ObjectSlot;->getField()Ljava/io/ObjectStreamField;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 203
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_3d

    .line 204
    if-eqz v1, :cond_3b

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_35
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 200
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_3b
    move v6, v7

    .line 204
    goto :goto_35

    .line 205
    :cond_3d
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_4f

    .line 206
    if-eqz v1, :cond_4d

    check-cast v1, Ljava/lang/Byte;

    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    :goto_49
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeByte(I)V

    goto :goto_38

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_4d
    move v6, v7

    goto :goto_49

    .line 207
    :cond_4f
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_61

    .line 208
    if-eqz v1, :cond_5f

    check-cast v1, Ljava/lang/Character;

    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v6

    :goto_5b
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeChar(I)V

    goto :goto_38

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_5f
    move v6, v7

    goto :goto_5b

    .line 209
    :cond_61
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_73

    .line 210
    if-eqz v1, :cond_71

    check-cast v1, Ljava/lang/Short;

    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v6

    :goto_6d
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeShort(I)V

    goto :goto_38

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_71
    move v6, v7

    goto :goto_6d

    .line 211
    :cond_73
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_85

    .line 212
    if-eqz v1, :cond_83

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_7f
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    goto :goto_38

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_83
    move v6, v7

    goto :goto_7f

    .line 213
    :cond_85
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_98

    .line 214
    if-eqz v1, :cond_95

    check-cast v1, Ljava/lang/Long;

    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_91
    invoke-interface {p1, v8, v9}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_38

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_95
    const-wide/16 v8, 0x0

    goto :goto_91

    .line 215
    :cond_98
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_aa

    .line 216
    if-eqz v1, :cond_a8

    check-cast v1, Ljava/lang/Float;

    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :goto_a4
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeFloat(F)V

    goto :goto_38

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_a8
    const/4 v6, 0x0

    goto :goto_a4

    .line 217
    :cond_aa
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_be

    .line 218
    if-eqz v1, :cond_bb

    check-cast v1, Ljava/lang/Double;

    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :goto_b6
    invoke-interface {p1, v8, v9}, Ljava/io/ObjectOutput;->writeDouble(D)V

    goto/16 :goto_38

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_bb
    const-wide/16 v8, 0x0

    goto :goto_b6

    .line 221
    :cond_be
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_38

    .line 224
    .end local v1    # "fieldValue":Ljava/lang/Object;
    .end local v4    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c3
    return-void
.end method
