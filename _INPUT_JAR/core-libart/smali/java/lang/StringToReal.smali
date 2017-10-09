.class final Ljava/lang/StringToReal;
.super Ljava/lang/Object;
.source "StringToReal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StringToReal$1;,
        Ljava/lang/StringToReal$StringExponentPair;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;
    .registers 27
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "isDouble"    # Z

    .prologue
    .line 74
    new-instance v18, Ljava/lang/StringToReal$StringExponentPair;

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringToReal$StringExponentPair;-><init>(Ljava/lang/StringToReal$1;)V

    .line 75
    .local v18, "result":Ljava/lang/StringToReal$StringExponentPair;
    if-nez p1, :cond_16

    .line 76
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 78
    :cond_16
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5f

    const/16 v20, 0x1

    :goto_2a
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    .line 82
    add-int/lit8 v20, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 83
    .local v6, "c":C
    const/16 v20, 0x44

    move/from16 v0, v20

    if-eq v6, v0, :cond_52

    const/16 v20, 0x64

    move/from16 v0, v20

    if-eq v6, v0, :cond_52

    const/16 v20, 0x46

    move/from16 v0, v20

    if-eq v6, v0, :cond_52

    const/16 v20, 0x66

    move/from16 v0, v20

    if-ne v6, v0, :cond_62

    .line 84
    :cond_52
    add-int/lit8 p1, p1, -0x1

    .line 85
    if-nez p1, :cond_62

    .line 86
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 78
    .end local v6    # "c":C
    :cond_5f
    const/16 v20, 0x0

    goto :goto_2a

    .line 90
    .restart local v6    # "c":C
    :cond_62
    const/16 v20, 0x45

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    const/16 v21, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 91
    .local v10, "end":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_14e

    .line 93
    add-int/lit8 v20, v10, 0x1

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_91

    .line 94
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 98
    :cond_91
    add-int/lit8 v12, v10, 0x1

    .line 99
    .local v12, "exponentOffset":I
    const/16 v17, 0x0

    .line 100
    .local v17, "negativeExponent":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 101
    .local v14, "firstExponentChar":C
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-eq v14, v0, :cond_a7

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v14, v0, :cond_b1

    .line 102
    :cond_a7
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v14, v0, :cond_c8

    const/16 v17, 0x1

    .line 103
    :goto_af
    add-int/lit8 v12, v12, 0x1

    .line 107
    :cond_b1
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 108
    .local v13, "exponentString":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_cb

    .line 109
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 102
    .end local v13    # "exponentString":Ljava/lang/String;
    :cond_c8
    const/16 v17, 0x0

    goto :goto_af

    .line 111
    .restart local v13    # "exponentString":Ljava/lang/String;
    :cond_cb
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_cc
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_f0

    .line 112
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 113
    .local v7, "ch":C
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v7, v0, :cond_e4

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v7, v0, :cond_ed

    .line 114
    :cond_e4
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 111
    :cond_ed
    add-int/lit8 v15, v15, 0x1

    goto :goto_cc

    .line 120
    .end local v7    # "ch":C
    :cond_f0
    :try_start_f0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 121
    if-eqz v17, :cond_112

    .line 122
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    neg-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J
    :try_end_112
    .catch Ljava/lang/NumberFormatException; {:try_start_f0 .. :try_end_112} :catch_139

    .line 140
    .end local v12    # "exponentOffset":I
    .end local v13    # "exponentString":Ljava/lang/String;
    .end local v14    # "firstExponentChar":C
    .end local v15    # "i":I
    .end local v17    # "negativeExponent":Z
    :cond_112
    :goto_112
    const/16 v19, 0x0

    .line 141
    .local v19, "start":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 142
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_151

    .line 143
    add-int/lit8 v19, v19, 0x1

    .line 144
    add-int/lit8 p1, p1, -0x1

    .line 145
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    .line 150
    :cond_12e
    :goto_12e
    if-nez p1, :cond_15c

    .line 151
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 124
    .end local v19    # "start":I
    .restart local v12    # "exponentOffset":I
    .restart local v13    # "exponentString":Ljava/lang/String;
    .restart local v14    # "firstExponentChar":C
    .restart local v15    # "i":I
    .restart local v17    # "negativeExponent":Z
    :catch_139
    move-exception v11

    .line 127
    .local v11, "ex":Ljava/lang/NumberFormatException;
    if-eqz v17, :cond_145

    .line 128
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    goto :goto_112

    .line 130
    :cond_145
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    goto :goto_112

    .line 137
    .end local v11    # "ex":Ljava/lang/NumberFormatException;
    .end local v12    # "exponentOffset":I
    .end local v13    # "exponentString":Ljava/lang/String;
    .end local v14    # "firstExponentChar":C
    .end local v15    # "i":I
    .end local v17    # "negativeExponent":Z
    :cond_14e
    move/from16 v10, p1

    goto :goto_112

    .line 146
    .restart local v19    # "start":I
    :cond_151
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-ne v6, v0, :cond_12e

    .line 147
    add-int/lit8 v19, v19, 0x1

    .line 148
    add-int/lit8 p1, p1, -0x1

    goto :goto_12e

    .line 155
    :cond_15c
    const/4 v9, -0x1

    .line 156
    .local v9, "decimal":I
    move/from16 v15, v19

    .restart local v15    # "i":I
    :goto_15f
    if-ge v15, v10, :cond_19b

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 158
    .local v16, "mc":C
    const/16 v20, 0x2e

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_182

    .line 159
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_17e

    .line 160
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 162
    :cond_17e
    move v9, v15

    .line 156
    :cond_17f
    add-int/lit8 v15, v15, 0x1

    goto :goto_15f

    .line 163
    :cond_182
    const/16 v20, 0x30

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_192

    const/16 v20, 0x39

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_17f

    .line 164
    :cond_192
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 167
    .end local v16    # "mc":C
    :cond_19b
    const/16 v20, -0x1

    move/from16 v0, v20

    if-le v9, v0, :cond_1ea

    .line 168
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    sub-int v22, v10, v9

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 169
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 174
    :goto_1db
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 175
    if-nez p1, :cond_1f3

    .line 176
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v20

    throw v20

    .line 171
    :cond_1ea
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1db

    .line 181
    :cond_1f3
    move-object/from16 v0, v18

    iget-boolean v0, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    move/from16 v20, v0

    if-nez v20, :cond_203

    move-object/from16 v0, v18

    iget-boolean v0, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    move/from16 v20, v0

    if-eqz v20, :cond_204

    .line 224
    :cond_203
    :goto_203
    return-object v18

    .line 185
    :cond_204
    move/from16 v10, p1

    .line 186
    :goto_206
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v10, v0, :cond_221

    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_221

    .line 187
    add-int/lit8 v10, v10, -0x1

    goto :goto_206

    .line 190
    :cond_221
    const/16 v19, 0x0

    .line 191
    :goto_223
    add-int/lit8 v20, v10, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_23e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_23e

    .line 192
    add-int/lit8 v19, v19, 0x1

    goto :goto_223

    .line 195
    :cond_23e
    move/from16 v0, p1

    if-ne v10, v0, :cond_244

    if-eqz v19, :cond_261

    .line 196
    :cond_244
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    sub-int v22, p1, v10

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 197
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 203
    :cond_261
    const/16 v4, -0x167

    .line 204
    .local v4, "APPROX_MIN_MAGNITUDE":I
    const/16 v5, 0x34

    .line 205
    .local v5, "MAX_DIGITS":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 206
    const/16 v20, 0x34

    move/from16 v0, p1

    move/from16 v1, v20

    if-le v0, v1, :cond_2b3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x167

    cmp-long v20, v20, v22

    if-gez v20, :cond_2b3

    .line 207
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    rsub-int v0, v0, -0x167

    move/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 208
    .local v8, "d":I
    const/16 v20, 0x0

    sub-int v21, p1, v8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 209
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    int-to-long v0, v8

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 215
    .end local v8    # "d":I
    :cond_2b3
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x400

    cmp-long v20, v20, v22

    if-gez v20, :cond_2c9

    .line 216
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    goto/16 :goto_203

    .line 218
    :cond_2c9
    move-object/from16 v0, v18

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x400

    cmp-long v20, v20, v22

    if-lez v20, :cond_2df

    .line 219
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    goto/16 :goto_203

    .line 223
    :cond_2df
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    goto/16 :goto_203
.end method

