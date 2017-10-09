.class public Ljava/util/logging/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Ljava/util/logging/Level;

.field public static final CONFIG:Ljava/util/logging/Level;

.field public static final FINE:Ljava/util/logging/Level;

.field public static final FINER:Ljava/util/logging/Level;

.field public static final FINEST:Ljava/util/logging/Level;

.field public static final INFO:Ljava/util/logging/Level;

.field public static final OFF:Ljava/util/logging/Level;

.field public static final SEVERE:Ljava/util/logging/Level;

.field public static final WARNING:Ljava/util/logging/Level;

.field private static final levels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Level;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x71778eecae8cc96eL


# instance fields
.field private final name:Ljava/lang/String;

.field private transient rb:Ljava/util/ResourceBundle;

.field private final resourceBundleName:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljava/util/logging/Level;->levels:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "OFF"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 56
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "SEVERE"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 61
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "WARNING"

    const/16 v2, 0x384

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 66
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "INFO"

    const/16 v2, 0x320

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 71
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "CONFIG"

    const/16 v2, 0x2bc

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 76
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINE"

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 81
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINER"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 86
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINEST"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 91
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "ALL"

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    if-nez p1, :cond_d

    .line 204
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_d
    iput-object p1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    .line 207
    iput p2, p0, Ljava/util/logging/Level;->value:I

    .line 208
    iput-object p3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    .line 209
    if-eqz p3, :cond_23

    .line 211
    :try_start_15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p3, v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;
    :try_end_23
    .catch Ljava/util/MissingResourceException; {:try_start_15 .. :try_end_23} :catch_2d

    .line 217
    :cond_23
    :goto_23
    sget-object v2, Ljava/util/logging/Level;->levels:Ljava/util/List;

    monitor-enter v2

    .line 218
    :try_start_26
    sget-object v1, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_32

    .line 220
    return-void

    .line 213
    :catch_2d
    move-exception v0

    .line 214
    .local v0, "e":Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    goto :goto_23

    .line 219
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/logging/Level;
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 106
    if-nez p0, :cond_a

    .line 107
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "name == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    :cond_a
    :try_start_a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_30

    move-result v4

    .line 114
    .local v4, "nameAsInt":I
    const/4 v2, 0x1

    .line 120
    .local v2, "isNameAnInt":Z
    :goto_f
    sget-object v6, Ljava/util/logging/Level;->levels:Ljava/util/List;

    monitor-enter v6

    .line 121
    :try_start_12
    sget-object v5, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Level;

    .line 122
    .local v3, "level":Ljava/util/logging/Level;
    invoke-virtual {v3}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 123
    monitor-exit v6

    .line 144
    .end local v3    # "level":Ljava/util/logging/Level;
    :goto_2f
    return-object v3

    .line 115
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isNameAnInt":Z
    .end local v4    # "nameAsInt":I
    :catch_30
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .line 117
    .restart local v4    # "nameAsInt":I
    const/4 v2, 0x0

    .restart local v2    # "isNameAnInt":Z
    goto :goto_f

    .line 127
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_34
    if-eqz v2, :cond_53

    .line 132
    sget-object v5, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Level;

    .line 133
    .restart local v3    # "level":Ljava/util/logging/Level;
    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_3c

    .line 134
    monitor-exit v6

    goto :goto_2f

    .line 138
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "level":Ljava/util/logging/Level;
    :catchall_50
    move-exception v5

    monitor-exit v6
    :try_end_52
    .catchall {:try_start_12 .. :try_end_52} :catchall_50

    throw v5

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_53
    :try_start_53
    monitor-exit v6
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_50

    .line 140
    if-nez v2, :cond_75

    .line 141
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 144
    :cond_75
    new-instance v3, Ljava/util/logging/Level;

    invoke-direct {v3, p0, v4}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    goto :goto_2f
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 287
    iget-object v1, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 289
    :try_start_7
    iget-object v1, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;
    :try_end_f
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_f} :catch_10

    .line 294
    :cond_f
    :goto_f
    return-void

    .line 290
    :catch_10
    move-exception v0

    .line 291
    .local v0, "e":Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    goto :goto_f
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 256
    sget-object v3, Ljava/util/logging/Level;->levels:Ljava/util/List;

    monitor-enter v3

    .line 257
    :try_start_3
    sget-object v2, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Level;

    .line 258
    .local v1, "level":Ljava/util/logging/Level;
    iget v2, p0, Ljava/util/logging/Level;->value:I

    iget v4, v1, Ljava/util/logging/Level;->value:I

    if-ne v2, v4, :cond_9

    .line 261
    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iget-object v4, v1, Ljava/util/logging/Level;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 264
    iget-object v2, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    iget-object v4, v1, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-static {v2, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 265
    monitor-exit v3

    .line 270
    .end local v1    # "level":Ljava/util/logging/Level;
    :goto_30
    return-object v1

    .line 269
    :cond_31
    sget-object v2, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    monitor-exit v3

    move-object v1, p0

    goto :goto_30

    .line 271
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 326
    if-ne p0, p1, :cond_5

    .line 334
    .end local p1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .line 330
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Ljava/util/logging/Level;

    if-nez v2, :cond_b

    move v0, v1

    .line 331
    goto :goto_4

    .line 334
    :cond_b
    check-cast p1, Ljava/util/logging/Level;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iget v3, p0, Ljava/util/logging/Level;->value:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getLocalizedName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 304
    iget-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    if-nez v1, :cond_7

    .line 305
    iget-object v1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    .line 311
    :goto_6
    return-object v1

    .line 309
    :cond_7
    :try_start_7
    iget-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_6

    .line 310
    :catch_10
    move-exception v0

    .line 311
    .local v0, "e":Ljava/util/MissingResourceException;
    iget-object v1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    goto :goto_6
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final intValue()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method
