.class Ljava/util/Formatter$FormatToken;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatToken"
.end annotation


# static fields
.field static final DEFAULT_PRECISION:I = 0x6

.field static final FLAGS_UNSET:I = 0x0

.field static final FLAG_ZERO:I = 0x10

.field static final LAST_ARGUMENT_INDEX:I = -0x2

.field static final UNSET:I = -0x1


# instance fields
.field private argIndex:I

.field private conversionType:C

.field private dateSuffix:C

.field flagComma:Z

.field flagMinus:Z

.field flagParenthesis:Z

.field flagPlus:Z

.field flagSharp:Z

.field flagSpace:Z

.field flagZero:Z

.field private precision:I

.field private strFlags:Ljava/lang/StringBuilder;

.field private width:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    iput v1, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    .line 1148
    const v0, 0xffff

    iput-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    .line 1151
    iput v1, p0, Ljava/util/Formatter$FormatToken;->precision:I

    .line 1152
    iput v1, p0, Ljava/util/Formatter$FormatToken;->width:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Formatter$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Formatter$1;

    .prologue
    .line 1124
    invoke-direct {p0}, Ljava/util/Formatter$FormatToken;-><init>()V

    return-void
.end method


# virtual methods
.method checkFlags(Ljava/lang/Object;)V
    .registers 16
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v12, -0x1

    .line 1266
    const/4 v1, 0x0

    .line 1267
    .local v1, "allowComma":Z
    const/4 v2, 0x1

    .line 1268
    .local v2, "allowMinus":Z
    const/4 v3, 0x0

    .line 1269
    .local v3, "allowParenthesis":Z
    const/4 v4, 0x0

    .line 1270
    .local v4, "allowPlus":Z
    const/4 v6, 0x0

    .line 1271
    .local v6, "allowSharp":Z
    const/4 v7, 0x0

    .line 1272
    .local v7, "allowSpace":Z
    const/4 v9, 0x0

    .line 1274
    .local v9, "allowZero":Z
    const/4 v5, 0x1

    .line 1275
    .local v5, "allowPrecision":Z
    const/4 v8, 0x1

    .line 1277
    .local v8, "allowWidth":Z
    const/4 v0, 0x1

    .line 1278
    .local v0, "allowArgument":Z
    iget-char v11, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    sparse-switch v11, :sswitch_data_130

    .line 1336
    invoke-virtual {p0}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v11

    throw v11

    .line 1282
    :sswitch_15
    const/4 v5, 0x0

    .line 1340
    .end local v0    # "allowArgument":Z
    .end local v1    # "allowComma":Z
    .end local v3    # "allowParenthesis":Z
    .end local v4    # "allowPlus":Z
    .end local v5    # "allowPrecision":Z
    .end local v6    # "allowSharp":Z
    .end local v7    # "allowSpace":Z
    :cond_16
    :goto_16
    :sswitch_16
    const/4 v10, 0x0

    .line 1341
    .local v10, "mismatch":Ljava/lang/String;
    if-nez v1, :cond_67

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v11, :cond_67

    .line 1342
    const-string v10, ","

    .line 1356
    :cond_1f
    :goto_1f
    if-eqz v10, :cond_a5

    .line 1357
    iget-char v11, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v12, 0x6e

    if-ne v11, v12, :cond_9d

    .line 1359
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    invoke-direct {v11, v10}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1287
    .end local v10    # "mismatch":Ljava/lang/String;
    .restart local v0    # "allowArgument":Z
    .restart local v1    # "allowComma":Z
    .restart local v3    # "allowParenthesis":Z
    .restart local v4    # "allowPlus":Z
    .restart local v5    # "allowPrecision":Z
    .restart local v6    # "allowSharp":Z
    .restart local v7    # "allowSpace":Z
    :sswitch_2d
    instance-of v11, p1, Ljava/util/Formattable;

    if-eqz v11, :cond_16

    .line 1288
    const/4 v6, 0x1

    goto :goto_16

    .line 1294
    :sswitch_33
    const/4 v9, 0x1

    move v7, v9

    .local v7, "allowSpace":I
    move v4, v9

    .local v4, "allowPlus":I
    move v3, v9

    .local v3, "allowParenthesis":I
    move v1, v9

    .line 1295
    .local v1, "allowComma":I
    goto :goto_16

    .line 1297
    .local v1, "allowComma":Z
    .local v3, "allowParenthesis":Z
    .local v4, "allowPlus":Z
    .local v7, "allowSpace":Z
    :sswitch_39
    const/4 v9, 0x1

    move v7, v9

    .local v7, "allowSpace":I
    move v6, v9

    .local v6, "allowSharp":I
    move v4, v9

    .local v4, "allowPlus":I
    move v3, v9

    .local v3, "allowParenthesis":I
    move v1, v9

    .line 1298
    .local v1, "allowComma":I
    goto :goto_16

    .line 1300
    .local v1, "allowComma":Z
    .local v3, "allowParenthesis":Z
    .local v4, "allowPlus":Z
    .local v6, "allowSharp":Z
    .local v7, "allowSpace":Z
    :sswitch_40
    const/4 v9, 0x1

    move v7, v9

    .local v7, "allowSpace":I
    move v6, v9

    .local v6, "allowSharp":I
    move v4, v9

    .local v4, "allowPlus":I
    move v3, v9

    .line 1301
    .local v3, "allowParenthesis":I
    goto :goto_16

    .line 1303
    .local v3, "allowParenthesis":Z
    .local v4, "allowPlus":Z
    .local v6, "allowSharp":Z
    .local v7, "allowSpace":Z
    :sswitch_46
    const/4 v9, 0x1

    move v7, v9

    .local v7, "allowSpace":I
    move v6, v9

    .local v6, "allowSharp":I
    move v4, v9

    .line 1304
    .local v4, "allowPlus":I
    goto :goto_16

    .line 1308
    .local v4, "allowPlus":Z
    .local v6, "allowSharp":Z
    .local v7, "allowSpace":Z
    :sswitch_4b
    const/4 v9, 0x1

    move v7, v9

    .local v7, "allowSpace":I
    move v4, v9

    .local v4, "allowPlus":I
    move v3, v9

    .local v3, "allowParenthesis":I
    move v1, v9

    .line 1309
    .local v1, "allowComma":I
    const/4 v5, 0x0

    .line 1310
    goto :goto_16

    .line 1312
    .local v1, "allowComma":Z
    .local v3, "allowParenthesis":Z
    .local v4, "allowPlus":Z
    .local v7, "allowSpace":Z
    :sswitch_52
    const/4 v9, 0x1

    move v6, v9

    .line 1313
    .local v6, "allowSharp":I
    if-eqz p1, :cond_5a

    instance-of v11, p1, Ljava/math/BigInteger;

    if-eqz v11, :cond_5d

    .line 1314
    :cond_5a
    const/4 v7, 0x1

    move v4, v7

    .local v4, "allowPlus":I
    move v3, v7

    .line 1316
    .end local v3    # "allowParenthesis":Z
    .end local v4    # "allowPlus":I
    :cond_5d
    const/4 v5, 0x0

    .line 1317
    goto :goto_16

    .line 1322
    .restart local v3    # "allowParenthesis":Z
    .local v4, "allowPlus":Z
    .local v6, "allowSharp":Z
    :sswitch_5f
    const/4 v2, 0x0

    .line 1323
    const/4 v8, 0x0

    move v5, v8

    .local v5, "allowPrecision":I
    move v0, v8

    .line 1324
    .local v0, "allowArgument":I
    goto :goto_16

    .line 1327
    .local v0, "allowArgument":Z
    .local v5, "allowPrecision":Z
    :sswitch_64
    const/4 v0, 0x0

    .line 1328
    const/4 v5, 0x0

    .line 1329
    goto :goto_16

    .line 1343
    .end local v0    # "allowArgument":Z
    .end local v1    # "allowComma":Z
    .end local v3    # "allowParenthesis":Z
    .end local v4    # "allowPlus":Z
    .end local v5    # "allowPrecision":Z
    .end local v6    # "allowSharp":Z
    .end local v7    # "allowSpace":Z
    .restart local v10    # "mismatch":Ljava/lang/String;
    :cond_67
    if-nez v2, :cond_70

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-eqz v11, :cond_70

    .line 1344
    const-string v10, "-"

    goto :goto_1f

    .line 1345
    :cond_70
    if-nez v3, :cond_79

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v11, :cond_79

    .line 1346
    const-string v10, "("

    goto :goto_1f

    .line 1347
    :cond_79
    if-nez v4, :cond_82

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v11, :cond_82

    .line 1348
    const-string v10, "+"

    goto :goto_1f

    .line 1349
    :cond_82
    if-nez v6, :cond_8b

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v11, :cond_8b

    .line 1350
    const-string v10, "#"

    goto :goto_1f

    .line 1351
    :cond_8b
    if-nez v7, :cond_94

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v11, :cond_94

    .line 1352
    const-string v10, " "

    goto :goto_1f

    .line 1353
    :cond_94
    if-nez v9, :cond_1f

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v11, :cond_1f

    .line 1354
    const-string v10, "0"

    goto :goto_1f

    .line 1361
    :cond_9d
    new-instance v11, Ljava/util/FormatFlagsConversionMismatchException;

    iget-char v12, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-direct {v11, v10, v12}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v11

    .line 1366
    :cond_a5
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-nez v11, :cond_ad

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v11, :cond_cc

    :cond_ad
    iget v11, p0, Ljava/util/Formatter$FormatToken;->width:I

    if-ne v11, v12, :cond_cc

    .line 1367
    new-instance v11, Ljava/util/MissingFormatWidthException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-char v13, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1372
    :cond_cc
    if-nez v0, :cond_f3

    iget v11, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    if-eq v11, v12, :cond_f3

    .line 1373
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-char v13, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " doesn\'t take an argument"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1378
    :cond_f3
    if-nez v5, :cond_101

    iget v11, p0, Ljava/util/Formatter$FormatToken;->precision:I

    if-eq v11, v12, :cond_101

    .line 1379
    new-instance v11, Ljava/util/IllegalFormatPrecisionException;

    iget v12, p0, Ljava/util/Formatter$FormatToken;->precision:I

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v11

    .line 1381
    :cond_101
    if-nez v8, :cond_10f

    iget v11, p0, Ljava/util/Formatter$FormatToken;->width:I

    if-eq v11, v12, :cond_10f

    .line 1382
    new-instance v11, Ljava/util/IllegalFormatWidthException;

    iget v12, p0, Ljava/util/Formatter$FormatToken;->width:I

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v11

    .line 1386
    :cond_10f
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v11, :cond_11f

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v11, :cond_11f

    .line 1387
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    const-string v12, "the \'+\' and \' \' flags are incompatible"

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1389
    :cond_11f
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-eqz v11, :cond_12f

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v11, :cond_12f

    .line 1390
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    const-string v12, "the \'-\' and \'0\' flags are incompatible"

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1392
    :cond_12f
    return-void

    .line 1278
    :sswitch_data_130
    .sparse-switch
        0x25 -> :sswitch_64
        0x41 -> :sswitch_46
        0x42 -> :sswitch_16
        0x43 -> :sswitch_15
        0x45 -> :sswitch_40
        0x47 -> :sswitch_33
        0x48 -> :sswitch_16
        0x53 -> :sswitch_2d
        0x54 -> :sswitch_15
        0x58 -> :sswitch_52
        0x61 -> :sswitch_46
        0x62 -> :sswitch_16
        0x63 -> :sswitch_15
        0x64 -> :sswitch_4b
        0x65 -> :sswitch_40
        0x66 -> :sswitch_39
        0x67 -> :sswitch_33
        0x68 -> :sswitch_16
        0x6e -> :sswitch_5f
        0x6f -> :sswitch_52
        0x73 -> :sswitch_2d
        0x74 -> :sswitch_15
        0x78 -> :sswitch_52
    .end sparse-switch