.method private static invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "isDouble"    # Z

    .prologue
    .line 63
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2d

    const-string v0, "double"

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    const-string v0, "float"

    goto :goto_11
.end method

.method private static native parseDblImpl(Ljava/lang/String;I)D
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v10, 0x1

    .line 263
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 266
    .local v2, "length":I
    if-nez v2, :cond_11

    .line 267
    invoke-static {p0, v10}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 271
    :cond_11
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 272
    .local v1, "last":C
    const/16 v3, 0x79

    if-eq v1, v3, :cond_1f

    const/16 v3, 0x4e

    if-ne v1, v3, :cond_25

    .line 273
    :cond_1f
    invoke-static {p0, v10}, Ljava/lang/StringToReal;->parseName(Ljava/lang/String;Z)F

    move-result v3

    float-to-double v4, v3

    .line 290
    :cond_24
    :goto_24
    return-wide v4

    .line 278
    :cond_25
    const-string v3, "0x"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_35

    const-string v3, "0X"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_3a

    .line 279
    :cond_35
    invoke-static {p0}, Ljava/lang/HexStringParser;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_24

    .line 282
    :cond_3a
    invoke-static {p0, v2, v10}, Ljava/lang/StringToReal;->initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;

    move-result-object v0

    .line 283
    .local v0, "info":Ljava/lang/StringToReal$StringExponentPair;
    iget-boolean v3, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    if-nez v3, :cond_46

    iget-boolean v3, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    if-eqz v3, :cond_4c

    .line 284
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringToReal$StringExponentPair;->specialValue()F

    move-result v3

    float-to-double v4, v3

    goto :goto_24

    .line 286
    :cond_4c
    iget-object v3, v0, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    iget-wide v6, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    long-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/StringToReal;->parseDblImpl(Ljava/lang/String;I)D

    move-result-wide v4

    .line 287
    .local v4, "result":D
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_64

    .line 288
    invoke-static {p0, v10}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3

    .line 290
    :cond_64
    iget-boolean v3, v0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v3, :cond_24

    neg-double v4, v4

    goto :goto_24
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 307
    .local v2, "length":I
    if-nez v2, :cond_11

    .line 308
    invoke-static {p0, v8}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 312
    :cond_11
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 313
    .local v1, "last":C
    const/16 v4, 0x79

    if-eq v1, v4, :cond_1f

    const/16 v4, 0x4e

    if-ne v1, v4, :cond_24

    .line 314
    :cond_1f
    invoke-static {p0, v8}, Ljava/lang/StringToReal;->parseName(Ljava/lang/String;Z)F

    move-result v3

    .line 331
    :cond_23
    :goto_23
    return v3

    .line 319
    :cond_24
    const-string v4, "0x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v9, :cond_34

    const-string v4, "0X"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v9, :cond_39

    .line 320
    :cond_34
    invoke-static {p0}, Ljava/lang/HexStringParser;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_23

    .line 323
    :cond_39
    invoke-static {p0, v2, v8}, Ljava/lang/StringToReal;->initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;

    move-result-object v0

    .line 324
    .local v0, "info":Ljava/lang/StringToReal$StringExponentPair;
    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    if-nez v4, :cond_45

    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    if-eqz v4, :cond_4a

    .line 325
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringToReal$StringExponentPair;->specialValue()F

    move-result v3

    goto :goto_23

    .line 327
    :cond_4a
    iget-object v4, v0, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    iget-wide v6, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    long-to-int v5, v6

    invoke-static {v4, v5}, Ljava/lang/StringToReal;->parseFltImpl(Ljava/lang/String;I)F

    move-result v3

    .line 328
    .local v3, "result":F
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    if-ne v4, v9, :cond_5e

    .line 329
    invoke-static {p0, v8}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 331
    :cond_5e
    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v4, :cond_23

    neg-float v3, v3

    goto :goto_23
