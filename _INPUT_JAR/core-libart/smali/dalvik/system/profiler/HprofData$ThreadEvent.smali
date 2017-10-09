.class public final Ldalvik/system/profiler/HprofData$ThreadEvent;
.super Ljava/lang/Object;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadEvent"
.end annotation


# instance fields
.field public final groupName:Ljava/lang/String;

.field public final objectId:I

.field public final parentGroupName:Ljava/lang/String;

.field public final threadId:I

.field public final threadName:Ljava/lang/String;

.field public final type:Ldalvik/system/profiler/HprofData$ThreadEventType;


# direct methods
.method private constructor <init>(Ldalvik/system/profiler/HprofData$ThreadEventType;I)V
    .registers 5
    .param p1, "type"    # Ldalvik/system/profiler/HprofData$ThreadEventType;
    .param p2, "threadId"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    iput-object v0, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    .line 85
    iput p2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    .line 86
    iput-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private constructor <init>(Ldalvik/system/profiler/HprofData$ThreadEventType;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "type"    # Ldalvik/system/profiler/HprofData$ThreadEventType;
    .param p2, "objectId"    # I
    .param p3, "threadId"    # I
    .param p4, "threadName"    # Ljava/lang/String;
    .param p5, "groupName"    # Ljava/lang/String;
    .param p6, "parentGroupName"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p4, :cond_d

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_d
    sget-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    iput-object v0, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    .line 75
    iput p2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    .line 76
    iput p3, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    .line 77
    iput-object p4, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static end(I)Ldalvik/system/profiler/HprofData$ThreadEvent;
    .registers 3
    .param p0, "threadId"    # I

    .prologue
    .line 66
    new-instance v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-direct {v0, v1, p0}, Ldalvik/system/profiler/HprofData$ThreadEvent;-><init>(Ldalvik/system/profiler/HprofData$ThreadEventType;I)V

    return-object v0
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 119
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static hashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 102
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/profiler/HprofData$ThreadEvent;
    .registers 12
    .param p0, "objectId"    # I
    .param p1, "threadId"    # I
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "groupName"    # Ljava/lang/String;
    .param p4, "parentGroupName"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ldalvik/system/profiler/HprofData$ThreadEvent;-><init>(Ldalvik/system/profiler/HprofData$ThreadEventType;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 106
    instance-of v2, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;

    if-nez v2, :cond_6

    .line 110
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 109
    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    .line 110
    .local v0, "event":Ldalvik/system/profiler/HprofData$ThreadEvent;
    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    iget-object v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    if-ne v2, v3, :cond_5

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    iget v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    iget v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    iget-object v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    invoke-static {v2, v3}, Ldalvik/system/profiler/HprofData$ThreadEvent;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    iget-object v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    invoke-static {v2, v3}, Ldalvik/system/profiler/HprofData$ThreadEvent;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    iget-object v3, v0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    invoke-static {v2, v3}, Ldalvik/system/profiler/HprofData$ThreadEvent;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 92
    const/16 v0, 0x11

    .line 93
    .local v0, "result":I
    iget v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    add-int/lit16 v0, v1, 0x20f

    .line 94
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    add-int v0, v1, v2

    .line 95
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 96
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 97
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    invoke-static {v2}, Ldalvik/system/profiler/HprofData$ThreadEvent;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 98
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    sget-object v0, Ldalvik/system/profiler/HprofData$1;->$SwitchMap$dalvik$system$profiler$HprofData$ThreadEventType:[I

    iget-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_1b
    const-string v0, "THREAD START (obj=%d, id = %d, name=\"%s\", group=\"%s\")"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_3e
    return-object v0

    :pswitch_3f
    const-string v0, "THREAD END (id = %d)"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 123
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_3f
    .end packed-switch
.end method