.end method

.method getArgIndex()I
    .registers 2

    .prologue
    .line 1167
    iget v0, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    return v0
.end method

.method getConversionType()C
    .registers 2

    .prologue
    .line 1245
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    return v0
.end method

.method getDateSuffix()C
    .registers 2

    .prologue
    .line 1253
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    return v0
.end method

.method getPrecision()I
    .registers 2

    .prologue
    .line 1183
    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    return v0
.end method

.method getStrFlags()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1191
    iget-object v0, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method getWidth()I
    .registers 2

    .prologue
    .line 1175
    iget v0, p0, Ljava/util/Formatter$FormatToken;->width:I

    return v0
.end method

.method isDefault()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1158
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-nez v0, :cond_27

    iget v0, p0, Ljava/util/Formatter$FormatToken;->width:I

    if-ne v0, v1, :cond_27

    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    if-ne v0, v1, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method isPrecisionSet()Z
    .registers 3

    .prologue
    .line 1163
    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method requireArgument()Z
    .registers 3

    .prologue
    .line 1261
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x25

    if-eq v0, v1, :cond_e

    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method setArgIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 1171
    iput p1, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    .line 1172
    return-void
.end method

.method setConversionType(C)V
    .registers 2
    .param p1, "c"    # C

    .prologue
    .line 1249
    iput-char p1, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    .line 1250
    return-void
