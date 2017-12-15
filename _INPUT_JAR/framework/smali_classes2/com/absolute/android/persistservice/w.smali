.class public final Lcom/absolute/android/persistservice/w;
.super Lcom/absolute/android/persistence/IABTLogIterator$Stub;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private b:Lcom/absolute/android/persistservice/y;

.field private c:I

.field private d:Ljava/io/File;

.field private e:J

.field private f:Z


# direct methods
.method protected constructor <init>(ILcom/absolute/android/persistservice/y;)V
    .registers 5

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTLogIterator$Stub;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/w;->f:Z

    .line 123
    iput p1, p0, Lcom/absolute/android/persistservice/w;->c:I

    .line 124
    iput-object p2, p0, Lcom/absolute/android/persistservice/w;->b:Lcom/absolute/android/persistservice/y;

    .line 126
    iget-object v0, p0, Lcom/absolute/android/persistservice/w;->b:Lcom/absolute/android/persistservice/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/w;->d:Ljava/io/File;

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/absolute/android/persistservice/w;->e:J

    .line 129
    return-void
.end method

.method private a(Ljava/util/ArrayList;I)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 144
    .line 149
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/absolute/android/persistservice/w;->d:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v4, 0x2000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 150
    iget-wide v4, p0, Lcom/absolute/android/persistservice/w;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/io/BufferedReader;->skip(J)J

    move v2, v0

    .line 158
    :goto_16
    if-ge v2, p2, :cond_1f

    .line 160
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 162
    if-nez v4, :cond_23

    move v0, v1

    .line 176
    :cond_1f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 185
    :goto_22
    return v0

    .line 167
    :cond_23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_38

    .line 168
    iget-object v5, p0, Lcom/absolute/android/persistservice/w;->b:Lcom/absolute/android/persistservice/y;

    iget v6, p0, Lcom/absolute/android/persistservice/w;->c:I

    invoke-virtual {v5, v4, v6}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;I)Lcom/absolute/android/persistence/LogEntry;

    move-result-object v5

    .line 169
    if-eqz v5, :cond_38

    .line 170
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v2, v2, 0x1

    .line 174
    :cond_38
    iget-wide v6, p0, Lcom/absolute/android/persistservice/w;->e:J

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v5, Lcom/absolute/android/persistservice/y;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/absolute/android/persistservice/w;->e:J
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_49} :catch_4a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_49} :catch_6d

    goto :goto_16

    .line 178
    :catch_4a
    move-exception v0

    .line 179
    iget-object v2, p0, Lcom/absolute/android/persistservice/w;->b:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got FileNotFoundException reading log file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/absolute/android/persistservice/w;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 184
    goto :goto_22

    .line 181
    :catch_6d
    move-exception v0

    .line 182
    iget-object v2, p0, Lcom/absolute/android/persistservice/w;->b:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got IO exception reading log file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/absolute/android/persistservice/w;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 183
    goto :goto_22
.end method


# virtual methods
.method public final getNext(I)[Lcom/absolute/android/persistence/LogEntry;
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    .line 49
    const/4 v0, 0x0

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    :cond_9
    iget-boolean v1, p0, Lcom/absolute/android/persistservice/w;->f:Z

    if-nez v1, :cond_30

    .line 59
    iget-object v1, p0, Lcom/absolute/android/persistservice/w;->d:Ljava/io/File;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/absolute/android/persistservice/w;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_43

    :cond_1b
    move v1, v2

    .line 74
    :goto_1c
    if-ne v1, v2, :cond_2a

    .line 78
    iget-object v1, p0, Lcom/absolute/android/persistservice/w;->b:Lcom/absolute/android/persistservice/y;

    iget-object v4, p0, Lcom/absolute/android/persistservice/w;->d:Ljava/io/File;

    invoke-virtual {v1, v4}, Lcom/absolute/android/persistservice/y;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 79
    if-nez v1, :cond_5e

    .line 83
    iput-boolean v2, p0, Lcom/absolute/android/persistservice/w;->f:Z

    .line 93
    :cond_2a
    :goto_2a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, p1, :cond_9

    .line 94
    :cond_30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_42

    .line 98
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/absolute/android/persistence/LogEntry;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/absolute/android/persistence/LogEntry;

    .line 109
    :cond_42
    return-object v0

    .line 64
    :cond_43
    iget-object v1, p0, Lcom/absolute/android/persistservice/w;->b:Lcom/absolute/android/persistservice/y;

    iget-object v4, p0, Lcom/absolute/android/persistservice/w;->d:Ljava/io/File;

    invoke-virtual {v1, v4}, Lcom/absolute/android/persistservice/y;->b(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 65
    iget-object v4, p0, Lcom/absolute/android/persistservice/w;->b:Lcom/absolute/android/persistservice/y;

    monitor-enter v4

    .line 66
    :try_start_50
    invoke-direct {p0, v3, p1}, Lcom/absolute/android/persistservice/w;->a(Ljava/util/ArrayList;I)Z

    move-result v1

    .line 67
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_56

    goto :goto_1c

    :catchall_56
    move-exception v0

    monitor-exit v4

    throw v0

    .line 70
    :cond_59
    invoke-direct {p0, v3, p1}, Lcom/absolute/android/persistservice/w;->a(Ljava/util/ArrayList;I)Z

    move-result v1

    goto :goto_1c

    .line 86
    :cond_5e
    iput-object v1, p0, Lcom/absolute/android/persistservice/w;->d:Ljava/io/File;

    .line 90
    iput-wide v6, p0, Lcom/absolute/android/persistservice/w;->e:J

    goto :goto_2a
.end method