.end method

.method private static native parseFltImpl(Ljava/lang/String;I)F
.end method

.method private static parseName(Ljava/lang/String;Z)F
    .registers 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "isDouble"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x3

    const/4 v1, 0x0

    .line 230
    const/4 v8, 0x0

    .line 231
    .local v8, "negative":Z
    const/4 v2, 0x0

    .line 232
    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 233
    .local v7, "length":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 234
    .local v6, "firstChar":C
    const/16 v0, 0x2d

    if-ne v6, v0, :cond_28

    .line 235
    const/4 v8, 0x1

    .line 236
    add-int/lit8 v2, v2, 0x1

    .line 237
    add-int/lit8 v7, v7, -0x1

    .line 243
    :cond_17
    :goto_17
    if-ne v7, v5, :cond_34

    const-string v3, "Infinity"

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 244
    if-eqz v8, :cond_31

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 247
    :goto_27
    return v0

    .line 238
    :cond_28
    const/16 v0, 0x2b

    if-ne v6, v0, :cond_17

    .line 239
    add-int/lit8 v2, v2, 0x1

    .line 240
    add-int/lit8 v7, v7, -0x1

    goto :goto_17

    .line 244
    :cond_31
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_27

    .line 246
    :cond_34
    if-ne v7, v9, :cond_44

    const-string v3, "NaN"

    move-object v0, p0

    move v4, v1

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 247
    const/high16 v0, 0x7fc00000    # NaNf

    goto :goto_27

    .line 249
    :cond_44
    invoke-static {p0, p1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0
.end method