.end method

.method setDateSuffix(C)V
    .registers 2
    .param p1, "c"    # C

    .prologue
    .line 1257
    iput-char p1, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    .line 1258
    return-void
.end method

.method setFlag(I)Z
    .registers 6
    .param p1, "ch"    # I

    .prologue
    const/4 v1, 0x1

    .line 1199
    const/4 v0, 0x0

    .line 1200
    .local v0, "dupe":Z
    sparse-switch p1, :sswitch_data_48

    .line 1230
    const/4 v1, 0x0

    .line 1241
    :goto_6
    return v1

    .line 1202
    :sswitch_7
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    .line 1203
    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    .line 1232
    :goto_b
    if-eqz v0, :cond_35

    .line 1235
    new-instance v1, Ljava/util/DuplicateFormatFlagsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/DuplicateFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1206
    :sswitch_17
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    .line 1207
    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    goto :goto_b

    .line 1210
    :sswitch_1c
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    .line 1211
    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    goto :goto_b

    .line 1214
    :sswitch_21
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    .line 1215
    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    goto :goto_b

    .line 1218
    :sswitch_26
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    .line 1219
    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    goto :goto_b

    .line 1222
    :sswitch_2b
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    .line 1223
    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    goto :goto_b

    .line 1226
    :sswitch_30
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    .line 1227
    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    goto :goto_b

    .line 1237
    :cond_35
    iget-object v2, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    if-nez v2, :cond_41

    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    .line 1240
    :cond_41
    iget-object v2, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1200
    :sswitch_data_48
    .sparse-switch
        0x20 -> :sswitch_2b
        0x23 -> :sswitch_26
        0x28 -> :sswitch_1c
        0x2b -> :sswitch_21
        0x2c -> :sswitch_7
        0x2d -> :sswitch_17
        0x30 -> :sswitch_30
    .end sparse-switch
.end method

.method setPrecision(I)V
    .registers 2
    .param p1, "precise"    # I

    .prologue
    .line 1187
    iput p1, p0, Ljava/util/Formatter$FormatToken;->precision:I

    .line 1188
    return-void
.end method

.method setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .prologue
    .line 1179
    iput p1, p0, Ljava/util/Formatter$FormatToken;->width:I

    .line 1180
    return-void
.end method

.method public unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;
    .registers 6

    .prologue
    .line 1395
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_c

    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2d

    .line 1396
    :cond_c
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string v1, "%c%c"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-char v4, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1399
    :cond_2d
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    iget-char v1, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
